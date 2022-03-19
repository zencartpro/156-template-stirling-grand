### Stirling Grand Template Multlanguage Install ####

# Über Uns Seite #

INSERT IGNORE INTO configuration (configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, date_added, use_function, set_function) VALUES
('Define About Us Status', 'DEFINE_ABOUT_US_STATUS', '1', 'Enable the Defined About Us Link/Text?<br />0= Link ON, Define Text OFF<br />1= Link ON, Define Text ON<br />2= Link OFF, Define Text ON<br />3= Link OFF, Define Text OFF', 25, 59, NOW(), NULL, 'zen_cfg_select_option(array(''0'', ''1'', ''2'', ''3''),');

REPLACE INTO configuration_language (configuration_title, configuration_key, configuration_description, configuration_language_id) VALUES
('Über uns Seite', 'DEFINE_ABOUT_US_STATUS','Über uns Link/Text aktivieren?<br />0= Link Ja, Text Nein<br />1= Link Ja, Text Ja<br />2= Link Nein, Text Ja<br />3= Link Nein, Text Nein',43);

# Column Grid Layout Extended#

delete from configuration where configuration_key in ('PRODUCT_LISTING_LAYOUT_STYLE');
delete from configuration where configuration_key in ('PRODUCT_LISTING_COLUMNS_PER_ROW');
delete from configuration where configuration_key in ('PRODUCT_LISTING_LAYOUT_STYLE_CUSTOMER');
delete from configuration where configuration_key in ('PRODUCT_LISTING_GRID_SORT');

delete from configuration_language where configuration_key in ('PRODUCT_LISTING_LAYOUT_STYLE');
delete from configuration_language where configuration_key in ('PRODUCT_LISTING_COLUMNS_PER_ROW');
delete from configuration_language where configuration_key in ('PRODUCT_LISTING_LAYOUT_STYLE_CUSTOMER');
delete from configuration_language where configuration_key in ('PRODUCT_LISTING_GRID_SORT');


INSERT IGNORE INTO configuration (configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) VALUES
 ('Product Listing - Layout Style', 'PRODUCT_LISTING_LAYOUT_STYLE', 'rows', 'Select the layout style:<br />Each product can be listed in its own row (rows option) or products can be listed in multiple columns per row (columns option)<br />If customer control is enabled this sets the default style.', '8', '41', NULL, now(), NULL, 'zen_cfg_select_option(array(\'rows\', \'columns\'),');

REPLACE INTO configuration_language (configuration_title, configuration_key, configuration_description, configuration_language_id) VALUES
('Artikelliste - Anzeige', 'PRODUCT_LISTING_LAYOUT_STYLE', 'Wählen Sie das Layout:<br />Jeder Artikel kann in einer eigenen Zeile angezeigt werden (rows option) oder Artikel können in mehreren Spalten pro Zeile angezeigt werden.<br />Wenn die Besuchersteuerung aktiv ist wird der Defaultwert gesetzt',43);


INSERT IGNORE INTO configuration (configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) VALUES 
('Product Listing - Columns Per Row', 'PRODUCT_LISTING_COLUMNS_PER_ROW', '3', 'Select the number of columns of products to show in each row in the product listing. The default setting is 3.', '8', '42', NULL, now(), NULL, NULL);

REPLACE INTO configuration_language (configuration_title, configuration_key, configuration_description, configuration_language_id) VALUES
('Artikelliste - Spalten pro Zeile', 'PRODUCT_LISTING_COLUMNS_PER_ROW', 'Anzahl der Artikelspalten in jeder Zeile in der Artikelliste. Der Vorgabewert ist 3.', 43);


INSERT IGNORE INTO configuration (configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) VALUES 
('Product Listing - Layout Style - Customer Control', 'PRODUCT_LISTING_LAYOUT_STYLE_CUSTOMER', '0', 'Allow the customer to select the layout style (0=no, 1=yes):', '8', '43', NULL, now(), NULL, 'zen_cfg_select_option(array(\'0\', \'1\'),');


REPLACE INTO configuration_language (configuration_title, configuration_key, configuration_description, configuration_language_id) VALUES
('Artikelliste - Layout Style - Besucherkontrolle', 'PRODUCT_LISTING_LAYOUT_STYLE_CUSTOMER','Dem Besucher die Auswahl des Layouts erlauben (0=no, 1=yes):', 43);

INSERT IGNORE INTO configuration (configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) VALUES 
('Product Listing - Show Sorter for Columns Layout', 'PRODUCT_LISTING_GRID_SORT', '0', 'Allow the customer to select the item sort order (0=no, 1=yes):', '8', '44', NULL,  now(), NULL, 'zen_cfg_select_option(array(\'0\', \'1\'),');

REPLACE INTO configuration_language (configuration_title, configuration_key, configuration_description, configuration_language_id) VALUES
('Artikelliste - Sortierreihenfolge durch Besucher änderbar?', 'PRODUCT_LISTING_GRID_SORT', 'Dem Besucher erlauben die Sortierreihenfolge zu ändern (0=no, 1=yes):', 43);


# Carousel Featured Products #

INSERT INTO configuration_group (configuration_group_title, configuration_group_description, sort_order, visible) VALUES
('Carousel Featured Products', 'Set Carousel Featured Products Options', '1', '1');
SET @gid=last_insert_id();
UPDATE configuration_group SET sort_order = last_insert_id() WHERE configuration_group_id = last_insert_id();

INSERT INTO configuration (configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, set_function, date_added) VALUES
('Carousel Featured Products', 'CAROUSEL_FEATURED_PRODUCTS', 'true', 'Display your featured products in a carousel?<br /><br/>Default = true<br/>', @gid, 1, 'zen_cfg_select_option(array(\'true\', \'false\'), ', now()),
('Maximum Display Carousel Featured Products', 'MAX_DISPLAY_SEARCH_RESULTS_CAROUSEL_FEATURED', '10', 'Set this to how many featured products you have - regardless of the number, only three will show on the carousel at a time.<br/><br/>Default = 10<br/>', @gid, 2, NULL, now()),
('Display Description', 'CAROUSEL_FEATURED_DESCRIPTION', 'false', 'Display featured products description?<br/><br/>Default = true<br/>', @gid, 3, 'zen_cfg_select_option(array(\'true\', \'false\'), ', now()),
('Description Length', 'CAROUSEL_FEATURED_DESCRIPTION_LENGTH', '100', '--ONLY APPLICABLE IF DISPLAY DISCRIPTION IS TRUE--<br/><br/>Featured product description length in chatacters<br/><br/>Default = 100<br/>', @gid, 4, NULL, now()),
('Display Button', 'CAROUSEL_FEATURED_LINK', 'true', 'Display "Buy Now" or "More Information" buttons?<br/><br/>Default = true<br/>', @gid, 5, 'zen_cfg_select_option(array(\'true\', \'false\'), ', now()),
('Display Price', 'CAROUSEL_FEATURED_PRICE', 'true', 'Display featured product price?<br/><br/>Default = true<br/>', @gid, 6, 'zen_cfg_select_option(array(\'true\', \'false\'), ', now()),
('Carousel Featured Image Listing Width', 'IMAGE_CAROUSEL_FEATURED_PRODUCTS_LISTING_WIDTH', '200', 'The width of the product images in the carousel.<br/>Default = 100', @gid, 7, NULL, now()),
('Carousel Featured Image Listing Height', 'IMAGE_CAROUSEL_FEATURED_PRODUCTS_LISTING_HEIGHT', '200', 'The height of the product images in the carousel.<br/>Default = 80', @gid, 8, NULL, now());

INSERT INTO configuration_group (configuration_group_id, language_id, configuration_group_title, configuration_group_description, sort_order, visible ) VALUES 
(@gid, 43, 'Karussell der empfohlenen Artikel', 'Einstellungen für die empfohlenen Artikel auf der Startseite', @gid, '1');


REPLACE INTO configuration_language (configuration_title, configuration_key, configuration_description, configuration_language_id) VALUES
('Karussell der empfohlenen Artikel', 'CAROUSEL_FEATURED_PRODUCTS', 'Empfohlene Artikel im Karussell auf der Startseite  anzeigen?<br /><br/>Default = true<br/>', 43),
('Maximale Anzahl empfohlene Artikel Carousel', 'MAX_DISPLAY_SEARCH_RESULTS_CAROUSEL_FEATURED', 'Anzahl empfohlener Artikel? Unabhängig von dieser Zahl werden im Karussell immer nur drei gleichezitig angezeigt.<br/><br/>Default = 10<br/>', 43),
('Beschreibung Anzeigen', 'CAROUSEL_FEATURED_DESCRIPTION', 'Artikelbeschreibung anzeigen?<br/><br/>Default = true<br/>', 43),
('Beschreibung Länge', 'CAROUSEL_FEATURED_DESCRIPTION_LENGTH', '--NUR WIRKSAM BEI ARTIKELBESCHREIBUNG = TRUE--<br/><br/>Anzahl Zeichen der Artikelbeschreibung<br/><br/>Default = 100<br/>', 43),
('Button anzeigen', 'CAROUSEL_FEATURED_LINK', '"Jetzt kaufen" oder "Mehr Informationen" Buttons anzeigen?<br/><br/>Default = true<br/>', 43),
('Preis anzeigen', 'CAROUSEL_FEATURED_PRICE', 'Preis anzeigen?<br/><br/>Default = true<br/>', 43),
('Artikelbildbreite im Karussell', 'IMAGE_CAROUSEL_FEATURED_PRODUCTS_LISTING_WIDTH', 'Breite des Artikelbildes im Karussell.<br/>Default = 100', 43),
('Artikelbildhöhe im Karussell', 'IMAGE_CAROUSEL_FEATURED_PRODUCTS_LISTING_HEIGHT','Höhe des Artikelbildes im Karussell.<br/>Default = 80', 43);

# Register the configuration page for Admin Access Control
INSERT IGNORE INTO admin_pages (page_key,language_key,main_page,page_params,menu_key,display_on_menu,sort_order) VALUES 
('configCarouselFeatured','BOX_CONFIGURATION_CAROUSEL','FILENAME_CONFIGURATION',CONCAT('gID=',@gid),'configuration','Y',@gid);

# Responsive Template Switch #


INSERT INTO configuration (configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, date_added, use_function, set_function) VALUES
('<font color="#0044ff">ACTIVATE Responsive Template by selecting Column Widths</font>', 'COLUMN_WIDTH', '3', 'Width of the Left and Right Columns<br />0 = Use Default Template Settings<br />1 = 75px<br />2 = 150px<br />3 = 225px',19, 1, NOW(), NULL, 'zen_cfg_select_option(array(\'0\', \'1\', \'2\', \'3\'),');

REPLACE INTO configuration_language (configuration_title, configuration_key, configuration_description, configuration_language_id) VALUES
('AKTIVIERE das responsive Template durch Auswahl der Spaltenbreiten', 'COLUMN_WIDTH', 'Breite der Linken und rechten Spalten<br />0 = Benütze Templatevorgaben<br />1 = 75px<br />2 = 150px<br />3 = 225px',43);

ALTER TABLE layout_boxes ADD show_box_min_width TINYINT( 1 ) NOT NULL DEFAULT '1' AFTER layout_box_status_single;

DELETE FROM layout_boxes WHERE layout_template = 'stirling_grand';

INSERT INTO layout_boxes (layout_template, layout_box_name, layout_box_status, layout_box_location, layout_box_sort_order, layout_box_sort_order_single, layout_box_status_single, show_box_min_width) VALUES
('stirling_grand', 'banner_box.php', 1, 0, 300, 1, 127, 0),
('stirling_grand', 'banner_box2.php', 1, 1, 15, 1, 15, 0),
('stirling_grand', 'banner_box_all.php', 1, 1, 5, 0, 0, 0),
('stirling_grand', 'best_sellers.php', 1, 1, 30, 70, 1, 0),
('stirling_grand', 'categories.php', 1, 0, 10, 10, 1, 0),
('stirling_grand', 'currencies.php', 0, 1, 80, 60, 0, 0),
('stirling_grand', 'currencies_header.php', 0, 0, 0, 0, 0, 0),
('stirling_grand', 'document_categories.php', 1, 0, 0, 0, 0, 0),
('stirling_grand', 'ezpages.php', 1, 1, -1, 2, 1, 0),
('stirling_grand', 'ezpages_drop_menu.php', 0, 0, 0, 0, 0, 0),
('stirling_grand', 'featured.php', 1, 0, 45, 0, 0, 0),
('stirling_grand', 'information.php', 1, 0, 50, 40, 1, 0),
('stirling_grand', 'languages.php', 0, 1, 70, 50, 0, 0),
('stirling_grand', 'languages_header.php', 0, 0, 0, 0, 0, 0),
('stirling_grand', 'manufacturers.php', 1, 0, 30, 20, 1, 0),
('stirling_grand', 'manufacturer_info.php', 1, 1, 35, 95, 1, 0),
('stirling_grand', 'more_information.php', 1, 0, 200, 200, 1, 0),
('stirling_grand', 'music_genres.php', 1, 1, 0, 0, 0, 0),
('stirling_grand', 'order_history.php', 1, 1, 0, 0, 0, 0),
('stirling_grand', 'product_notifications.php', 1, 1, 55, 85, 1, 0),
('stirling_grand', 'record_companies.php', 1, 1, 0, 0, 0, 0),
('stirling_grand', 'reviews.php', 1, 0, 40, 0, 0, 0),
('stirling_grand', 'search.php', 1, 1, 10, 0, 0, 0),
('stirling_grand', 'search_header.php', 0, 0, 0, 0, 1, 0),
('stirling_grand', 'shopping_cart.php', 1, 1, 20, 30, 1, 0),
('stirling_grand', 'specials.php', 1, 1, 45, 0, 0, 0),
('stirling_grand', 'whats_new.php', 1, 0, 20, 0, 0, 0),
('stirling_grand', 'whos_online.php', 1, 1, 200, 200, 1, 0);


# Stirling Grand Settings #

INSERT INTO configuration_group (configuration_group_title, configuration_group_description, sort_order, visible) VALUES
('Stirling Grand Template', 'Set Slideshow Options', '1', '1');
SET @gid=last_insert_id();
UPDATE configuration_group SET sort_order = last_insert_id() WHERE configuration_group_id = last_insert_id();

INSERT INTO configuration (configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, date_added, use_function, set_function) VALUES
('Slides JS Slideshow', 'STI_SLIDES_STATUS', 'true', 'Activate Slides JS Slideshow', @gid, 1, NOW(), NULL, 'zen_cfg_select_option(array(\'true\', \'false\'),'),
('Play Interval', 'STI_SLIDES_PLAY', '5000', 'Play interval', @gid, 2, NOW(), NULL, NULL),
('Banner Display Groups - stislide1', 'SHOW_BANNERS_GROUP_SETSTI1', 'stislide1', 'Stislide 1', @gid, 30, NOW(), NULL, NULL),
('Banner Display Groups - stislide2', 'SHOW_BANNERS_GROUP_SETSTI2', 'stislide2', 'Stislide 2', @gid, 31, NOW(), NULL, NULL),
('Banner Display Groups - stislide3', 'SHOW_BANNERS_GROUP_SETSTI3', 'stislide3', 'Stislide 3', @gid, 32, NOW(), NULL, NULL),
('Banner Display Groups - stislide4', 'SHOW_BANNERS_GROUP_SETSTI4', 'stislide4', 'Stislide 4', @gid, 33, NOW(), NULL, NULL),
('Banner Display Groups - stislide5', 'SHOW_BANNERS_GROUP_SETSTI5', 'stislide5', 'Stislide 5', @gid, 34, NOW(), NULL, NULL);

INSERT INTO configuration_group (configuration_group_id, language_id, configuration_group_title, configuration_group_description, sort_order, visible ) VALUES 
(@gid, 43, 'Stirling Grand Template', 'Slideshow Optionen festlegen', @gid, '1');



REPLACE INTO configuration_language (configuration_title, configuration_key, configuration_description, configuration_language_id) VALUES
('Slides JS Slideshow', 'STI_SLIDES_STATUS', 'Aktiviere Slides JS Slideshow', 43),
('Play Interval', 'STI_SLIDES_PLAY', 'Play interval', 43),
('Banner Display Gruppen - stislide1', 'SHOW_BANNERS_GROUP_SETSTI1', 'Stislide 1', 43),
('Banner Display Gruppen - stislide2', 'SHOW_BANNERS_GROUP_SETSTI2', 'Stislide 2', 43),
('Banner Display Gruppen - stislide3', 'SHOW_BANNERS_GROUP_SETSTI3', 'Stislide 3', 43),
('Banner Display Gruppen - stislide4', 'SHOW_BANNERS_GROUP_SETSTI4', 'Stislide 4', 43),
('Banner Display Gruppen - stislide5', 'SHOW_BANNERS_GROUP_SETSTI5', 'Stislide 5', 43);

# Register the configuration page for Admin Access Control
INSERT IGNORE INTO admin_pages (page_key,language_key,main_page,page_params,menu_key,display_on_menu,sort_order) VALUES ('stirlinggrand','BOX_CONFIGURATION_STIRLING_GRAND','FILENAME_CONFIGURATION',CONCAT('gID=',@gid),'configuration','Y',@gid);

# Banners for Slideshow

INSERT INTO banners (banners_title, banners_url, banners_image, banners_group, banners_html_text, expires_impressions, expires_date, date_scheduled, date_added, date_status_change, status, banners_open_new_windows, banners_on_ssl, banners_sort_order) VALUES
('stislide1', '', 'banners/stislide1.jpg', 'stislide1', NULL, '0', NULL, NULL, '0001-01-01 00:00:00', NULL, '1', '1', '1', '0'),
('stislide2', '', 'banners/stislide2.jpg', 'stislide2', NULL, '0', NULL, NULL, '0001-01-01 00:00:00', NULL, '1', '1', '1', '0'),
('stislide3', '', 'banners/stislide3.jpg', 'stislide3', NULL, '0', NULL, NULL, '0001-01-01 00:00:00', NULL, '1', '1', '1', '0'),
('stislide4', '', 'banners/stislide4.jpg', 'stislide4', NULL, '0', NULL, NULL, '0001-01-01 00:00:00', NULL, '1', '1', '1', '0'),
('stislide5', '', 'banners/stislide5.jpg', 'stislide5', NULL, '0', NULL, NULL, '0001-01-01 00:00:00', NULL, '1', '1', '1', '0');

# Template default Settings

UPDATE configuration SET configuration_value = 100 WHERE configuration_key = 'IMAGE_SHOPPING_CART_WIDTH';
UPDATE configuration SET configuration_value = 200 WHERE configuration_key = 'IMAGE_SHOPPING_CART_HEIGHT';
UPDATE configuration SET configuration_value = 200 WHERE configuration_key = 'IMAGE_PRODUCT_LISTING_WIDTH';
UPDATE configuration SET configuration_value = 200 WHERE configuration_key = 'IMAGE_PRODUCT_LISTING_HEIGHT';
UPDATE configuration SET configuration_value = 200 WHERE configuration_key = 'IMAGE_PRODUCT_NEW_LISTING_WIDTH';
UPDATE configuration SET configuration_value = 200 WHERE configuration_key = 'IMAGE_PRODUCT_NEW_LISTING_HEIGHT';
UPDATE configuration SET configuration_value = 200 WHERE configuration_key = 'IMAGE_PRODUCT_NEW_WIDTH';
UPDATE configuration SET configuration_value = 200 WHERE configuration_key = 'IMAGE_PRODUCT_NEW_HEIGHT';
UPDATE configuration SET configuration_value = 200 WHERE configuration_key = 'IMAGE_FEATURED_PRODUCTS_LISTING_WIDTH';
UPDATE configuration SET configuration_value = 200 WHERE configuration_key = 'IMAGE_FEATURED_PRODUCTS_LISTING_HEIGHT';
UPDATE configuration SET configuration_value = 200 WHERE configuration_key = 'IMAGE_PRODUCT_ALL_LISTING_WIDTH';
UPDATE configuration SET configuration_value = 200 WHERE configuration_key = 'IMAGE_PRODUCT_ALL_LISTING_HEIGHT';
UPDATE configuration SET configuration_value = 200 WHERE configuration_key = 'CATEGORY_ICON_IMAGE_WIDTH';
UPDATE configuration SET configuration_value = 200 WHERE configuration_key = 'CATEGORY_ICON_IMAGE_HEIGHT';
UPDATE configuration SET configuration_value = 200 WHERE configuration_key = 'SUBCATEGORY_IMAGE_TOP_WIDTH';
UPDATE configuration SET configuration_value = 200 WHERE configuration_key = 'SUBCATEGORY_IMAGE_TOP_WIDTH';
UPDATE configuration SET configuration_value = 200 WHERE configuration_key = 'SUBCATEGORY_IMAGE_HEIGHT';
UPDATE configuration SET configuration_value = 200 WHERE configuration_key = 'SUBCATEGORY_IMAGE_HEIGHT';
UPDATE configuration SET configuration_value = '0' WHERE configuration_key = 'CATEGORIES_TABS_STATUS';
UPDATE configuration SET configuration_value = 2 WHERE configuration_key = 'DEFINE_BREADCRUMB_STATUS';
UPDATE configuration SET configuration_value = 0 WHERE configuration_key = 'SHOW_CUSTOMER_GREETING';
UPDATE configuration SET configuration_value = 0 WHERE configuration_key = 'SHOW_FOOTER_IP';
UPDATE configuration SET configuration_value = 'false' WHERE configuration_key = 'PRODUCT_LIST_ALPHA_SORTER';
UPDATE configuration SET configuration_value = 'false' WHERE configuration_key = 'PRODUCT_LIST_CATEGORIES_IMAGE_STATUS';
UPDATE configuration SET configuration_value = 'false' WHERE configuration_key = 'PRODUCT_LIST_CATEGORIES_IMAGE_STATUS_TOP';
UPDATE configuration SET configuration_value = 0 WHERE configuration_key = 'PRODUCT_LIST_DESCRIPTION';
UPDATE configuration SET configuration_value = 0 WHERE configuration_key = 'PRODUCT_LIST_FILTER';
UPDATE configuration SET configuration_value = 1 WHERE configuration_key = 'PRODUCT_INFO_CATEGORIES_IMAGE_STATUS';
UPDATE configuration SET configuration_value = 1 WHERE configuration_key = 'USE_SPLIT_LOGIN_MODE';
UPDATE configuration SET configuration_value = 0 WHERE configuration_key = 'EZPAGES_STATUS_HEADER';
UPDATE configuration SET configuration_value = 1 WHERE configuration_key = 'EZPAGES_STATUS_FOOTER';
UPDATE configuration SET configuration_value = 2 WHERE configuration_key = 'SHOW_SHOPPING_CART_UPDATE';
UPDATE configuration SET configuration_value = 1 WHERE configuration_key = 'SHOW_SHOPPING_CART_DELETE';
UPDATE configuration SET configuration_value = 0 WHERE configuration_key = 'SHOW_PRODUCT_INFO_MAIN_NEW_PRODUCTS';
UPDATE configuration SET configuration_value = 0 WHERE configuration_key = 'SHOW_PRODUCT_INFO_MAIN_SPECIALS_PRODUCTS';
UPDATE configuration SET configuration_value = 1 WHERE configuration_key = 'SHOW_PRODUCT_INFO_MAIN_FEATURED_PRODUCTS';
UPDATE configuration SET configuration_value = 0 WHERE configuration_key = 'SHOW_PRODUCT_INFO_MAIN_UPCOMING';
UPDATE configuration SET configuration_value = 0 WHERE configuration_key = 'COLUMN_RIGHT_STATUS';