<?php if ($error_warning) { ?>
<div class="warning"><?php echo $error_warning; ?></div>
<?php } ?>

<?php if ($shipping_methods) { ?>
<p style="color:#333;margin-left:12px"><?php //echo $text_shipping_method; ?>
Refer to our Delivery <a alt="Terms & Conditions" href="http://localhost/FIV3/index.php?route=information/information/info&information_id=5" class="colorbox cboxElement" style="color:black;text-decoration:underline">Terms & Conditions</a> to find out more about the duration of delivery upon receiving of order and payment.        

</p>
<table class="radio">
  <?php foreach ($shipping_methods as $shipping_method) { ?>
  <tr>
    <td colspan="3"><b><?php echo $shipping_method['title']; ?></b></td>
  </tr>
  <?php if (!$shipping_method['error']) { ?>
  <?php  foreach ($shipping_method['quote'] as $index => $quote) { 
    if($index=='flat'){
    ?>
  <tr class="highlight">
    <td><?php if ($quote['code'] == $code || !$code) { ?>
      <?php $code = $quote['code']; ?>
      <input type="radio" name="shipping_method" value="<?php echo $quote['code']; ?>" id="<?php echo $quote['code']; ?>" checked="checked" />
      <?php } else { ?>
      <input type="radio" name="shipping_method" value="<?php echo $quote['code']; ?>" id="<?php echo $quote['code']; ?>" />
      <?php } ?></td>
    <td><label for="<?php echo $quote['code']; ?>"  style="color:#666666;font-family: calibri;font-size:11pt;font-weight: bold;color:#333"><?php echo str_replace("[XXXXX]",$quote['text'],$quote['title']); ?></label></td>
    <td style="text-align: right; color:#666666;font-family:calibri;font-size:11pt;"><label for="<?php echo $quote['code']; ?>" style="display:none"><?php echo $quote['text']; ?></label> &nbsp; </td>
  </tr>
  <tr>
      <td></td>
      <td colspan="2"  style="height:70px">
        <table id="setAddTable" style="width:700px">
          <tr>
            <td id="setInAddress" style="background-color:#d5d5d5;border-top:1px solid #b5b5b5;border-left:1px solid #b5b5b5;border-right:1px solid #b5b5b5;"></td>
          </tr>
          <tr>
            <td style="border-left:1px solid #b5b5b5;border-right:1px solid #b5b5b5;border-bottom:1px solid #b5b5b5;">&nbsp;</td>
          </tr>
        </table>
      </td>
  </tr>
  <?php }else { ?>
<tr class="highlight">
    <td><?php if ($quote['code'] == $code || !$code) { ?>
      <?php $code = $quote['code']; ?>
      <input type="radio" name="shipping_method" value="<?php echo $quote['code']; ?>" id="<?php echo $quote['code']; ?>" checked="checked" />
      <?php } else { ?>
      <input type="radio" name="shipping_method" value="<?php echo $quote['code']; ?>" id="<?php echo $quote['code']; ?>" />
      <?php } ?></td>
    <td><label for="<?php echo $quote['code']; ?>"  style="color:#666666;font-family: calibri;font-size:11pt;font-weight: bold;color:#333"><?php echo str_replace("[XXXXX]",$quote['text'],$quote['title']); ?></label></td>
    <td style="text-align: right; color:#666666;font-family:calibri;font-size:11pt;"><label for="<?php echo $quote['code']; ?>" style="display:none"><?php echo $quote['text']; ?></label> &nbsp; </td>
  </tr>
  <?php  } } ?>
  <?php } else { ?>
  <tr>
    <td colspan="3"><div class="error"><?php echo $shipping_method['error']; ?></div></td>
  </tr>
  <?php } ?>
  <?php } ?>
</table>
<br />
<?php } ?>
  

<span style="color:#666666;font-family:calibri;font-size:11pt">
<strong  style="margin-left:37px">Note*</strong>
- Customers that choose Made to Measure option, your shirt will be delivered after measurement is taken at the shop.
</span>

<b style="display:none"><?php echo $text_comments; ?></b>
<textarea name="comment" rows="8" style="width: 98%;display:none"><?php echo $comment; ?></textarea>
<br />
<br />
<div class="buttons">
  <div class="right">
    <input type="button" value="<?php echo $button_continue; ?>" id="button-shipping-method" class="button" />
  </div>
</div>

<style type="text/css">
  #setAddTable{
    border-collapse: collapse;
    border:1px solid #b5b5b5;
  }
</style>

<script type="text/javascript"><!--
$('.colorbox').colorbox({
  width: 640,
  height: 480
});
//-->

/*$(function(){
 

  alert($("#shipping-existing select[name='address_id']").find("option:selected").text());
});
*/
</script> 
