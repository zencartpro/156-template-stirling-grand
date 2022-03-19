<?php
/**
 * Side Box Template
 *
 * @package templateSystem
 * @copyright Copyright 2003-2019 Zen Cart Development Team
 * @copyright Portions Copyright 2003 osCommerce
 * @license https://www.zen-cart-pro.at/license/3_0.txt GNU General Public License V3.0
 * @version $Id: tpl_best_sellers.php for Stirling Grand 2016-10-01 16:49:16Z webchills $
 */

  $pointer = zen_image(DIR_WS_TEMPLATE_IMAGES . 'bc_bestsellers.gif');

  $content = '';
  $content .= '<div id="' . str_replace('_', '-', $box_id . 'Content') . '" class="sideBoxContent">' . "\n";
  $content .= "\n" . '<ul style="margin: 0; padding: 0; list-style-type: none;">' . "\n";
  for ($i=1; $i<=sizeof($bestsellers_list); $i++) {
    $content .= '<li><div class="betterBestsellers"><a href="' . zen_href_link(zen_get_info_page($bestsellers_list[$i]['id']), 'products_id=' . $bestsellers_list[$i]['id']) . '">' . $pointer . $i . '.&nbsp;&nbsp;&nbsp;' . zen_trunc_string($bestsellers_list[$i]['name'], BEST_SELLERS_TRUNCATE, BEST_SELLERS_TRUNCATE_MORE) . '</a></div></li>' . "\n";
  }
  $content .= '</ul>' . "\n";
  $content .= '</div>';