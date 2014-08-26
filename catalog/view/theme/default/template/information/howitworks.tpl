<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>



<link href="../FIV3/css/jquery-ui.css" rel="stylesheet">
<script src="../FIV3/js/jquery-ui.js"></script>

<script>
    $(function(){
      $( "#tabs" ).tabs();
    });
</script>


<div id="content"><?php echo $content_top; ?>
  <div class="breadcrumb">
    <?php //foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php //echo $breadcrumb['separator']; ?><a href="<?php //echo $breadcrumb['href']; ?>"><?php //echo $breadcrumb['text']; ?></a>
    <?php //} ?>
  </div>
  <table cellpadding="0" cellspacing="0" class="headingtitle" style="margin: 20px auto 10px;width: 930px; min-width: 930px">
          <tr>
              <td><hr /></td>
              <td width="200px"><h1>HOW IT WORKS</h1></td>
              <td><hr /></td>
            </tr>
        </table>
    
    <table align="center"><tr><td>
 <div class="wrapper" style="width: 930px; min-width: 930px" align="center">
    <h1 style="color: #636363; text-align:center; margin: 0 0 20px 0">FAST AND EASY WAY TO GET SUITED UP!</h1>
        <div id="tabs">
            <div style="text-align:center">
                <ul id="ulSelection">
                    <li style="border:none"><a href="#tabs-1" style="color:#636363">1. Select your style</a></li>
                    <li style="border:none"><a href="#tabs-2">2. Customize your style</a></li>
                    <li style="border:none"><a href="#tabs-3">3. Checkout</a></li>
                </ul>
            </div>
            <div id="tabs-1">
              <table cellpadding="0" cellspacing="0" width="100%">
                  <tr>
                      <td style="padding: 50px 50px 0 0;">
                          <div style="width:485px;border-right: 1px solid #636363;padding: 30px 50px 30px 0; vertical-align: middle; color: #636363; line-height:20px">
                              Select our full selection from suits, shirts, pants and accessories to craft your looks.
                            </div>
                        </td>
                      <td><img src=".../../image/data/nImage/img_hiw01.jpg" style="float:right"/></td>

                    </tr>
                </table>
            </div>
            <div id="tabs-2">
              <table cellpadding="0" cellspacing="0" width="100%">
                  <tr>
                      <td style="padding: 50px 50px 0 0;">
                          <div style="width:485px;border-right: 1px solid #636363;padding: 30px 50px 30px 0; vertical-align: middle; color: #636363; line-height:20px">
                              Have a say in your suits, select your choice of details you want to have for your suits from the lapels, even for the buttons when you customize with us.
              </div>
                        </td>
                      <td><img src=".../../image/data/nImage/img_hiw02.jpg" style="float:right"/></td>
                    </tr>
                </table>
            </div>
            <div id="tabs-3">
              <table cellpadding="0" cellspacing="0" width="100%">
                  <tr>
                      <td style="padding: 50px 50px 0 0;">
                          <div style="width:485px;border-right: 1px solid #636363;padding: 30px 50px 30px 0; vertical-align: middle; color: #636363; line-height:20px">
                              Once you are happy with your suit, simply proceed to checkout with step by step guidance provided, or if you have booked an appointment, we will contact you shortly.
              </div>
                        </td>
                      <td><img src=".../../image/data/nImage/img_hiw03.jpg" style="float:right"/></td>
                    </tr>
                </table>
            </div>
        </div>
      <table cellpadding="0" cellspacing="0" class="headingtitle" style="margin: 70px auto 10px;width: 930px; min-width: 930px">
          <tr>
              <td><hr /></td>
              <td width="200px"><h1>OUR PROMISE</h1></td>
              <td><hr /></td>
            </tr>
        </table>
        <div style="text-align: center;width: 850px; line-height:25px; margin:0 auto">Donec id orci dictum, molestie sem nec, tempor leo. Proin sed leo nec orci venenatis convallis. Donec lacinia hendrerit viverra. Vivamus euismod, purus nec blandit interdum, magna enim sagittis justo, vel luctus augue nisi vulputate ante. Curabitur nibh enim, faucibus et arcu at, pretium dignissim nulla. Aenean imperdiet fringilla tellus, quis tincidunt lectus mattis nec. Donec vitae lectus felis. Sed vitae sem nulla. Donec eget erat vel sapien ornare sagittis luctus eu ipsum. Donec ac odio non orci elementum aliquet eu in mauris. Nam eu aliquam nisi. Curabitur eu consectetur metus. Donec eleifend lorem vel leo dapibus, sit amet luctus mi aliquet. Morbi suscipit luctus mi. Cras risus lectus, volutpat ut luctus eu, molestie ut eros.</div>
    </div>
  </td></tr></table>
  <!--div class="buttons">
    <div class="right"><a href="<?php //echo $continue; ?>" class="button"><?php //echo $button_continue; ?></a></div>
  </div-->

  <script type="text/javascript">
  $(function(){
    $("#ulSelection").children().children().click(function(){
      $(this).parent().parent().find('a').css('color','#d7d7d7');
      $(this).css('color','#636363');
    });
  });
  </script>

  <?php echo $content_bottom; ?></div>
<?php echo $footer; ?>