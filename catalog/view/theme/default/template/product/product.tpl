<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content"><?php echo $content_top; ?>
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>

<style>
  .nextBtn{
    float:right;
    right:0px;
    padding:5px;
    padding-left:10px;
    padding-right:10px;
    background-color: #555555;
    color: #ebebeb;
    margin-top: -18px;
    cursor:pointer;
  }
  .clickElement{
    padding-bottom:10px
  }

  .edit{

    display:none;
    cursor: pointer;
  }

</style>

  <div class="product-info">
    <?php if ($thumb || $images) { ?>
    <div class="left">
    <style type="text/css"> 

   

      .zoom {
      display:inline-block;
      position: relative;
    }

    .zoom img {
      display: block;
    }

    .zoom img::selection { background-color: transparent; }
    </style>

      <?php if ($thumb) { ?>
      <div class="image" id="zoomidthis" style="border:none">
        <span class='zoom' id='ex1'>
          <img src="<?php echo $popup; ?>" style="width:500px;height:500px" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" id="image" />
        </span>
      </div>
      <?php } ?>
      <?php if ($images) { ?>
      <div class="image-additional"  style="width:530px;border:none">
        <?php foreach ($images as $image) { ?>
        <img style="padding:4px;border:none;" class="imageAdd" id="<?php echo $image['popup'];?>" src="<?php echo $image['thumb']; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" />
        <?php } ?>
      </div>
      <?php } ?>
    </div>
    <?php } ?>


    <script src='catalog/view/javascript/jquery/jquery.zoom.js'></script>
    <script>
    $(document).ready(function(){
      $('#ex1').zoom();
    });
  </script>

   <script>
        $(function(){
          $(".imageAdd").each(function(){
            $(this).click(function(){
              //image
              //zoomImg
              var ids= $(this).attr("id");
              $("#image").attr('src',ids).css({"width":"500px","height":"500px"});
               $(".zoomImg").attr('src',ids);
            });
          });
        });
    </script>


    <div class="right" style="padding-left:550px;border:none;">
      <div class="description" style="border:none;">
        <span style="font-family:calibri;font-size:15pt;text-transform: uppercase;color:black"><?php echo $heading_title; ?></span>
        <span style="font-family: Roboto,sans-serif;font-size:12pt;color:gray;border:none;"><?php echo $description; ?></span>
        </div>
      <?php if ($price) { ?>
      <div class="price"  style="font-family:calibri;font-size:13pt;text-transform: uppercase;color:gray;border:none;"><?php //echo $text_price; ?>
        <?php if (!$special) { ?>
        <?php echo $price; ?>
        <?php } else { ?>
        <span class="price-old"><?php echo $price; ?></span> <span class="price-new"><?php echo $special; ?></span>
        <?php } ?>
        <br />
        <?php if ($tax) { ?>
        <span class="price-tax"><?php echo $text_tax; ?> <?php echo $tax; ?></span><br />
        <?php } ?>
        <?php if ($points) { ?>
        <span class="reward"><small><?php echo $text_points; ?> <?php echo $points; ?></small></span><br />
        <?php } ?>
        <?php if ($discounts) { ?>
        <br />
        <div class="discount">
          <?php foreach ($discounts as $discount) { ?>
          <?php echo sprintf($text_discount, $discount['quantity'], $discount['price']); ?><br />
          <?php } ?>
        </div>
        <?php } ?>
      </div>
      <?php } ?>
       <div class="cart" style="border:none;">
        <div   style="font-family:calibri;font-size:13pt;color:gray"><b>Quantity</b>

           <input type="text" name="quantity" id="qtyText" size="2" value="<?php echo $minimum; ?>" style="height:19px;width:50px;border:none;background-color: #ebebeb" />
            <div class="mainDivImgButton" style="width:18px;height:23px;border:1px solid #ebebeb; display:inline;position:absolute;margin-left:-4px;margin-top:0px">
              <div id="arrowUpQty" style="width:20px;height:10px;display: inline;position:absolute;"></div>
              <div id="arrowDownQty" style="width:20px;height:10px;display: inline;position:absolute;margin-top:12px"></div>
            </div>
            
            <style type="text/css">
              .mainDivImgButton{
                background: url('http://localhost/FIV3/image/data/nImage/jquery.fs.stepper-arrows.png') no-repeat #ebebeb;
                cursor: pointer;
              }
            </style>

            <script type="text/javascript">
              $(function(){
                $("#arrowUpQty").click(function(){
                    var Total = parseInt($("#qtyText").val()) + 1;
                    $("#qtyText").val(Total);
                  });

                  $("#arrowDownQty").click(function(){
                    var Total = parseInt($("#qtyText").val()) - 1;
                    if(Total>0){
                      $("#qtyText").val(Total);
                    }
                    
                  });
              });
            </script>


          <input type="hidden" name="product_id" size="2" value="<?php echo $product_id; ?>" />
          &nbsp;<br>
          <input style="display:none" type="button" value="<?php echo $button_cart; ?>" id="button-cart" class="button" />
          <span style="display:none">&nbsp;&nbsp;<?php echo $text_or; ?>&nbsp;&nbsp;</span>
          <span class="links"  style="display:none"><a onclick="addToWishList('<?php echo $product_id; ?>');"><?php echo $button_wishlist; ?></a><br />
            <a onclick="addToCompare('<?php echo $product_id; ?>');"><?php echo $button_compare; ?></a></span>
        </div>
        <?php if ($minimum > 1) { ?>
        <div class="minimum"><?php echo $text_minimum; ?></div>
        <?php } ?>
      </div>
      <?php if ($profiles): ?>
      <div class="option">
          <h2><span class="required">*</span><?php echo $text_payment_profile ?></h2>
          <br />
          <select name="profile_id">
              <option value=""><?php echo $text_select; ?></option>
              <?php foreach ($profiles as $profile): ?>
              <option value="<?php echo $profile['profile_id'] ?>"><?php echo $profile['name'] ?></option>
              <?php endforeach; ?>
          </select>
          <br />
          <br />
          <span id="profile-description"></span>
          <br />
          <br />
      </div>
      <?php endif; ?>
      <?php if ($options) { ?>
      <div class="options" id="mainOption">
        <h2><?php echo $text_option; ?></h2>
        <br />


        <?php foreach ($options as $option) { ?>
        <?php if ($option['type'] == 'select') { ?>
        <div id="option-<?php echo $option['product_option_id']; ?>" class="option clickElementHead">
          <div id="" class="clickElement" style="border-bottom:1px solid black">
              <?php if ($option['required']) { ?>
              <span class="required">*</span>
              <?php } ?>
              <b><?php echo $option['name']; ?>:</b>
              <b style="float:right;color:gray;" class="edit"> EDIT </b>
              <br />
          </div>
          <div style="width:640px; display:none" class="displ hidDivoption-<?php echo $option['product_option_id']; ?>">
            <select name="option[<?php echo $option['product_option_id']; ?>]">
              <option value=""><?php echo $text_select; ?></option>
              <?php foreach ($option['option_value'] as $option_value) { ?>
              <option value="<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
              <?php if ($option_value['price']) { ?>
              (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
              <?php } ?>
              </option>
              <?php } ?>
            </select>

            <br><br>
           <div class="nextBtn" id="option-<?php echo $option['product_option_id']; ?>"> NEXT </div>
            <br><br>
          </div>
        </div>
            <br />
        
        
        <?php } ?>
        <?php if ($option['type'] == 'radio') { ?>
        <div id="option-<?php echo $option['product_option_id']; ?>" class="option clickElementHead radioOption">
          <div id="" class="clickElement" style="border-bottom:1px solid black">
              <?php if ($option['required']) { ?>
              <span class="required">*</span>
              <?php } ?>
              <b><span id="nameOption"><?php echo $option['name']; ?></span>:</b>
              <b style="float:right;color:gray;" class="edit"> EDIT </b>
              <br />
          </div>
          <div style="width:640px; display:none" class="displ hidDivoption-<?php echo $option['product_option_id']; ?>">
              <?php foreach ($option['option_value'] as $option_value) { ?>
              <input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" id="option-value-<?php echo $option_value['product_option_value_id']; ?>" />
              <label for="option-value-<?php echo $option_value['product_option_value_id']; ?>"  style="font-family:calibri;font-size:12pt;font-weight:600"><?php echo $option_value['name']; ?>
                <?php if (false){ //($option_value['price']) { ?>
                (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                <?php } ?>
              </label>
              <br />
              <br><br>
           <div class="nextBtn" id="option-<?php echo $option['product_option_id']; ?>"> NEXT </div>
            <br><br>
          </div>
          <?php } ?>
        </div>
        <br />
        <?php } ?>
        <?php if ($option['type'] == 'checkbox') { ?>
        <div id="option-<?php echo $option['product_option_id']; ?>" class="option clickElementHead checkOption">
          <div id="" class="clickElement" style="border-bottom:1px solid black">
              <?php if ($option['required']) { ?>
              <span class="required">*</span>
              <?php } ?>
              <b><span id="nameOption"><?php echo $option['name']; ?></span>:</b>
              <b style="float:right;color:gray;" class="edit"> EDIT </b>
              <br />
          </div>
          <div style="width:640px; display:none" class="displ hidDivoption-<?php echo $option['product_option_id']; ?>">
            <?php foreach ($option['option_value'] as $option_value) { ?>
              <input type="checkbox" name="option[<?php echo $option['product_option_id']; ?>][]" value="<?php echo $option_value['product_option_value_id']; ?>" id="option-value-<?php echo $option_value['product_option_value_id']; ?>" />
            <label for="option-value-<?php echo $option_value['product_option_value_id']; ?>"  style="font-family:calibri;font-size:12pt;font-weight:600"><?php echo $option_value['name']; ?>
              <?php if ($option_value['price']) { ?>
                (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
              <?php } ?>
            </label>
          <br />
          <br><br>
           <div class="nextBtn" id="option-<?php echo $option['product_option_id']; ?>"> NEXT </div>
            <br><br>
          </div>
          <?php } ?>
        </div>
        <br />
        <?php } ?>
        <?php if ($option['type'] == 'image') { ?>
        <div id="option-<?php echo $option['product_option_id']; ?>" class="option clickElementHead imgOption">
          <div id="" class="clickElement" style="border-bottom:1px solid black">
            <?php if ($option['required']) { ?>
            <span class="required">*</span>
            <?php } ?>
            <b><span id="nameOption"><?php echo $option['name']; ?></span>:</b>
            <b style="float:right;color:gray;" class="edit"> EDIT </b>
            <br />
          </div>
          <div style="width:640px; display:none" class="displ hidDivoption-<?php echo $option['product_option_id']; ?>">
            <?php foreach ($option['option_value'] as $option_value) { ?>
              <div style="width:130px; height:130px;display: inline-block;">
               <div class="type_selection main option-value-<?php echo $option_value['product_option_value_id']; ?>" >
                 <input type="radio" style="display:none" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" id="option-value-<?php echo $option_value['product_option_value_id']; ?>" />
                  <div>
                  <label for="option-value-<?php echo $option_value['product_option_value_id']; ?>"><img src="<?php echo $option_value['image']; ?>" alt="<?php echo $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>"  /></label>
                  </div>
                  <div class="content">
                    <div>
                     <label class="hovName" for="option-value-<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
                          <?php if (false){//($option_value['price']) { ?>
                          (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                          <?php } ?>
                        </label>
                        </div>
                  </div>
                  </div>
              </div>
            <?php } ?>

            <br><br>
           <div class="nextBtn" id="option-<?php echo $option['product_option_id']; ?>"> NEXT </div>
            <br><br>
          </div>
          

          <style> 
            .type_selection {
              position:relative;
              height:128px;
              width: 127px;
              float:left;
              margin-right: 15px;
              overflow: hidden;
            }

              .type_selection:last-child {
                margin-right: 0;
              }
              
              .type_selection .content{
                background: url('http://localhost/FIV3/image/data/nImage/x_greybg.png') repeat;
                position: absolute;
                top:128px;
                font-size: 11px;
                color: #fff;
                font-family: 'Roboto', sans-serif;
                font-weight: 500;
                text-transform: uppercase;
                height:128px;
                width: 127px;
                cursor: pointer;
              }
              
              .type_selection:hover .content {
                top: 0;
              }
              
              .type_selection .content > div{
                position: absolute; 
                bottom: 22px; 
                background: url('http://localhost/FIV3/image/data/nImage/ico_tick.png') no-repeat #333 right 4px center; 
                width: 100px;
                padding: 5px 25px 5px 5px;
                left: -1px;
              }
          </style>
          
        </div>
        <br />
        <?php } ?>
        <?php if ($option['type'] == 'text') { ?>
        <div id="option-<?php echo $option['product_option_id']; ?>" class="option clickElementHead textOption">
          <div id="" class="clickElement" style="border-bottom:1px solid black">
            <?php if ($option['required']) { ?>
            <span class="required">*</span>
            <?php } ?>
            <b><span id="nameOption"><?php echo $option['name']; ?></span>:</b>
            <b style="float:right;color:gray;" class="edit"> EDIT </b>
            <br />
          </div>
          <div style="width:640px; display:none" class="displ hidDivoption-<?php echo $option['product_option_id']; ?>">
            <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['option_value']; ?>" />
            <br><br>
           <div class="nextBtn" id="option-<?php echo $option['product_option_id']; ?>"> NEXT </div>
            <br><br>
          </div>
        </div>
        <br />
        <?php } ?>
        <?php if ($option['type'] == 'textarea') { ?>
        <div id="option-<?php echo $option['product_option_id']; ?>" class="option clickElementHead">
          <div id="" class="clickElement" style="border-bottom:1px solid black">
            <?php if ($option['required']) { ?>
            <span class="required">*</span>
            <?php } ?>
            <b><?php echo $option['name']; ?>:</b>
            <b style="float:right;color:gray;" class="edit"> EDIT </b>
            <br />
          </div>
          <div style="width:640px; display:none" class="displ hidDivoption-<?php echo $option['product_option_id']; ?>">
            <textarea name="option[<?php echo $option['product_option_id']; ?>]" cols="40" rows="5"><?php echo $option['option_value']; ?></textarea>
            <br><br>
           <div class="nextBtn" id="option-<?php echo $option['product_option_id']; ?>"> NEXT </div>
            <br><br>
          </div>
        </div>
        <br />
        <?php } ?>
        <?php if ($option['type'] == 'file') { ?>
        <div id="option-<?php echo $option['product_option_id']; ?>" class="option clickElementHead">
          <div id="" class="clickElement" style="border-bottom:1px solid black">
            <?php if ($option['required']) { ?>
            <span class="required">*</span>
            <?php } ?>
            <b><?php echo $option['name']; ?>:</b>
            <b style="float:right;color:gray;" class="edit"> EDIT </b>
            <br />
          </div>
          <div style="width:640px; display:none" class="displ hidDivoption-<?php echo $option['product_option_id']; ?>">
            <input type="button" value="<?php echo $button_upload; ?>" id="button-option-<?php echo $option['product_option_id']; ?>" class="button">
            <input type="hidden" name="option[<?php echo $option['product_option_id']; ?>]" value="" />
            <br><br>
           <div class="nextBtn" id="option-<?php echo $option['product_option_id']; ?>"> NEXT </div>
            <br><br>
          </div>
        </div>
        <br />
        <?php } ?>
        <?php if ($option['type'] == 'date') { ?>
        <div id="option-<?php echo $option['product_option_id']; ?>" class="option clickElementHead">
          <div id="" class="clickElement" style="border-bottom:1px solid black">
            <?php if ($option['required']) { ?>
            <span class="required">*</span>
            <?php } ?>
            <b><?php echo $option['name']; ?>:</b>
            <b style="float:right;color:gray;" class="edit"> EDIT </b>
            <br />
          </div>
          <div style="width:640px; display:none" class="displ hidDivoption-<?php echo $option['product_option_id']; ?>">
            <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['option_value']; ?>" class="date" />
            <br><br>
           <div class="nextBtn" id="option-<?php echo $option['product_option_id']; ?>"> NEXT </div>
            <br><br>
          </div>
        </div>
        <br />
        <?php } ?>
        <?php if ($option['type'] == 'datetime') { ?>
        <div id="option-<?php echo $option['product_option_id']; ?>" class="option clickElementHead">
          <div id="" class="clickElement" style="border-bottom:1px solid black">
            <?php if ($option['required']) { ?>
            <span class="required">*</span>
            <?php } ?>
            <b><?php echo $option['name']; ?>:</b>
            <b style="float:right;color:gray;" class="edit"> EDIT </b>
            <br />
          </div>
          <div style="width:640px; display:none" class="displ hidDivoption-<?php echo $option['product_option_id']; ?>">
            <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['option_value']; ?>" class="datetime" />
            <br><br>
           <div class="nextBtn" id="option-<?php echo $option['product_option_id']; ?>"> NEXT </div>
            <br><br>
          </div>
        </div>
        <br />
        <?php } ?>
        <?php if ($option['type'] == 'time') { ?>
        <div id="option-<?php echo $option['product_option_id']; ?>" class="option clickElementHead">
          <div id="" class="clickElement" style="border-bottom:1px solid black">
            <?php if ($option['required']) { ?>
            <span class="required">*</span>
            <?php } ?>
            <b><?php echo $option['name']; ?>:</b>
            <b style="float:right;color:gray;" class="edit"> EDIT </b>
            <br />
          </div>
          <div style="width:640px; display:none" class="displ hidDivoption-<?php echo $option['product_option_id']; ?>">
            <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['option_value']; ?>" class="time" />
          <br><br>
           <div class="nextBtn" id="option-<?php echo $option['product_option_id']; ?>"> NEXT </div>
            <br><br>
          </div>
        </div>
        <br />
        <?php } ?>
        <?php } ?>
      </div>
      <?php } ?>
      <?php if ($review_status) { ?>
      <div class="review">
        <div><img src="catalog/view/theme/default/image/stars-<?php echo $rating; ?>.png" alt="<?php echo $reviews; ?>" />&nbsp;&nbsp;<a onclick="$('a[href=\'#tab-review\']').trigger('click');"><?php echo $reviews; ?></a>&nbsp;&nbsp;|&nbsp;&nbsp;<a onclick="$('a[href=\'#tab-review\']').trigger('click');"><?php echo $text_write; ?></a></div>
        <div class="share"><!-- AddThis Button BEGIN -->
          <div class="addthis_default_style"><a class="addthis_button_compact"><?php echo $text_share; ?></a> <a class="addthis_button_email"></a><a class="addthis_button_print"></a> <a class="addthis_button_facebook"></a> <a class="addthis_button_twitter"></a></div>
          <script type="text/javascript" src="//s7.addthis.com/js/250/addthis_widget.js"></script> 
          <!-- AddThis Button END --> 
        </div>
      </div>
      <?php } ?>
    </div>
  </div>
  <div  style="display:none" id="tabs" class="htabs"><a href="#tab-description"><?php echo $tab_description; ?></a>
    <?php if ($attribute_groups) { ?>
    <a href="#tab-attribute"><?php echo $tab_attribute; ?></a>
    <?php } ?>
    <?php if ($review_status) { ?>
    <a href="#tab-review"><?php echo $tab_review; ?></a>
    <?php } ?>
    <?php if ($products) { ?>
    <a href="#tab-related"><?php echo $tab_related; ?> (<?php echo count($products); ?>)</a>
    <?php } ?>
  </div>
  <div   style="display:none">
    <div id="tab-description" class="tab-content"><?php echo $description; ?></div>
  </div>
  <?php if ($attribute_groups) { ?>
  <div style="display:none"  id="tab-attribute" class="tab-content">
    <table class="attribute">
      <?php foreach ($attribute_groups as $attribute_group) { ?>
      <thead>
        <tr>
          <td colspan="2"><?php echo $attribute_group['name']; ?></td>
        </tr>
      </thead>
      <tbody>
        <?php foreach ($attribute_group['attribute'] as $attribute) { ?>
        <tr>
          <td><?php echo $attribute['name']; ?></td>
          <td><?php echo $attribute['text']; ?></td>
        </tr>
        <?php } ?>
      </tbody>
      <?php } ?>
    </table>
  </div>
  <?php } ?>
  <?php if ($review_status) { ?>
  <div id="tab-review" class="tab-content">
    <div id="review"></div>
    <h2 id="review-title"><?php echo $text_write; ?></h2>
    <b><?php echo $entry_name; ?></b><br />
    <input type="text" name="name" value="" />
    <br />
    <br />
    <b><?php echo $entry_review; ?></b>
    <textarea name="text" cols="40" rows="8" style="width: 98%;"></textarea>
    <span style="font-size: 11px;"><?php echo $text_note; ?></span><br />
    <br />
    <b><?php echo $entry_rating; ?></b> <span><?php echo $entry_bad; ?></span>&nbsp;
    <input type="radio" name="rating" value="1" />
    &nbsp;
    <input type="radio" name="rating" value="2" />
    &nbsp;
    <input type="radio" name="rating" value="3" />
    &nbsp;
    <input type="radio" name="rating" value="4" />
    &nbsp;
    <input type="radio" name="rating" value="5" />
    &nbsp;<span><?php echo $entry_good; ?></span><br />
    <br />
    <b><?php echo $entry_captcha; ?></b><br />
    <input type="text" name="captcha" value="" />
    <br />
    <img src="index.php?route=product/product/captcha" alt="" id="captcha" /><br />
    <br />
    <div class="buttons">
      <div class="right"><a id="button-review" class="button"><?php echo $button_continue; ?></a></div>
    </div>
  </div>
  <?php } ?>
  <?php if ($products) { ?>
  <div id="tab-related" class="tab-content">
    <div class="box-product">
      <?php foreach ($products as $product) { ?>
      <div>
        <?php if ($product['thumb']) { ?>
        <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" /></a></div>
        <?php } ?>
        <div class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
        <?php if ($product['price']) { ?>
        <div class="price">
          <?php if (!$product['special']) { ?>
          <?php echo $product['price']; ?>
          <?php } else { ?>
          <span class="price-old"><?php echo $product['price']; ?></span> <span class="price-new"><?php echo $product['special']; ?></span>
          <?php } ?>
        </div>
        <?php } ?>
        <?php if ($product['rating']) { ?>
        <div class="rating"><img src="catalog/view/theme/default/image/stars-<?php echo $product['rating']; ?>.png" alt="<?php echo $product['reviews']; ?>" /></div>
        <?php } ?>
        <a onclick="addToCart('<?php echo $product['product_id']; ?>');" class="button"><?php echo $button_cart; ?></a></div>
      <?php } ?>
    </div>
  </div>
  <?php } ?>
  <?php if ($tags) { ?>
  <div class="tags"><b><?php echo $text_tags; ?></b>
    <?php for ($i = 0; $i < count($tags); $i++) { ?>
    <?php if ($i < (count($tags) - 1)) { ?>
    <a href="<?php echo $tags[$i]['href']; ?>"><?php echo $tags[$i]['tag']; ?></a>,
    <?php } else { ?>
    <a href="<?php echo $tags[$i]['href']; ?>"><?php echo $tags[$i]['tag']; ?></a>
    <?php } ?>
    <?php } ?>
  </div>
  <?php } ?>
  <?php echo $content_bottom; ?></div>
<script type="text/javascript"><!--
$(document).ready(function() {
	$('.colorbox').colorbox({
		overlayClose: true,
		opacity: 0.5,
		rel: "colorbox"
	});
});
//--></script> 
<script type="text/javascript"><!--

$('select[name="profile_id"], input[name="quantity"]').change(function(){
    $.ajax({
		url: 'index.php?route=product/product/getRecurringDescription',
		type: 'post',
		data: $('input[name="product_id"], input[name="quantity"], select[name="profile_id"]'),
		dataType: 'json',
        beforeSend: function() {
            $('#profile-description').html('');
        },
		success: function(json) {
			$('.success, .warning, .attention, information, .error').remove();
            
			if (json['success']) {
                $('#profile-description').html(json['success']);
			}	
		}
	});
});
    
$('#button-cart').bind('click', function() {
	$.ajax({
		url: 'index.php?route=checkout/cart/add',
		type: 'post',
		data: $('.product-info input[type=\'text\'], .product-info input[type=\'hidden\'], .product-info input[type=\'radio\']:checked, .product-info input[type=\'checkbox\']:checked, .product-info select, .product-info textarea'),
		dataType: 'json',
		success: function(json) {
			$('.success, .warning, .attention, information, .error').remove();
			
			if (json['error']) {
				if (json['error']['option']) {
					for (i in json['error']['option']) {
						$('#option-' + i).after('<span class="error">' + json['error']['option'][i] + '</span>');
					}
				}
                
                if (json['error']['profile']) {
                    $('select[name="profile_id"]').after('<span class="error">' + json['error']['profile'] + '</span>');
                }
			} 
			
			if (json['success']) {
				$('#notification').html('<div class="success" style="display: none;">' + json['success'] + '<img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>');
					
				$('.success').fadeIn('slow');
					
				$('#cart-total').html(json['total']);
				
				$('html, body').animate({ scrollTop: 0 }, 'slow'); 
			}	
		}
	});
});
//--></script>
<?php if ($options) { ?>
<script type="text/javascript" src="catalog/view/javascript/jquery/ajaxupload.js"></script>
<?php foreach ($options as $option) { ?>
<?php if ($option['type'] == 'file') { ?>
<script type="text/javascript"><!--
new AjaxUpload('#button-option-<?php echo $option['product_option_id']; ?>', {
	action: 'index.php?route=product/product/upload',
	name: 'file',
	autoSubmit: true,
	responseType: 'json',
	onSubmit: function(file, extension) {
		$('#button-option-<?php echo $option['product_option_id']; ?>').after('<img src="catalog/view/theme/default/image/loading.gif" class="loading" style="padding-left: 5px;" />');
		$('#button-option-<?php echo $option['product_option_id']; ?>').attr('disabled', true);
	},
	onComplete: function(file, json) {
		$('#button-option-<?php echo $option['product_option_id']; ?>').attr('disabled', false);
		
		$('.error').remove();
		
		if (json['success']) {
			alert(json['success']);
			
			$('input[name=\'option[<?php echo $option['product_option_id']; ?>]\']').attr('value', json['file']);
		}
		
		if (json['error']) {
			$('#option-<?php echo $option['product_option_id']; ?>').after('<span class="error">' + json['error'] + '</span>');
		}
		
		$('.loading').remove();	
	}
});
//--></script>
<?php } ?>
<?php } ?>
<?php } ?>
<script type="text/javascript"><!--
$('#review .pagination a').live('click', function() {
	$('#review').fadeOut('slow');
		
	$('#review').load(this.href);
	
	$('#review').fadeIn('slow');
	
	return false;
});			

$('#review').load('index.php?route=product/product/review&product_id=<?php echo $product_id; ?>');

$('#button-review').bind('click', function() {
	$.ajax({
		url: 'index.php?route=product/product/write&product_id=<?php echo $product_id; ?>',
		type: 'post',
		dataType: 'json',
		data: 'name=' + encodeURIComponent($('input[name=\'name\']').val()) + '&text=' + encodeURIComponent($('textarea[name=\'text\']').val()) + '&rating=' + encodeURIComponent($('input[name=\'rating\']:checked').val() ? $('input[name=\'rating\']:checked').val() : '') + '&captcha=' + encodeURIComponent($('input[name=\'captcha\']').val()),
		beforeSend: function() {
			$('.success, .warning').remove();
			$('#button-review').attr('disabled', true);
			$('#review-title').after('<div class="attention"><img src="catalog/view/theme/default/image/loading.gif" alt="" /> <?php echo $text_wait; ?></div>');
		},
		complete: function() {
			$('#button-review').attr('disabled', false);
			$('.attention').remove();
		},
		success: function(data) {
			if (data['error']) {
				$('#review-title').after('<div class="warning">' + data['error'] + '</div>');
			}
			
			if (data['success']) {
				$('#review-title').after('<div class="success">' + data['success'] + '</div>');
								
				$('input[name=\'name\']').val('');
				$('textarea[name=\'text\']').val('');
				$('input[name=\'rating\']:checked').attr('checked', '');
				$('input[name=\'captcha\']').val('');
			}
		}
	});
});
//--></script> 
<script type="text/javascript"><!--
$('#tabs a').tabs();
//--></script> 
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-timepicker-addon.js"></script> 
<script type="text/javascript"><!--
$(document).ready(function() {
	if ($.browser.msie && $.browser.version == 6) {
		$('.date, .datetime, .time').bgIframe();
	}

	$('.date').datepicker({dateFormat: 'yy-mm-dd'});
	$('.datetime').datetimepicker({
		dateFormat: 'yy-mm-dd',
		timeFormat: 'h:m'
	});
	$('.time').timepicker({timeFormat: 'h:m'});
});
//--></script> 
<?php echo $footer; ?>


<script>
        $(function(){
          
          var idFirst = $("#mainOption").children().closest(".clickElementHead").attr('id');
          $("#"+idFirst+" .displ").css("display","block");

              $(".content").click(function(){
                $(this).parent().find(":radio").click();
                $(".content").each(function(){
                  if(!$(this).parent().find(":radio").is(":checked")){
                    $(this).css("top","");
                  }
                });
                $(this).css("top","0px");
              });

              $(".edit").click(function(){
                $(this).css("display","none");
                var pIds = $(this).parent().parent().attr('id');
                $(".hidDiv"+pIds).css("display","block");
              });

              $(".nextBtn").click(function(){
                var nextParent = $(this).parent().parent().attr('id');
                var attrIdNext = $("#"+nextParent).nextAll("div.clickElementHead").attr('id');
                
                $("#"+attrIdNext).find(".displ").css("display","block");
                $(this).parent().parent().find(".edit").css("display","block");
                $(this).parent().css("display","none");

                //to change the next button text
                var nxtChange = $("#"+attrIdNext).nextAll("div.clickElementHead").attr('id');
                if(nxtChange=== undefined){
                  $("#"+attrIdNext).find(".nextBtn").text('ADD TO BAG').addClass('clickCart');
                  $(".clickCart").css({"padding":"10px","padding-left":"20px","padding-right":"20px","font-weight":"bold"});
                  //click cart
                  $(".clickCart").click(function(){
                    $("#button-cart").click();
                    $(this).parent().css("display","block");
                    $(this).parent().parent().find(".edit").css("display","none");
                  });
                }
              });

              $(".edit").click(function(){
                 var nextParent = $(this).parent().parent().attr('id');
                  $("#"+nextParent).nextAll(".clickElementHead").attr('id')
                
                 nextHideDispl($("#"+nextParent).nextAll(".clickElementHead").attr('id'));
              });

              function nextHideDispl(idParentPass){
                
                var newIdParent = idParentPass;
                while(newIdParent!=""){
                  $("#"+newIdParent).find(".displ").css("display","none");
                  $("#"+newIdParent).find(".edit").css("display","none");
                  var newMsg = $("#"+newIdParent).nextAll(".clickElementHead").attr('id');
                  if(newMsg === undefined){
                    newIdParent="";
                    
                  }else{    
                    newIdParent = $("#"+newIdParent).nextAll(".clickElementHead").attr('id');
                  }
                }
              }

              var textIdToPass = "";
              $(".textOption").each(function(){
                var optionId = $(this).attr('id');
                $(this).find('#nameOption').each(function(){
                  if($(this).text()=='INITIALS'){
                    textIdToPass = optionId;
                  }
                });
              });

              var checkIdToPass = "";
              $(".checkOption").each(function(){
                var optionId = $(this).attr('id');
                $(this).find('#nameOption').each(function(){
                  if($(this).text()=='WISH TO INCLUDE INITIAL?'){
                    checkIdToPass = optionId;
                  }
                });
              });

              //242
              $("#"+textIdToPass).removeClass("clickElementHead").css("display","none");
              //243
              $("#"+checkIdToPass).removeClass("clickElementHead").css("display","none");

              var imgIdToPass = "";
              $(".imgOption").each(function(){
                var optionId = $(this).attr('id');
                $(this).find('#nameOption').each(function(){
                  if($(this).text()=='MONOGRAM'){
                    imgIdToPass = optionId;
                  }
                });
              });

              $("#"+imgIdToPass+".clickElementHead").children(".displ").append("<div style='color:gray;float:right;top:-165px;position:relative' id='dumDiv'> <span style='font-weight: 400;font-style: italic;font-size: 13px;'>Enter your initials (Max 10 characters)<br> Choice of color can be made during<br>made to measure appointment.</span><br><br><input type='text' id='dumText' maxLength='10' style='font-size:12pt'><br><br><span style='font-weight: 400;font-style: italic;font-size: 13px;'>A SGD$10.00 charge for monograms.<br><br>NOTE: Selection of colour can be made<br>during appointment for measurement.</span><br><br><input type='checkbox' id='dumCheck'><span style='font-weight: 700; font-size: 13px;''>I do not wish to include my initials</span></div>");
              $("#"+imgIdToPass+".clickElementHead .hidDiv"+imgIdToPass).css("height","250px");
              $("#"+imgIdToPass+".nextBtn").css({"margin-top":"80px","position":"absolute","right":"80px"});

              //option-240 image

              $("#dumCheck").click(function(){
                $("#"+checkIdToPass).find(":checkbox").each(function(){$(this).click();});
                 //$("#option-value-41").click();
              });

              $("#dumText").bind("keyup blur",function(){
                var txtVal = $(this).val();
                //$("#"+textIdToPass).find(":text").val(txtVal);
                $("#"+textIdToPass).find(":text").each(function(){$(this).val(txtVal);});
                //$("input[name='option[242]']").val($(this).val());
              });


              //tovalidate the box and the monogram
              $("#dumText").parent().parent().parent().find(":radio").each(function(){ 
                $("#dumText").prop("disabled",true).val('');
                //$("input[name='option[242]']").val('');
                $("#"+textIdToPass).find(":text").val('');
                
                $(this).bind("click change",function(){
                    $("#dumText").prop("disabled",false);
                    $("#dumCheck").prop("checked",false);
                    //$("#option-value-41").prop("checked",false);
                    $("#"+checkIdToPass).find(":checkbox").each(function(){$(this).prop("checked",false);});
                });
              });

              $("#dumCheck").click(function(){ 
                $(this).parent().parent().parent().find(":radio").each(function(){ 
                  $(this).prop("checked",false);
                  $(this).parent().find(".content").css("top","");
                });
                
                $("#dumText").prop("disabled",true).val('');
                //$("input[name='option[242]']").val('');
                $("#"+textIdToPass).find(":text").each(function(){$(this).val('');});
              });

          });
    </script>