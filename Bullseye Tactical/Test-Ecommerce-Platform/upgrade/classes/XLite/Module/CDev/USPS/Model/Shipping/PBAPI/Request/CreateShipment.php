<?php
// vim: set ts=4 sw=4 sts=4 et:

/**
 * Copyright (c) 2011-present Qualiteam software Ltd. All rights reserved.
 * See https://www.x-cart.com/license-agreement.html for license details.
 */

namespace XLite\Module\CDev\USPS\Model\Shipping\PBAPI\Request;

class CreateShipment extends Request
{
    public function __construct($endpoint, $token, $transactionId, $inputData)
    {
        $urlParams = [
            'includeDeliveryCommitment' => 'true',
        ];

        parent::__construct(
            $endpoint . '/shippingservices/v1/shipments?' . http_build_query($urlParams),
            'POST',
            $inputData,
            [
                'Authorization' => 'Bearer ' . $token,
                'Content-Type'  => 'application/json',

                'X-PB-TransactionId'     => $transactionId,
                'X-PB-Shipper-Rate-Plan' => 'PP_SRP_NEWBLUE',
            ]
        );
    }
}
