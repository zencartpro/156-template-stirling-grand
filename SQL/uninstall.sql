### Stirling Grand Template UNINSTALL ####
### NUR AUSFÜHREN WENN SIE DAS TEMPLATE KOMPLETT ENTFERNEN WOLLEN ####

DELETE FROM configuration WHERE configuration_key = 'DEFINE_ABOUT_US_STATUS';
DELETE FROM configuration_language WHERE configuration_key = 'DEFINE_ABOUT_US_STATUS';

DELETE FROM configuration WHERE configuration_key = 'PRODUCT_LISTING_LAYOUT_STYLE_CUSTOMER';
DELETE FROM configuration WHERE configuration_key = 'PRODUCT_LISTING_GRID_SORT';

DELETE FROM configuration_language WHERE configuration_key = 'PRODUCT_LISTING_LAYOUT_STYLE_CUSTOMER';
DELETE FROM configuration_language WHERE configuration_key = 'PRODUCT_LISTING_GRID_SORT';

DELETE FROM configuration_group WHERE configuration_group_title = 'Carousel Featured Products';
DELETE FROM configuration_group WHERE configuration_group_title = 'Karussell der empfohlenen Artikel';

DELETE FROM configuration WHERE configuration_key = 'CAROUSEL_FEATURED_PRODUCTS';
DELETE FROM configuration WHERE configuration_key = 'MAX_DISPLAY_SEARCH_RESULTS_CAROUSEL_FEATURED';
DELETE FROM configuration WHERE configuration_key = 'CAROUSEL_FEATURED_DESCRIPTION';
DELETE FROM configuration WHERE configuration_key = 'CAROUSEL_FEATURED_DESCRIPTION_LENGTH';
DELETE FROM configuration WHERE configuration_key = 'CAROUSEL_FEATURED_LINK';
DELETE FROM configuration WHERE configuration_key = 'CAROUSEL_FEATURED_PRICE';
DELETE FROM configuration WHERE configuration_key = 'IMAGE_CAROUSEL_FEATURED_PRODUCTS_LISTING_WIDTH';
DELETE FROM configuration WHERE configuration_key = 'IMAGE_CAROUSEL_FEATURED_PRODUCTS_LISTING_HEIGHT';

DELETE FROM configuration_language WHERE configuration_key = 'CAROUSEL_FEATURED_PRODUCTS';
DELETE FROM configuration_language WHERE configuration_key = 'MAX_DISPLAY_SEARCH_RESULTS_CAROUSEL_FEATURED';
DELETE FROM configuration_language WHERE configuration_key = 'CAROUSEL_FEATURED_DESCRIPTION';
DELETE FROM configuration_language WHERE configuration_key = 'CAROUSEL_FEATURED_DESCRIPTION_LENGTH';
DELETE FROM configuration_language WHERE configuration_key = 'CAROUSEL_FEATURED_LINK';
DELETE FROM configuration_language WHERE configuration_key = 'CAROUSEL_FEATURED_PRICE';
DELETE FROM configuration_language WHERE configuration_key = 'IMAGE_CAROUSEL_FEATURED_PRODUCTS_LISTING_WIDTH';
DELETE FROM configuration_language WHERE configuration_key = 'IMAGE_CAROUSEL_FEATURED_PRODUCTS_LISTING_HEIGHT';

DELETE FROM admin_pages WHERE page_key='configCarouselFeatured';

DELETE FROM configuration WHERE configuration_key = 'COLUMN_WIDTH';

DELETE FROM configuration_language WHERE configuration_key = 'COLUMN_WIDTH';

DELETE FROM configuration_group WHERE configuration_group_title = 'Stirling Grand Template';

DELETE FROM configuration WHERE configuration_key = 'STI_SLIDES_STATUS';
DELETE FROM configuration WHERE configuration_key = 'STI_SLIDES_PLAY';
DELETE FROM configuration WHERE configuration_key = 'SHOW_BANNERS_GROUP_SETSTI1';
DELETE FROM configuration WHERE configuration_key = 'SHOW_BANNERS_GROUP_SETSTI2';
DELETE FROM configuration WHERE configuration_key = 'SHOW_BANNERS_GROUP_SETSTI3';
DELETE FROM configuration WHERE configuration_key = 'SHOW_BANNERS_GROUP_SETSTI4';
DELETE FROM configuration WHERE configuration_key = 'SHOW_BANNERS_GROUP_SETSTI5';

DELETE FROM configuration_language WHERE configuration_key = 'STI_SLIDES_STATUS';
DELETE FROM configuration_language WHERE configuration_key = 'STI_SLIDES_PLAY';
DELETE FROM configuration_language WHERE configuration_key = 'SHOW_BANNERS_GROUP_SETSTI1';
DELETE FROM configuration_language WHERE configuration_key = 'SHOW_BANNERS_GROUP_SETSTI2';
DELETE FROM configuration_language WHERE configuration_key = 'SHOW_BANNERS_GROUP_SETSTI3';
DELETE FROM configuration_language WHERE configuration_key = 'SHOW_BANNERS_GROUP_SETSTI4';
DELETE FROM configuration_language WHERE configuration_key = 'SHOW_BANNERS_GROUP_SETSTI5';

DELETE FROM admin_pages WHERE page_key='stirlinggrand';

DELETE FROM banners WHERE banners_title = 'stislide1';
DELETE FROM banners WHERE banners_title = 'stislide2';
DELETE FROM banners WHERE banners_title = 'stislide3';
DELETE FROM banners WHERE banners_title = 'stislide4';
DELETE FROM banners WHERE banners_title = 'stislide5';

UPDATE configuration SET configuration_value = 60 WHERE configuration_key = 'IMAGE_SHOPPING_CART_WIDTH';
UPDATE configuration SET configuration_value = 60 WHERE configuration_key = 'IMAGE_SHOPPING_CART_HEIGHT';
UPDATE configuration SET configuration_value = 150 WHERE configuration_key = 'IMAGE_PRODUCT_LISTING_WIDTH';
UPDATE configuration SET configuration_value = 150 WHERE configuration_key = 'IMAGE_PRODUCT_LISTING_HEIGHT';
UPDATE configuration SET configuration_value = 150 WHERE configuration_key = 'IMAGE_PRODUCT_NEW_LISTING_WIDTH';
UPDATE configuration SET configuration_value = 150 WHERE configuration_key = 'IMAGE_PRODUCT_NEW_LISTING_HEIGHT';
UPDATE configuration SET configuration_value = 150 WHERE configuration_key = 'IMAGE_PRODUCT_NEW_WIDTH';
UPDATE configuration SET configuration_value = 150 WHERE configuration_key = 'IMAGE_PRODUCT_NEW_HEIGHT';
UPDATE configuration SET configuration_value = 150 WHERE configuration_key = 'IMAGE_FEATURED_PRODUCTS_LISTING_WIDTH';
UPDATE configuration SET configuration_value = 150 WHERE configuration_key = 'IMAGE_FEATURED_PRODUCTS_LISTING_HEIGHT';
UPDATE configuration SET configuration_value = 150 WHERE configuration_key = 'IMAGE_PRODUCT_ALL_LISTING_WIDTH';
UPDATE configuration SET configuration_value = 150 WHERE configuration_key = 'IMAGE_PRODUCT_ALL_LISTING_HEIGHT';
UPDATE configuration SET configuration_value = 150 WHERE configuration_key = 'CATEGORY_ICON_IMAGE_WIDTH';
UPDATE configuration SET configuration_value = 150 WHERE configuration_key = 'CATEGORY_ICON_IMAGE_HEIGHT';
UPDATE configuration SET configuration_value = 150 WHERE configuration_key = 'SUBCATEGORY_IMAGE_TOP_WIDTH';
UPDATE configuration SET configuration_value = 150 WHERE configuration_key = 'SUBCATEGORY_IMAGE_TOP_WIDTH';
UPDATE configuration SET configuration_value = 150 WHERE configuration_key = 'SUBCATEGORY_IMAGE_HEIGHT';
UPDATE configuration SET configuration_value = 150 WHERE configuration_key = 'SUBCATEGORY_IMAGE_HEIGHT';
UPDATE configuration SET configuration_value = '1' WHERE configuration_key = 'CATEGORIES_TABS_STATUS';
UPDATE configuration SET configuration_value = 'true' WHERE configuration_key = 'PRODUCT_LIST_ALPHA_SORTER';
UPDATE configuration SET configuration_value = 'true' WHERE configuration_key = 'PRODUCT_LIST_CATEGORIES_IMAGE_STATUS';
UPDATE configuration SET configuration_value = 'true' WHERE configuration_key = 'PRODUCT_LIST_CATEGORIES_IMAGE_STATUS_TOP';
UPDATE configuration SET configuration_value = 1 WHERE configuration_key = 'PRODUCT_LIST_DESCRIPTION';
UPDATE configuration SET configuration_value = 1 WHERE configuration_key = 'PRODUCT_LIST_FILTER';
UPDATE configuration SET configuration_value = 2 WHERE configuration_key = 'PRODUCT_INFO_CATEGORIES_IMAGE_STATUS';
UPDATE configuration SET configuration_value = 'True' WHERE configuration_key = 'USE_SPLIT_LOGIN_MODE';
UPDATE configuration SET configuration_value = 1 WHERE configuration_key = 'EZPAGES_STATUS_HEADER';
UPDATE configuration SET configuration_value = 1 WHERE configuration_key = 'EZPAGES_STATUS_FOOTER';
UPDATE configuration SET configuration_value = 1 WHERE configuration_key = 'SHOW_SHOPPING_CART_UPDATE';
UPDATE configuration SET configuration_value = 3 WHERE configuration_key = 'SHOW_SHOPPING_CART_DELETE';
UPDATE configuration SET configuration_value = 1 WHERE configuration_key = 'SHOW_PRODUCT_INFO_MAIN_NEW_PRODUCTS';
UPDATE configuration SET configuration_value = 3 WHERE configuration_key = 'SHOW_PRODUCT_INFO_MAIN_SPECIALS_PRODUCTS';
UPDATE configuration SET configuration_value = 2 WHERE configuration_key = 'SHOW_PRODUCT_INFO_MAIN_FEATURED_PRODUCTS';
UPDATE configuration SET configuration_value = 4 WHERE configuration_key = 'SHOW_PRODUCT_INFO_MAIN_UPCOMING';
UPDATE configuration SET configuration_value = 1 WHERE configuration_key = 'COLUMN_RIGHT_STATUS';
UPDATE configuration SET configuration_value = 1 WHERE configuration_key = 'COLUMN_LEFT_STATUS';

UPDATE template_select SET template_dir = 'responsive_classic' WHERE template_id = 1;

ALTER TABLE layout_boxes DROP show_box_min_width;