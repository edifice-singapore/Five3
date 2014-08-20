<?php if (!isset($redirect)) { ?>
<div class="checkout-product">
  <table style="border:none">
    <thead>
      <tr>
        <td style="width:250px;text-align:left;background-color:#E0E0E0;padding:15px;color:black"> Item </td>
        <td class="name" style="width:300px;text-align:left;background-color:#E0E0E0;color:black"><?php echo $column_name; ?></td>
        <td class="price" style="text-align:left;background-color:#E0E0E0;color:black"><?php echo $column_price; ?></td>
        <td class="quantity" style="text-align:left;background-color:#E0E0E0;color:black"><?php echo $column_quantity; ?></td>
        
        <td class="total" style="text-align:left;background-color:#E0E0E0;color:black"><?php echo $column_total; ?> Amount</td>
      </tr>
    </thead>
    <tbody>
      <?php  foreach ($products as $product) { ?>  


      <?php if($product['recurring']): ?>
        <tr>
            <td colspan="6"  style="border-bottom:1px solid black"><image src="catalog/view/theme/default/image/reorder.png" alt="" title="" style="float:left;" /><span style="float:left;line-height:18px; margin-left:10px;"> 
                <strong><?php echo $text_recurring_item ?></strong>
                <?php echo $product['profile_description'] ?>
            </td>
        </tr>
      <?php endif; ?>
      <tr>
        <td style="border-bottom:1px solid black"><img src="<?php echo $product['image']; ?>"></td>
        <td class="name"  style="text-align:left;border-bottom:1px solid black" >
        <small style="padding-left: 2px; font-size:15pt;font-family:calibri"> <?php echo $product['name']; ?></small>
          <?php foreach ($product['option'] as $option) { 
            if($option['name'] != "WISH TO INCLUDE INITIAL?"){
            ?>
          <br />
          &nbsp;<small style="font-size:12pt;font-family:calibri;color:gray"><?php echo $option['name']; ?> - <?php echo $option['value']; ?></small>
            <?php if($option['name']=='MONOGRAM'){ ?>
              <br />
              &nbsp;
              <small style="font-size:11pt;font-family:calibri;color:black; font-style:italic;font-weight:bold">Addtionional SGD$10.00 Service Fee</small>
            <?php } ?>

            
          <?php } }?>
          <?php if($product['recurring']): ?>
          <br />
          &nbsp;<small style="font-size:12pt;font-family:calibri;color:gray"><?php echo $text_payment_profile ?>: <?php echo $product['profile_name'] ?></small>
          <?php endif; ?>
        </td>
        <td class="price"  style="text-align:left;font-family:calibri;padding-top:30px;padding-bottom:30px;color:gray;font-size:13pt;border-bottom:1px solid black"><?php echo $product['price']; ?></td>
        <td class="quantity"  style="text-align:left;font-family:calibri;padding-top:30px;padding-bottom:30px;color:gray;font-size:13pt;border-bottom:1px solid black"><?php echo $product['quantity']; ?></td>
        <td class="total"  style="text-align:left;font-family:calibri;padding-top:30px;padding-bottom:30px;color:gray;font-size:13pt;border-bottom:1px solid black"><?php echo $product['total']; ?></td>
      </tr>
      <?php } ?>
      <?php foreach ($vouchers as $voucher) { ?>
      <tr>
        <td style="border-bottom:1px solid black"></td>
        <td class="name" style="text-align:left;font-family:calibri;padding-top:30px;padding-bottom:30px;color:gray;font-size:13pt;border-bottom:1px solid black"><?php echo $voucher['description']; ?></td>
         <td class="price" style="text-align:left;font-family:calibri;padding-top:30px;padding-bottom:30px;color:gray;font-size:13pt;border-bottom:1px solid black"><?php echo $voucher['amount']; ?></td>
        <td class="quantity" style="text-align:left;font-family:calibri;padding-top:30px;padding-bottom:30px;color:gray;font-size:13pt;border-bottom:1px solid black">1</td>
       
        <td class="total" style="text-align:left;font-family:calibri;padding-top:30px;padding-bottom:30px;color:gray;font-size:13pt;border-bottom:1px solid black"><?php echo $voucher['amount']; ?></td>
      </tr>
      <?php } ?>
    </tbody>
    </table>
    <div style="border:1px solid black; margin-top:-21px">
    
      <table style="width:300px;margin-left:830px;border:none">
        <?php //var_dump($totals); 
        $arrOrder = array(0,2,1,3);

        foreach ($arrOrder as $i ){
       // foreach ($totals as $total) {  
          // echo $i;
            $word = ($i==2)? "Delivery": $totals[$i]['title'];

            if($i==3){
              $word = "Grand Total";
            }

          ?>
        
        <tr>
          <td class="price" style="text-align:left;border:none;font-family:calibri;font-size:13pt"><b><?php echo $word;?></b></td>
          <td class="total" style="text-align:left;border:none;font-family:calibri;font-size:13pt"><?php echo $totals[$i]['text']; ?></td>
        </tr>
        <?php } ?>
      </table>
    </div>
  
</div>
<br><br>
<table>
<tr>
<td >
<div class="payment"  style="width:550px"><?php echo $payment; ?></div>
</td><td valign="top">
<div style="width: 550px;margin-left:90px">
            
            <table cellpadding="0" cellspacing="0" style="">
                <tr>
                    
                    <td width="47%">
                        <span style="color: #000; font-weight:600;font-size:12pt">MADE TO MEASURE APPOINTMENT</span><br />
                        <br />
                         <span style="font-style:italic;color:#636363;font-size:11pt">*Select a date and time to book an appointment to get you measured up.<br> <span style="color: #000; font-weight: 600">All made to measure is subjected to a SGD $10.00 service fee.</span></span><br />
                        <br />
                        <input type="text" name="datePicked" class="date greytextfield" id="datePicked" placeholder="DD.MM.YY" style="height:20px;width:200px"/>
                        <img  style="margin-top:1px;margin-left:2px;position:absolute" src="http://fiv3.com.sg/dev1/FIV3/image/data/nImage/ico_cal.png" />
                        <div class="clear"></div><br />
                        <select name="hour" id="hour" style="width:70px; float: left; margin-right:10px;">
                              <option value="hour">HH</option>
                              <option value="hour01">01</option>
                              <option value="hour02">02</option>
                              <option value="hour03">03</option>
                              <option value="hour04">04</option>
                              <option value="hour05">05</option>
                              <option value="hour06">06</option>
                              <option value="hour07">07</option>
                              <option value="hour08">08</option>
                              <option value="hour09">09</option>
                              <option value="hour10">10</option>
                              <option value="hour11">11</option>
                              <option value="hour12">12</option>
                        </select>
                        <select name="minute" id="minute" style="width:70px; float: left; margin-right:10px;">
                              <option value="min">MIN</option>
                              <option value="min00">00</option>
                              <option value="min15">15</option>
                              <option value="min30">30</option>
                              <option value="min45">45</option>
                        </select>
                        <select name="ampm" id="ampm" style="width:70px; float: left; margin-right:10px;">
                              <option value="am">AM</option>
                              <option value="pm">PM</option>
                        </select><br /><br />
                        <div class="clear"></div><br />
                        <span style="color: #000; font-weight:600;font-size:10pt">Our Operating Hours</span><br />
                        <span style="color:#636363;font-size:10pt">11am - 6pm, Monday to Saturday.<br />
                        (Closed on Sunday and public holiday)</span>
                    </td>
                </tr>
            </table>
            
        </div>
      </td>
    </tr>
  </table>
<script type="text/javascript">
  $(function(){
    $(".payment .content").css({"border":"none","font-family":"calibri","font-size":"12pt","color":"#666666"});
$(".payment h2").css({"margin-left":"10px","text-transform":"uppercase","color": "#000", "font-weight":"600","font-size":"12pt"});
  });

</script>
<?php } else { ?>
<script type="text/javascript"><!--
location = '<?php echo $redirect; ?>';
//--></script> 
<?php } ?>