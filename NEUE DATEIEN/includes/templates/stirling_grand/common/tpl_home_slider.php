


 <div class="container">
    <div id="slides">
    <?php
    if (SHOW_BANNERS_GROUP_SETSTI1 != '' && $banner = zen_banner_exists('dynamic', SHOW_BANNERS_GROUP_SETSTI1)) {
      if ($banner->RecordCount() > 0) {
        echo zen_display_banner('static', $banner);
      }
    }
?>
<?php
if (SHOW_BANNERS_GROUP_SETSTI2 != '' && $banner = zen_banner_exists('dynamic', SHOW_BANNERS_GROUP_SETSTI2)) {
  if ($banner->RecordCount() > 0) {
    echo zen_display_banner('static', $banner);
  }
}
?>
<?php
if (SHOW_BANNERS_GROUP_SETSTI3 != '' && $banner = zen_banner_exists('dynamic', SHOW_BANNERS_GROUP_SETSTI3)) {
  if ($banner->RecordCount() > 0) {
    echo zen_display_banner('static', $banner);
  }
}
?>
<?php
if (SHOW_BANNERS_GROUP_SETSTI4 != '' && $banner = zen_banner_exists('dynamic', SHOW_BANNERS_GROUP_SETSTI4)) {
  if ($banner->RecordCount() > 0) {
    echo zen_display_banner('static', $banner);
  }
}
?>
<?php
if (SHOW_BANNERS_GROUP_SETSTI5 != '' && $banner = zen_banner_exists('dynamic', SHOW_BANNERS_GROUP_SETSTI5)) {
  if ($banner->RecordCount() > 0) {
    echo zen_display_banner('static', $banner);
  }
}
?>

    </div>
  </div>

 <script type="text/javascript">
    $(function() {
	$('#slides').slidesjs({
	  width: 980,
	      height: 250,
	      play: {
	    active: true,
		auto: true,
		interval: '<?php echo STI_SLIDES_PLAY ?>',
		pauseOnHover: true,
		restartDelay: 2500
		}
	  });
      });
  </script>


