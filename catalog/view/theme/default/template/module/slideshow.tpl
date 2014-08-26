<div class="slideshow">
  <div id="slideshow<?php echo $module; ?>" class="nivoSlider" style="left:-7%;width: <?php echo $width; ?>px; height: <?php echo $height; ?>px;top:-10px">
    <?php foreach ($banners as $banner) { 

      // to maximize the image in the slideshow by rteves
      //echo($banner['image']);
       $n = explode("/",$banner['image']);
      unset($n[6]);

      $titleExpld = explode('-',$n[9]);
      $title1st = $titleExpld[0];
      $title2nd = explode(".",$titleExpld[1]);

      $newImg = $title1st.".". $title2nd[1];

      $n[9] = $newImg;

      $newLink = implode('/',$n);

      //replace $banner['image'] by $newLink;

      ?>
    <?php if ($banner['link']) { ?>
    <a href="<?php echo $banner['link']; ?>"><img src="<?php echo $newLink; ?>" alt="<?php echo $banner['title']; ?>" /></a>
    <?php } else { ?>

    <img  src="<?php echo  $newLink; ?>" style="width:1359px;" alt="<?php echo $banner['title']; ?>" />
    <?php } ?>
    <?php } ?>
  </div>
</div>
<script type="text/javascript"><!--
$(document).ready(function() {
	$('#slideshow<?php echo $module; ?>').nivoSlider();
});
--></script>
