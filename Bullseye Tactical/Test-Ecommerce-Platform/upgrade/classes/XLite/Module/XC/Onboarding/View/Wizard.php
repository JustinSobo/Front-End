<?php
// vim: set ts=4 sw=4 sts=4 et:

/**
 * Copyright (c) 2011-present Qualiteam software Ltd. All rights reserved.
 * See https://www.x-cart.com/license-agreement.html for license details.
 */

namespace XLite\Module\XC\Onboarding\View;

use XLite\Core\PreloadedLabels\ProviderInterface;

/**
 * @listChild (list="admin.center", zone="admin")
 */
class Wizard extends \XLite\View\AView implements ProviderInterface
{
    /**
     * Array of labels in following format.
     *
     * 'label' => 'translation'
     *
     * @return mixed
     */
    public function getPreloadedLanguageLabels()
    {
        return [
            'The uploaded image is too large' => static::t('The uploaded image is too large.'),
        ];
    }

    /**
     * @return array
     */
    public static function getAllowedTargets()
    {
        return [
            'onboarding_wizard'
        ];
    }

    /**
     * @return array
     */
    public function getJSFiles()
    {
        return [
            $this->getDir() . '/wizard.js',
            $this->getDir() . '/tracking.js',
            $this->getDir() . '/wizard_store.js'
        ];
    }

    /**
     * @return array
     */
    public function getCSSFiles()
    {
        return [
            'animations/reloading.css',
            $this->getDir() . '/wizard.css',
            $this->getDir() . '/transitions.css',
        ];
    }


    /**
     * Register files from common repository
     *
     * @return array
     */
    protected function getCommonFiles()
    {
        $list = parent::getCommonFiles();

        $list[static::RESOURCE_JS][] = [
            'file' => $this->isDeveloperMode() ? 'vue/vue.js' : 'vue/vue.min.js',
            'no_minify' => true
        ];
        $list[static::RESOURCE_JS][] = [
            'file' => $this->isDeveloperMode() ? 'vue/vuex.js' : 'vue/vuex.min.js',
            'no_minify' => true
        ];
        $list[static::RESOURCE_JS][] = 'vue/vue.loadable.js';
        $list[static::RESOURCE_JS][] = 'js/vue/vue.js';
        $list[static::RESOURCE_JS][] = 'js/vue/component.js';

        return $list;
    }

    /**
     * Return widget default template
     *
     * @return string
     */
    protected function getDir()
    {
        return 'modules/XC/Onboarding/wizard';
    }

    /**
     * Return widget default template
     *
     * @return string
     */
    protected function getDefaultTemplate()
    {
        return $this->getDir() . '/wizard.twig';
    }

    /**
     * getViewListChildren
     *
     * @param string $list List name
     *
     * @return \XLite\Model\ViewList[]
     */
    protected function getViewListChildren($list)
    {
        $additional = [];
        $steps = \XLite::getController()->getWizardSteps();

        if ($list === 'onboarding-wizard.body') {
            $weight = 100;
            foreach ($steps as $key => $step) {
                $item = new \XLite\Model\ViewList();

                $item->setList($list);
                $item->setChild($step['body']);
                $item->setZone('admin');
                $item->setWeight($weight);

                $additional[] = $item;

                $weight += 10;
            }
        }

        return array_merge($additional, parent::getViewListChildren($list));
    }
}