<div class="left" style="width:350px;margin-left:220px">
 <b style="color:#333333;font-size:12pt;font-weight:90;font-family:calibri "><?php echo $text_new_customer; ?></b>
 <br><br>
  <div style="width:320px;border:1px solid black;padding:15px;height:160px;padding-top:20px">
    <label for="register">
      <?php if ($account == 'register') { ?>
      <input type="radio" name="account" value="register" id="register" checked="checked" style="display:none"/>
      <?php } else { ?>
      <input type="radio" name="account" value="register" id="register"  style="display:none"/>
      <?php } ?>
      <b style="color:#666666;font-size:10pt;font-weight: 700"><?php echo $text_register; ?></b></label>
    <br />
    <?php if ($guest_checkout) { ?>
    <label for="guest">
      <?php if ($account == 'guest') { ?>
      <input type="radio" name="account" value="guest" id="guest" checked="checked"  style="display:none"/>
      <?php } else { ?>
      <input type="radio" name="account" value="guest" id="guest"  style="display:none"/>
      <?php } ?>
      <b><?php echo $text_guest; ?></b></label>
    <br />
    <?php } ?>
    <br />
    <p style="color:#666666;font-size:10pt;padding-right:20px"><?php echo $text_register_account; ?></p>
    <input type="button" value="<?php echo $button_continue; ?>" id="button-account" class="button" />
    <br />
    <br />

  </div>
</div>
<div id="login" class="right" style="width:350px;margin-right:220px">
  <b style="color:#333333;font-size:12pt;font-weight:90;font-family:calibri "><?php echo $text_returning_customer; ?></b>
   <br><br>
  <div style="width:320px;border:1px solid black;padding:15px;height:160px;padding-top:20px">
    <b style="color:#666666;font-size:10pt;font-weight: 700"><?php echo $text_i_am_returning_customer; ?></b>
    <br><br>
    <input type="text" name="email" placeholder="EMAIL ADDRESS" value="" class="greytextfield"  style="border:none;height:25px;padding:5px;background-color:#ebebeb;color:#666666"/>
    <br />
    <input type="password" name="password" placeholder="PASSWORD" value="" class="greytextfield"  style="border:none;height:25px;padding:5px;background-color:#ebebeb;color:#666666"/>
    <br /><br />
    <a href="<?php echo $forgotten; ?>" style="color:#666666;text-decoration:none;text-transform: uppercase;font-size:9pt"><?php //echo $text_forgotten; ?>
FORGOT YOUR PASSWORD</a><br />
    <br />
    <input type="button" value="<?php echo $button_login; ?>" id="button-login" class="button" /><br />
   
  </div>
</div>

<style type="text/css">
  .greytextfield{
  background-color:#ebebeb;
  border:0;
  width: 95%;
  padding: 5px 11px;
}

</style>