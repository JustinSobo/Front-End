/* vim: set ts=2 sw=2 sts=2 et: */

/**
 * Popup button script
 *
 * Copyright (c) 2011-present Qualiteam software Ltd. All rights reserved.
 * See https://www.x-cart.com/license-agreement.html for license details.
 */

core.bind('list.products.postprocess', function() {
  core.autoload(PopupButton);
});