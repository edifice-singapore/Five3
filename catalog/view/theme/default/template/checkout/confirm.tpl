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
      <?php foreach ($products as $product) { ?>  
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
          <?php foreach ($product['option'] as $option) { ?>
          <br />
          &nbsp;<small style="font-size:12pt;font-family:calibri;color:gray"><?php echo $option['name']; ?> - <?php echo $option['value']; ?></small>
          <?php } ?>
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
    <div> terms and agreement</div>
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
<div class="payment"  style="width:550px"><?php echo $payment; ?></div>
<?php } else { ?>
<script type="text/javascript"><!--
location = '<?php echo $redirect; ?>';
//--></script> 
<?php } ?>