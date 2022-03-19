<?php
/**
 * Common Template - tpl_header.php
 *
 * this file can be copied to /templates/your_template_dir/pagename<br />
 * example: to override the privacy page<br />
 * make a directory /templates/my_template/privacy<br />
 * copy /templates/templates_defaults/common/tpl_footer.php to /templates/my_template/privacy/tpl_header.php<br />
 * to override the global settings and turn off the footer un-comment the following line:<br />
 * <br />
 * $flag_disable_header = true;<br />
 *
 * @package templateSystem
 * @copyright Copyright 2003-2019 Zen Cart Development Team
 * @copyright Portions Copyright 2003 osCommerce
 * @license https://www.zen-cart-pro.at/license/3_0.txt GNU General Public License V3.0
 * @version $Id: tpl_header.php for Stirling Grand 2019-10-01 11:49:16Z webchills $
 */
?>

<?php
  // Display all header alerts via messageStack:
  if ($messageStack->size('header') > 0) {
    echo $messageStack->output('header');
  }
  if (isset($_GET['error_message']) && zen_not_null($_GET['error_message'])) {
    echo zen_output_string_protected(urldecode($_GET['error_message']));
  }
  if (isset($_GET['info_message']) && zen_not_null($_GET['info_message'])) {
   echo zen_output_string_protected($_GET['info_message']);
  }
?>


<!--bof-header logo and navigation display-->
<?php
if (!isset($flag_disable_header) || !$flag_disable_header) {
?>


<div id="headerWrapper">


<div id="header-lan-curr">

    <div id="header-greeting"><?php echo HEADER_GREETING; ?></div>

    <?php require(DIR_WS_MODULES . 'sideboxes/languages_header.php'); ?>
    <?php require(DIR_WS_MODULES . 'sideboxes/currencies_header.php'); ?>
<div class="clearBoth"></div>

</div>






<!--bof-branding display-->
<div id="logoWrapper">
    <div id="logo"><?php echo '<a href="' . HTTP_SERVER . DIR_WS_CATALOG . '">' . zen_image($template->get_template_dir(HEADER_LOGO_IMAGE, DIR_WS_TEMPLATE, $current_page_base,'images'). '/' . HEADER_LOGO_IMAGE, HEADER_ALT_TEXT, HEADER_LOGO_WIDTH, HEADER_LOGO_HEIGHT) . '</a>'; ?></div>
<?php if (HEADER_SALES_TEXT != '' || (SHOW_BANNERS_GROUP_SET2 != '' && $banner = zen_banner_exists('dynamic', SHOW_BANNERS_GROUP_SET2))) { ?>
    <div id="taglineWrapper">
<?php
              if (HEADER_SALES_TEXT != '') {
?>
      <div id="tagline"><?php echo HEADER_SALES_TEXT;?></div></div>
<br class="clearBoth" />
<?php
              }
?>
<?php
              if (SHOW_BANNERS_GROUP_SET2 != '' && $banner = zen_banner_exists('dynamic', SHOW_BANNERS_GROUP_SET2)) {
                if ($banner->RecordCount() > 0) {
?>
      <div id="bannerTwo" class="banners"><?php echo zen_display_banner('static', $banner);?></div>
<?php
                }
              }
?>


<?php } // no HEADER_SALES_TEXT or SHOW_BANNERS_GROUP_SET2 ?>


</div>

<br class="clearBoth" />
<!--eof-branding display-->



<!--bof-navigation display-->


<div id="navMainWrapper">
<div id="navMain">
    <ul class="back">
    <!--<li><?php echo '<a href="' . HTTP_SERVER . DIR_WS_CATALOG . '">'; ?><?php echo HEADER_TITLE_CATALOG; ?></a></li>-->
<?php if ($_SESSION['customer_id']) { ?>
    <li><a href="<?php echo zen_href_link(FILENAME_LOGOFF, '', 'SSL'); ?>"><?php echo HEADER_TITLE_LOGOFF; ?></a></li>
    <li><a href="<?php echo zen_href_link(FILENAME_ACCOUNT, '', 'SSL'); ?>"><?php echo HEADER_TITLE_MY_ACCOUNT; ?></a></li>
<?php
      } else {
        if (STORE_STATUS == '0') {
?>
    <li><a href="<?php echo zen_href_link(FILENAME_LOGIN, '', 'SSL'); ?>"><?php echo HEADER_TITLE_LOGIN; ?></a></li>
<?php } } ?>
    <li><img src="<?php  echo $template->get_template_dir('',DIR_WS_TEMPLATE, $current_page_base,'images').'/'.HEADER_ICON_CART ?>" alt="cart icon" class="cart-icon"  /><a href="<?php echo zen_href_link(FILENAME_SHOPPING_CART, '', 'NONSSL'); ?>"><?php echo $_SESSION['cart']->count_contents();?> <?php echo HEADER_TITLE_CART_ITEMS; ?> - <?php echo $currencies->format($_SESSION['cart']->show_total());?></a></li>
    <li><a href="<?php echo zen_href_link(FILENAME_CHECKOUT_SHIPPING, '', 'SSL'); ?>"><?php echo HEADER_TITLE_CHECKOUT; ?></a></li>
<?php if ($_SESSION['cart']->count_contents() != 0) { ?>
<?php }?>
</ul>
<br class="clearBoth" />
</div>

<div id="navMainSearch"><?php require(DIR_WS_MODULES . 'sideboxes/search_header.php'); ?></div>




</div>
<!--eof-navigation display-->


<!--eof-header logo and navigation display-->


<!--bof-optional categories tabs navigation display-->
<?php require($template->get_template_dir('tpl_modules_categories_tabs.php',DIR_WS_TEMPLATE, $current_page_base,'templates'). '/tpl_modules_categories_tabs.php'); ?>
<!--eof-optional categories tabs navigation display-->

<!--bof-header ezpage links-->
<?php if (EZPAGES_STATUS_HEADER == '1' or (EZPAGES_STATUS_HEADER == '2' and (strstr(EXCLUDE_ADMIN_IP_FOR_MAINTENANCE, $_SERVER['REMOTE_ADDR'])))) { ?>
<?php require($template->get_template_dir('tpl_ezpages_bar_header.php',DIR_WS_TEMPLATE, $current_page_base,'templates'). '/tpl_ezpages_bar_header.php'); ?>
<?php } ?>
<!--eof-header ezpage links-->
</div>

<br class="clearBoth" />

<!--bof-mega menu display-->
   <?php require($template->get_template_dir('tpl_mega_menu.php',DIR_WS_TEMPLATE, $current_page_base,'common'). '/tpl_mega_menu.php');?>
<!--eof-mega menu display-->
<div class="clearBoth"></div>



<div class="clearBoth"></div>

<!--bof handheld menu display-->
<?php require($template->get_template_dir('tpl_modules_mobile_categories_tabs.php',DIR_WS_TEMPLATE, $current_page_base,'templates'). '/tpl_modules_mobile_categories_tabs.php'); ?>
<!--eof handheld menu display-->
<div class="clearBoth"></div>

<div class="onerow-fluid" id="inner-container">


<?php
    if ($this_is_home_page) {
?>
 <?php
if (STI_SLIDES_STATUS == 'true') {
?>
	  <?php require($template->get_template_dir('tpl_home_slider.php',DIR_WS_TEMPLATE, $current_page_base,'common')
			. '/tpl_home_slider.php');?>
<?php
    } ?>
<?php
    } ?>






<?php } ?>