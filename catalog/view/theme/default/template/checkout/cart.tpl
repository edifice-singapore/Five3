<?php echo $header; ?>
<?php if ($attention) { ?>
<div class="attention"><?php echo $attention; ?><img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>
<?php } ?>
<?php if ($success) { ?>
<div class="success"><?php echo $success; ?><img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>
<?php } ?>
<?php if ($error_warning) { ?>
<div class="warning"><?php echo $error_warning; ?><img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>
<?php } ?>
<?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content"><?php echo $content_top; ?>
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
  <h1><?php //echo $heading_title; ?>
    <?php //if ($weight) { ?>
    <!--&nbsp;(<?php //echo $weight; ?>)-->
    <?php //} ?>
  </h1>
  <div class="headTitle" ><?php echo $heading_title; ?></div>
  <style>
    .headTitle{
      background-color:black ;
      color:white;
      font-family: calibri;
      font-size:15pt;
      width: 1170px;
      vertical-align: middle;
      padding:10px;
      padding-left: 20px;
    }

    .cclass{
      font-family: calibri;
      font-size:13pt;
      font-weight: 400;
    }

    .money{
      color:gray;
    }

    .cart-info table{

      border:none;
    }
  </style>

  <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
    <div class="cart-info">
      <table>
        <thead  style="border-bottom:0px;">
          <tr  style="border-bottom:0px;">
            <td class="image cclass" style="  font-weight: 400;text-align:left;left:20px;width:190px;"><?php //echo $column_image; ?>Item</td>
            <td class="name cclass" style="  font-weight: 400;text-align:left;left:20px;width:290px;"><?php //echo $column_name; ?>Description</td>
            <td class="price cclass" style="width:240px;font-weight: 400;text-align:left;left:20px;"><?php //echo $column_price; ?>Price</td>
         
            <td class="quantity cclass" style="width:200px;font-weight: 400;text-align:left;left:20px;"><?php //echo $column_quantity; ?>Quantity</td>
            
            <td class="total cclass"  style="  font-weight: 400;text-align:left;left:20px;"><?php //echo $column_total; ?>Total Amount</td>
            <td></td>
          </tr>
        </thead>
        <tbody >
          <?php foreach ($products as $product) { ?>
            <?php if($product['recurring']): ?>
              <tr >
                  <td  style="padding-top:30px;padding-bottom:30px;" colspan="6" style="border:none;"><image src="catalog/view/theme/default/image/reorder.png" alt="" title="" style="float:left;" /><span style="float:left;line-height:18px; margin-left:10px;"> 
                      <strong><?php echo $text_recurring_item ?></strong>
                      <?php echo $product['profile_description'] ?>
                  </td>
                </tr>
            <?php endif; ?>
          <tr style="border-bottom:1 px solid black;">
          <?php
/*

$n = explode("/",$banner['image']);
      unset($n[5]);

      $titleExpld = explode('-',$n[8]);
      $title1st = $titleExpld[0];
      $title2nd = explode(".",$titleExpld[1]);

      $newImg = $title1st.".". $title2nd[1];
      $n[8] = $newImg;

      $newLink = implode('/',$n);
*/
          ?>
            <td class="image" style="padding-top:30px;padding-bottom:30px;"><?php if ($product['thumb']) { 

                /*$n = explode("/",$product['thumb']);
                unset($n[5]);

                $titleExpld = explode('-',$n[8]);
                $title1st = $titleExpld[0];
                $title2nd = explode(".",$titleExpld[1]);

                $newImg = $title1st.".". $title2nd[1];
                $n[8] = $newImg;

                $newLink = implode('/',$n);*/
              ?>
              <img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" style="border:none;" align="left"/>
              <?php } ?></td>
            <td style="padding-top:30px;padding-bottom:30px;" class="name"><small style="font-size:13pt;font-family:calibri"><b><?php echo $product['name']; ?></b></small>
              <?php if (!$product['stock']) { ?>
              <span class="stock">***</span>
              <?php } ?>
              <br><br>
              <div>

                <?php 
                $check=false;
                foreach ($product['option'] as $option) { ?>
                  <?php
                    foreach($product['option'] as $optCheck){
                      if($optCheck['name']=='WISH TO INCLUDE INITIAL?'){
                        $check=true;
                      }
                    }
                    //
                    $arrCheck = array ("MONOGRAM" , "INITIALS" , "WISH TO INCLUDE INITIAL?"); 
                    if($check==true && !in_array($option['name'],$arrCheck)){
                  ?>
                 <small style="font-size:11pt;font-family:calibri;color:gray"><?php echo $option['name']; ?> - <?php echo $option['value']; ?></small><br />
                <?php } 
                  if($check==false){ ?>
                    <small style="font-size:11pt;font-family:calibri;color:gray"><?php echo $option['name']; ?> - <?php echo  $option['value']; ?></small><br />

                    <?php if($option['name']=="MONOGRAM"){ ?>
                        <small style="font-size:11pt;font-family:calibri;color:black; font-style:italic;font-weight:bold">Addtionional SGD$10.00 Service Fee</small><br />
                    <?php } ?>

                    
                <?php } 
                } ?>
                <?php if($product['recurring']): ?>
                 <small><?php echo $text_payment_profile ?> - <?php echo $product['profile_name'] ?></small>
                <?php endif; ?>
              </div>
              <?php if ($product['reward']) { ?>
              <small><?php echo $product['reward']; ?></small>
              <?php } ?></td>
            <td class="price cclass money"  style="text-align:left;left:20px;font-family:calibri;padding-top:30px;padding-bottom:30px;"><?php echo $product['price']; ?></td>
           
            <td style="padding-top:30px;padding-bottom:30px;" class="quantity">
              <input type="text" name="quantity[<?php echo $product['key']; ?>]" value="<?php echo $product['quantity']; ?>" size="1" style="height:19px;width:50px;border:none;background-color: #ebebeb"/> 
              <div class="mainDivImgButton" style="width:18px;height:23px;border:1px solid #ebebeb; display:inline;position:absolute;margin-left:-4px;margin-top:3px">
                <div id="arrowUpQty" style="width:20px;height:10px;display: inline;position:absolute;"></div>
                <div id="arrowDownQty" style="width:20px;height:10px;display: inline;position:absolute;margin-top:12px"></div>
            </div>
            <style type="text/css">
              .mainDivImgButton{
                background: url('http://fiv3.com.sg/dev1/FIV3/image/data/nImage/jquery.fs.stepper-arrows.png') no-repeat #ebebeb;
                cursor: pointer;
              }
            </style>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <input type="image" src="catalog/view/theme/default/image/ico_ref.jpg" alt="<?php echo $button_update; ?>" title="<?php echo $button_update; ?>" />
            </td>
            
            <td class="total cclass money"  style="text-align:left;left:20px;padding-top:30px;padding-bottom:30px;"><?php echo $product['total']; ?></td>
            <td style="padding-top:30px;padding-bottom:30px;"><a href="<?php echo $product['remove']; ?>"><img src="catalog/view/theme/default/image/ico_bin.jpg" alt="<?php echo $button_remove; ?>" title="<?php echo $button_remove; ?>" /></a></td>
          </tr>
          <?php } ?>
          <?php foreach ($vouchers as $vouchers) { ?>
          <tr>
            <td class="image" style="padding-top:30px;padding-bottom:30px;"></td>
            <td class="name" style="padding-top:30px;padding-bottom:30px;"><?php echo $vouchers['description']; ?></td>
            <td class="price cclass money" style="text-align:left;left:20px;padding-top:30px;padding-bottom:30px;"><?php echo $vouchers['amount']; ?></td>
          
            <td style="padding-top:30px;padding-bottom:30px;" class="quantity"><input type="text" name="" value="1" size="1" disabled="disabled" />
              </td>
            
            <td class="total cclass money" style="text-align:left;left:20px;padding-top:30px;padding-bottom:30px;"><?php echo $vouchers['amount']; ?></td>
            <td style="padding-top:30px;padding-bottom:30px;"><a href="<?php echo $vouchers['remove']; ?>"><img src="catalog/view/theme/default/image/remove.png" alt="<?php echo $button_remove; ?>" title="<?php echo $button_remove; ?>" /></a></td>
          </tr>
          <?php } ?>
        </tbody>
      </table>
    </div>
  </form>
  <?php if ($coupon_status || $voucher_status || $reward_status || $shipping_status) { ?>
  <div class="content" style="border:1px solid black;margin-top:-16px">
  <table width="100%"><tr><td>
    <table class="radio">
      <?php if ($coupon_status) { ?>
      <tr class="highlight">
        <td><?php if ($next == 'coupon') { ?>
          <input type="radio" name="next" value="coupon" id="use_coupon" checked="checked" />
          <?php } else { ?>
          <input type="radio" name="next" value="coupon" id="use_coupon" />
          <?php } ?></td>
        <td><label for="use_coupon" style="color:gray;font-size:10pt"><?php echo $text_use_coupon; ?></label></td>
      </tr>
      <?php } ?>
      <?php if ($voucher_status) { ?>
      <tr class="highlight">
        <td><?php if ($next == 'voucher') { ?>
          <input type="radio" name="next" value="voucher" id="use_voucher" checked="checked" />
          <?php } else { ?>
          <input type="radio" name="next" value="voucher" id="use_voucher" />
          <?php } ?></td>
        <td><label for="use_voucher" style="color:gray;font-size:10pt"><?php echo $text_use_voucher; ?></label></td>
      </tr>
      <?php } ?>
      <?php if (false){//($reward_status) { ?>
      <tr class="highlight">
        <td><?php if ($next == 'reward') { ?>
          <input type="radio" name="next" value="reward" id="use_reward" checked="checked" />
          <?php } else { ?>
          <input type="radio" name="next" value="reward" id="use_reward" />
          <?php } ?></td>
        <td><label for="use_reward"><?php echo $text_use_reward; ?></label></td>
      </tr>
      <?php } ?>
      <?php if (false){//($shipping_status) { ?>
      <tr class="highlight">
        <td><?php if ($next == 'shipping') { ?>
          <input type="radio" name="next" value="shipping" id="shipping_estimate" checked="checked" />
          <?php } else { ?>
          <input type="radio" name="next" value="shipping" id="shipping_estimate" />
          <?php } ?></td>
        <td><label for="shipping_estimate"><?php echo $text_shipping_estimate; ?></label></td>
      </tr>
      <?php } ?>
    </table>

    <?php
      if($next!='voucher'){
        $next='coupon';
      }
    ?>

    <div class="cart-module">
      <div id="coupon" class="content" style="display: <?php echo ($next == 'coupon' ? 'block' : 'none'); ?>;width:500px; border:none">
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
          
          <input type="text" style="height:30px; width:320px;font-size:12pt;font-family:calibri;font-style:normal;text-transform: uppercase;background:#ebebeb;border:gray" name="coupon" value="<?php echo $coupon; ?>" />
          <input type="hidden" name="next" value="coupon" />
          &nbsp;
          <input type="submit" style="height:37px;width:150px;background-color:#999999;border:1px solid #999999; color:white; font-family: 'Roboto', Arial, Helvetica, sans-serif;font-size:9pt;font-weight:bold;" value="APPLY CODE<?php //echo $button_coupon; ?>" class="buttonToModif" />
        </form>
      </div>
      <div id="voucher" class="content" style="display: <?php echo ($next == 'voucher' ? 'block' : 'none'); ?>;width:500px; border:none">
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
          
          <input type="text" style="height:30px; width:320px;font-size:12pt;font-family:calibri;font-style:normal;text-transform: uppercase;background:#ebebeb;border:gray" name="voucher" value="<?php echo $voucher; ?>" />
          <input type="hidden" name="next" value="voucher" />
          &nbsp;
          <input type="submit" style="height:37px;width:150px;background-color:#999999;border:1px solid #999999; color:white; font-family: 'Roboto', Arial, Helvetica, sans-serif;font-size:9pt;font-weight:bold;" value="APPLY CODE<?php //echo $button_voucher; ?>" class="buttonToModif" />
        </form>
      </div>
      <div id="reward" class="content" style="display: <?php echo ($next == 'reward' ? 'block' : 'none'); ?>;">
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
          <?php echo $entry_reward; ?>&nbsp;
          <input type="text" name="reward" value="<?php echo $reward; ?>" />
          <input type="hidden" name="next" value="reward" />
          &nbsp;
          <input type="submit" value="<?php echo $button_reward; ?>" class="button  buttonToModif" />
        </form>
      </div>
      <div id="shipping" class="content" style="display: <?php echo ($next == 'shipping' ? 'block' : 'none'); ?>;">
        <p><?php echo $text_shipping_detail; ?></p>
        <table>
          <tr>
            <td><span class="required">*</span> <?php echo $entry_country; ?></td>
            <td><select name="country_id">
                <option value=""><?php echo $text_select; ?></option>
                <?php foreach ($countries as $country) { ?>
                <?php if ($country['country_id'] == $country_id) { ?>
                <option value="<?php echo $country['country_id']; ?>" selected="selected"><?php echo $country['name']; ?></option>
                <?php } else { ?>
                <option value="<?php echo $country['country_id']; ?>"><?php echo $country['name']; ?></option>
                <?php } ?>
                <?php } ?>
              </select></td>
          </tr>
          <tr>
            <td><span class="required">*</span> <?php echo $entry_zone; ?></td>
            <td><select name="zone_id">
              </select></td>
          </tr>
          <tr>
            <td><span id="postcode-required" class="required">*</span> <?php echo $entry_postcode; ?></td>
            <td><input type="text" name="postcode" value="<?php echo $postcode; ?>" /></td>
          </tr>
        </table>
        <input type="button" value="<?php echo $button_quote; ?>" id="button-quote" class="button" />
      </div>
    </div>
    
    </td>
    <td>
         <div class="cart-total" style="border:none">
    <table id="total" width="300px">
      <?php foreach ($totals as $total) { ?>
      <tr>
        <td class="labelTotal" style="text-align:left;  " width="150px"><b><?php echo ($total['title']=="Total")?"Grand Total":$total['title']; ?></b></td>
        <td class="textTotal" style="text-align:left" width="150px"><?php echo $total['text']; ?></td>
      </tr>
      <?php } ?>
    </table>

    <style>
      .textTotal, .labelTotal{
        font-family: calibri;
        font-size:12pt;


      }
    </style>
  </div>

    </td>

    </tr></table>

  </div>
  
  <?php } ?>
 
  <div class="buttons" style="border:none; margin-top:-10px; padding-bottom:40px">
    <a href="<?php echo $checkout; ?>" class="" style="margin-right:10px">
      <div class="right toTouch" style="margin-left:10px;"><?php echo $button_checkout; ?></div>
    </a>
    <a href="<?php echo $continue; ?>" class="">
      <div class="right  toTouch"><?php echo $button_shopping; ?></div>
    </a>  

    <style>
      .toTouch{
        background-color:#555555;
        border:1px solid #555555; 
        color:#ebebeb; 
        font-family: calibri;
        font-size:12pt;
        font-weight:none;
        text-align:center;
        padding:25px;
        padding-top:10px;
        padding-bottom:10px;
        margin-right:-5px;
      }
    </style>
  </div>
  <?php echo $content_bottom; ?></div>
<script type="text/javascript"><!--
$('input[name=\'next\']').bind('change', function() {
	$('.cart-module > div').hide();
	
	$('#' + this.value).show();
});
//--></script>
<?php if ($shipping_status) { ?>
<script type="text/javascript"><!--
$('#button-quote').live('click', function() {
	$.ajax({
		url: 'index.php?route=checkout/cart/quote',
		type: 'post',
		data: 'country_id=' + $('select[name=\'country_id\']').val() + '&zone_id=' + $('select[name=\'zone_id\']').val() + '&postcode=' + encodeURIComponent($('input[name=\'postcode\']').val()),
		dataType: 'json',		
		beforeSend: function() {
			$('#button-quote').attr('disabled', true);
			$('#button-quote').after('<span class="wait">&nbsp;<img src="catalog/view/theme/default/image/loading.gif" alt="" /></span>');
		},
		complete: function() {
			$('#button-quote').attr('disabled', false);
			$('.wait').remove();
		},		
		success: function(json) {
			$('.success, .warning, .attention, .error').remove();			
						
			if (json['error']) {
				if (json['error']['warning']) {
					$('#notification').html('<div class="warning" style="display: none;">' + json['error']['warning'] + '<img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>');
					
					$('.warning').fadeIn('slow');
					
					$('html, body').animate({ scrollTop: 0 }, 'slow'); 
				}	
							
				if (json['error']['country']) {
					$('select[name=\'country_id\']').after('<span class="error">' + json['error']['country'] + '</span>');
				}	
				
				if (json['error']['zone']) {
					$('select[name=\'zone_id\']').after('<span class="error">' + json['error']['zone'] + '</span>');
				}
				
				if (json['error']['postcode']) {
					$('input[name=\'postcode\']').after('<span class="error">' + json['error']['postcode'] + '</span>');
				}					
			}
			
			if (json['shipping_method']) {
				html  = '<h2><?php echo $text_shipping_method; ?></h2>';
				html += '<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">';
				html += '  <table class="radio">';
				
				for (i in json['shipping_method']) {
					html += '<tr>';
					html += '  <td colspan="3"><b>' + json['shipping_method'][i]['title'] + '</b></td>';
					html += '</tr>';
				
					if (!json['shipping_method'][i]['error']) {
						for (j in json['shipping_method'][i]['quote']) {
							html += '<tr class="highlight">';
							
							if (json['shipping_method'][i]['quote'][j]['code'] == '<?php echo $shipping_method; ?>') {
								html += '<td><input type="radio" name="shipping_method" value="' + json['shipping_method'][i]['quote'][j]['code'] + '" id="' + json['shipping_method'][i]['quote'][j]['code'] + '" checked="checked" /></td>';
							} else {
								html += '<td><input type="radio" name="shipping_method" value="' + json['shipping_method'][i]['quote'][j]['code'] + '" id="' + json['shipping_method'][i]['quote'][j]['code'] + '" /></td>';
							}
								
							html += '  <td><label for="' + json['shipping_method'][i]['quote'][j]['code'] + '">' + json['shipping_method'][i]['quote'][j]['title'] + '</label></td>';
							html += '  <td style="text-align: right;"><label for="' + json['shipping_method'][i]['quote'][j]['code'] + '">' + json['shipping_method'][i]['quote'][j]['text'] + '</label></td>';
							html += '</tr>';
						}		
					} else {
						html += '<tr>';
						html += '  <td colspan="3"><div class="error">' + json['shipping_method'][i]['error'] + '</div></td>';
						html += '</tr>';						
					}
				}
				
				html += '  </table>';
				html += '  <br />';
				html += '  <input type="hidden" name="next" value="shipping" />';
				
				<?php if ($shipping_method) { ?>
				html += '  <input type="submit" value="<?php echo $button_shipping; ?>" id="button-shipping" class="button" />';	
				<?php } else { ?>
				html += '  <input type="submit" value="<?php echo $button_shipping; ?>" id="button-shipping" class="button" disabled="disabled" />';	
				<?php } ?>
							
				html += '</form>';
				
				$.colorbox({
					overlayClose: true,
					opacity: 0.5,
					width: '600px',
					height: '400px',
					href: false,
					html: html
				});
				
				$('input[name=\'shipping_method\']').bind('change', function() {
					$('#button-shipping').attr('disabled', false);
				});
			}
		}
	});
});
//--></script> 
<script type="text/javascript"><!--
$('select[name=\'country_id\']').bind('change', function() {
	$.ajax({
		url: 'index.php?route=checkout/cart/country&country_id=' + this.value,
		dataType: 'json',
		beforeSend: function() {
			$('select[name=\'country_id\']').after('<span class="wait">&nbsp;<img src="catalog/view/theme/default/image/loading.gif" alt="" /></span>');
		},
		complete: function() {
			$('.wait').remove();
		},			
		success: function(json) {
			if (json['postcode_required'] == '1') {
				$('#postcode-required').show();
			} else {
				$('#postcode-required').hide();
			}
			
			html = '<option value=""><?php echo $text_select; ?></option>';
			
			if (json['zone'] != '') {
				for (i = 0; i < json['zone'].length; i++) {
        			html += '<option value="' + json['zone'][i]['zone_id'] + '"';
	    			
					if (json['zone'][i]['zone_id'] == '<?php echo $zone_id; ?>') {
	      				html += ' selected="selected"';
	    			}
	
	    			html += '>' + json['zone'][i]['name'] + '</option>';
				}
			} else {
				html += '<option value="0" selected="selected"><?php echo $text_none; ?></option>';
			}
			
			$('select[name=\'zone_id\']').html(html);
		},
		error: function(xhr, ajaxOptions, thrownError) {
			alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
		}
	});
});

$('select[name=\'country_id\']').trigger('change');
//--></script>
<?php } ?>
<?php echo $footer; ?>


<script type="text/javascript">
  $(function(){
      
      $("#arrowUpQty").click(function(){
        $(this).parent().parent().find(':text').each(function(){
          var Total = parseInt($(this).val()) + 1;
          $(this).val(Total);
        });          
      });

      $("#arrowDownQty").click(function(){
        $(this).parent().parent().find(':text').each(function(){
          var Total = parseInt($(this).val()) - 1;
          if(Total>0){
            $(this).val(Total);
          }
        });
      });

  });
</script>