<?php
// vim: set ts=4 sw=4 sts=4 et:

/**
 * Copyright (c) 2011-present Qualiteam software Ltd. All rights reserved.
 * See https://www.x-cart.com/license-agreement.html for license details.
 */

namespace XLite\Module\XC\MailChimp\View\Model;

use \XLite\Module\XC\MailChimp\Core;

/**
 * Settings dialog model widget
 */
class ModuleSettings extends \XLite\View\Model\ModuleSettings
{
    /**
     * Return list of the "Button" widgets
     *
     * @return array
     */
    protected function getFormButtons()
    {
        $return = parent::getFormButtons();

        $return['mailchimp-lists'] = new \XLite\View\Button\Link(
            array(
                \XLite\View\Button\Link::PARAM_LABEL    => static::t('Update MailChimp Lists'),
                \XLite\View\Button\AButton::PARAM_STYLE => 'model-button always-enabled',
                \XLite\View\Button\Link::PARAM_DISABLED => !Core\MailChimp::hasAPIKey(),
                \XLite\View\Button\Link::PARAM_LOCATION => $this->getMailChimpListsURL()
            )
        );

        $reorderedButtons = array();
        $reorderedButtons['submit']             = $return['submit'];
        $reorderedButtons['mailchimp-lists']    = $return['mailchimp-lists'];
        $reorderedButtons['addons-list']        = $return['addons-list'];

        return $reorderedButtons;
    }

    /**
     * Get form field by option
     *
     * @param \XLite\Model\Config $option Option
     *
     * @return array
     */
    protected function getFormFieldByOption(\XLite\Model\Config $option)
    {
        $cell = parent::getFormFieldByOption($option);

        if ($option->getName() === 'mailChimpAPIKey') {
            $cell[\XLite\View\FormField\AFormField::PARAM_LINK_HREF] = $this->buildURL('mailchimp_options', 'authenticate');
            $cell[\XLite\View\FormField\AFormField::PARAM_LINK_TEXT] = \XLite\Module\XC\MailChimp\Core\MailChimp::hasAPIKey()
                ? 'Reconnect with your MailChimp account'
                : 'Connect with your MailChimp account';
        }

        return $cell;
    }
    /**
     * Return name of web form widget class
     *
     * @return string
     */
    protected function getFormClass()
    {
        return '\XLite\Module\XC\MailChimp\View\Form\Settings';
    }

    /**
     * Return MailChimp lists URL
     *
     * @return string
     */
    protected function getMailChimpListsURL()
    {
        return \XLite\Core\Converter::getInstance()->buildURL('mailchimp_lists');
    }
}
