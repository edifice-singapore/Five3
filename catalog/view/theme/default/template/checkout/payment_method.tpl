<?php if ($error_warning) { ?>
<div class="warning"><?php echo $error_warning; ?></div>
<?php } ?>
<?php if ($payment_methods) { ?>

<table class="radio">
<tr class="highlight">
  <?php var_dump($payment_methods); foreach ($payment_methods as $index => $payment_method) {
    if($index =='pp_express'){
    ?>
  
    <td><?php if ($payment_method['code'] == $code || !$code) { ?>
      <?php $code = $payment_method['code']; ?>
      <input type="radio" name="payment_method" value="<?php echo $payment_method['code']; ?>" id="<?php echo $payment_method['code']; ?>" checked="checked" />
      <?php } else { ?>
      <input type="radio" name="payment_method" value="<?php echo $payment_method['code']; ?>" id="<?php echo $payment_method['code']; ?>" />
      <?php } ?></td>
    <td  width="200px"><img src="http://fiv3.com.sg/dev1/FIV3/image/data/nImage/ico_paypal.jpg"></td>
  <?php }else{?>

    <td width="25px"><?php if ($payment_method['code'] == $code || !$code) { ?>
      <?php $code = $payment_method['code']; ?>
      <input type="radio" name="payment_method" value="<?php echo $payment_method['code']; ?>" id="<?php echo $payment_method['code']; ?>" checked="checked" />
      <?php } else { ?>
      <input type="radio" name="payment_method" value="<?php echo $payment_method['code']; ?>" id="<?php echo $payment_method['code']; ?>" />
      <?php } ?></td>
    <td><label for="<?php echo $payment_method['code']; ?>" style="vertical-align:middle; font-size: 18px; color: #636363;font-weight: 580;font-family:calibri;text-transform: uppercase;"><?php echo $payment_method['title']; ?></label></td>
 

    <?php } } ?>
     </tr>
</table>
<br />
<?php } ?>
<b style="display:none"><?php echo $text_comments; ?></b>
<textarea name="comment" rows="8" style="width: 98%;display:none" id="paymentTextArea"><?php echo $comment; ?></textarea>
<br />
<br />
<?php if ($text_agree) { ?>
<div class="buttons">
  <div class="right" style="color:#666666">
  
    <?php if ($agree) { ?>
    <input type="checkbox" name="agree" value="1" checked="checked" />
    <?php } else { ?>
    <input type="checkbox" name="agree" value="1" />
    <?php } ?> <?php echo $text_agree; ?>
    <input type="button" value="<?php echo $button_continue; ?>" id="button-payment-method" class="button" />
  </div>
</div>
<?php } else { ?>
<div class="buttons">
  <div class="right">
    <input type="button" value="<?php echo $button_continue; ?>" id="button-payment-method" class="button" />
  </div>
</div>
<?php } ?>
<script type="text/javascript"><!--
$('.colorbox').colorbox({
  width: 640,
  height: 480
});
//--></script> 