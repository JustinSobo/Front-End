<?php
// vim: set ts=4 sw=4 sts=4 et:

/**
 * Copyright (c) 2011-present Qualiteam software Ltd. All rights reserved.
 * See https://www.x-cart.com/license-agreement.html for license details.
 */

namespace XLite\Console\Command\GenerateData;

use Symfony\Component\Console\Command\Command;
use Symfony\Component\Console\Input\InputInterface;
use Symfony\Component\Console\Input\InputOption;
use Symfony\Component\Console\Output\OutputInterface;
use Symfony\Component\Console\Style\SymfonyStyle;
use XLite\Console\Command\GenerateData\Generators\Category;

/**
 * Class GenerateCategoryCommand
 * @package XLite\Console\Command\GenerateData
 */
class GenerateCategoryCommand extends Command
{
    protected function configure()
    {
        $this
            ->setName('generate:category')
            ->setDescription('Generate categories')
            ->setHelp('Generates category structure')

            ->addOption('count', 'C', InputOption::VALUE_REQUIRED, 'Amount of categories to generate (default value: 1)')
            ->addOption('depth', 'd', InputOption::VALUE_REQUIRED, 'Categories depth')

            ->addOption('nameSuffix', 's', InputOption::VALUE_REQUIRED, 'Name suffix')
            ->addOption('parent_category', 'P', InputOption::VALUE_REQUIRED, 'Parent category id')
            ->addOption('image', 'i', InputOption::VALUE_NONE, 'Generate image')
        ;
    }

    protected function execute(InputInterface $input, OutputInterface $output)
    {
        $io = new SymfonyStyle($input, $output);

        $io->title('Generating categories');

        if ($io->confirm('Remove all existing categories?', false)) {
            $io->write('Removing categories');

            $this->clearCategories();

            $io->writeln('[ OK ]');
        }

        $count = $input->getOption('count') ?: 1;
        $depth = $input->getOption('depth') ?: 1;

        $repo = \XLite\Core\Database::getRepo('XLite\Model\Category');
        $suffix = $input->getOption('nameSuffix') ?: crc32(md5(time()));
        $parent = $input->getOption('parent_category')
            ? $repo->find($input->getOption('parent_category'))
            : $repo->getRootCategory();

        $io->newLine();
        $io->writeln('<info>Generating categories</info>');
        $this->_generateCategories($io, $suffix, $count, $depth, $input->getOption('image'), $parent);

        \XLite\Core\Database::getEM()->flush();
        \XLite\Core\Database::getEM()->clear();

        $io->newLine();
        $io->write('<info>Recalculating quick flags</info>');
        $repo->correctCategoriesStructure();
        $io->writeln('[ OK ]');

        $io->success('Finished');
    }

    protected function _generateCategories(SymfonyStyle $io, $suffix, $count, $maxDepth, $generateImage, \XLite\Model\Category $parent = null, $depth = 1)
    {
        if (!$parent) {
            $parent = \XLite\Core\Database::getRepo('XLite\Model\Category')->getRootCategory();
        }

        $commonProgress = $io->createProgressBar($count);

        $commonProgress->start();
        if ($depth === 1) {
            $io->newLine();
        }

        for ($i = 0; $i < $count; $i++) {
            $generator = new Category();
            $category = $generator->generate(
                $suffix .'_'. $i,
                $i,
                $parent,
                $generateImage
            );

            if ($depth === 1) {
                $io->write("\033[1A");
            }
            $commonProgress->advance();

            if ($depth === 1) {
                $io->newLine();
            }

            if ($depth < $maxDepth) {
                $this->_generateCategories($io, $suffix .'_'. $i, $count, $maxDepth, $generateImage, $category, $depth + 1);
            }
        }

        $commonProgress->finish();
        $commonProgress->clear();
    }

    protected function clearCategories()
    {
        \XLite\Core\Database::getRepo('XLite\Model\Category')->createPureQueryBuilder()
            ->delete('XLite\Model\Category', 'c')
            ->where('c.category_id != :rootCategory')
            ->setParameter('rootCategory', \XLite\Core\Database::getRepo('XLite\Model\Category')->getRootCategoryId())
            ->execute();

        \XLite\Core\Database::getEM()->flush();
        \XLite\Core\Database::getEM()->clear();
    }
}
