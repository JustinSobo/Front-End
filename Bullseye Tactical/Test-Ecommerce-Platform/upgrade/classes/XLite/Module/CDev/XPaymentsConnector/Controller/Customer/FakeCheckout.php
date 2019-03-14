<?php
// vim: set ts=4 sw=4 sts=4 et:

/**
 * Copyright (c) 2011-present Qualiteam software Ltd. All rights reserved.
 * See https://www.x-cart.com/license-agreement.html for license details.
 */

namespace XLite\Module\CDev\XPaymentsConnector\Controller\Customer;

/**
 * Checkout imitation class
 *
 */
class FakeCheckout extends \XLite\Controller\Customer\Checkout
{
    private $imitateResult = true;

    /**
     * Imitate Checkout action
     *
     * @param \XLite\Model\Payment\Transaction $transaction Detected transaction
     * @param \XLite\Model\Cart $cart Detected cart
     *
     * @return boolean
     */
    public function imitateActionCheckout()
    {
        $this->imitateResult = true;

        ob_start();
        $this->initialCartFingerprint = $this->getCart()->getEventFingerprint($this->getCartFingerprintExclude());
        $this->doActionCheckout();
        ob_end_clean();

        return $this->imitateResult;
    }

    /**
     * Do not perform redirect
     *
     * @param string $url Redirect URL OPTIONAL
     *
     * @param null   $code
     */
    protected function redirect($url = null, $code = null)
    {
        // Default controller redirects on error, so consider this as negative result
        $this->imitateResult = false;
    }

}
