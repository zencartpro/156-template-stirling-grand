<?php
/**
 * @package languageDefines
 * @copyright Copyright 2003-2016 Zen Cart Development Team
 * @copyright Portions Copyright 2003 osCommerce
 * @license http://www.zen-cart-pro.at/license/2_0.txt GNU Public License V2.0
 * @version $Id: index.php for Stirling Grand 2016-10-02 10:14:44Z drbyte $
 */


define('TEXT_MAIN','Das ist die Hauptdefinition für die deutsche Seite wenn kein Templatefile existiert. Sie finden das File hier: <strong>/includes/languages/german/index.php</strong>');

// Showcase vs Store
if (STORE_STATUS == '0') {
  define('TEXT_GREETING_GUEST', 'Willkommen <span class="greetUser">Gast!</span> Möchten Sie sich <a href="%s">anmelden</a>?');
} else {
  define('TEXT_GREETING_GUEST', 'Willkommen, viel Spaß mit unserem Schauraum.');
}

define('TEXT_GREETING_PERSONAL', 'Guten Tag <span class="greetUser">%s</span>! Möchten Sie unsere <a href="%s">Neuigkeiten sehen</a>?');

define('TEXT_INFORMATION', 'Definieren Sie hier Ihre Hauptindexseite.');


if ( ($category_depth == 'products') || (zen_check_url_get_terms()) ) {
  // This section deals with product-listing page contents
  define('HEADING_TITLE', 'Verfügbare Produkte');
  define('TABLE_HEADING_IMAGE', 'Produktbild');
  define('TABLE_HEADING_MODEL', 'Modell');
  define('TABLE_HEADING_PRODUCTS', 'Produktname');
  define('TABLE_HEADING_MANUFACTURER', 'Hersteller');
  define('TABLE_HEADING_QUANTITY', 'Menge');
  define('TABLE_HEADING_PRICE', 'Preis');
  define('TABLE_HEADING_WEIGHT', 'Gewicht');
  define('TABLE_HEADING_BUY_NOW', 'Jetzt kaufen');
  define('TEXT_NO_PRODUCTS', 'In dieser Kategorie existieren keine Produkte.');
  define('TEXT_NO_PRODUCTS2', 'Keine Produkte dieses Herstellers verfügbar.');
  define('TEXT_NUMBER_OF_PRODUCTS', 'Anzahl der Produkte: ');
  define('TEXT_SHOW', 'Filtere Ergebnisse nach:');
  define('TEXT_BUY', 'Kaufe 1 \'');
  define('TEXT_NOW', '\' jetzt');
  define('TEXT_ALL_CATEGORIES', 'Alle Kategorien');
  define('TEXT_ALL_MANUFACTURERS', 'Alle Hersteller');
} elseif ($category_depth == 'top') {
  // This section deals with the "home" page at the top level with no options/products selected
  /*Replace this text with the headline you would like for your shop. For example: 'Welcome to My SHOP!'*/
  define('HEADING_TITLE', '');
} elseif ($category_depth == 'nested') {
  // This section deals with displaying a subcategory
  /*Replace this line with the headline you would like for your shop. For example: 'Welcome to My SHOP!'*/
  define('HEADING_TITLE', '');
}