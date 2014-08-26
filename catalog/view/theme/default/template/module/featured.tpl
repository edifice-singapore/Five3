<div class="box">
  <?php //echo $heading_title; ?>

  <table cellpadding="0" cellspacing="0" class="headingtitle" style="margin: 20px auto 10px;width: 930px; min-width: 930px">
          <tr>
              <td><hr /></td>
              <td width="200px"><h1><?php echo  $heading_title; ?></h1></td>
              <td><hr /></td>
            </tr>
        </table>

  <div class="box-content" style="border:none;background-color:#fafafa">
    <div   align="center" class="box-product">
      <?php foreach ($products as $product) { ?>
      <div style="width:300px;padding-left:20px;padding-right:20px">
        <?php if ($product['thumb']) { ?>
        <div class="image"><a href="<?php echo $product['href']; ?>"><img style="border:none" src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" /></a></div>
        <?php } ?>
        <div class="name"><a style="color:black; font-family:calibri;font-size:12pt;font-weight:normal;" href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
        <?php if ($product['price']) { ?>
        <div class="price" style="color:gray; font-family:calibri;font-size:10pt;font-weight:normal;">
          <?php if (!$product['special']) { ?>
          <?php echo $product['price']; ?>
          <?php } else { ?>
          <span class="price-old" ><?php echo $product['price']; ?></span> <br/>
          <span class="price-new" style="color:gray"><?php echo $product['special']; ?></span>
          <?php } ?>
        </div>
        <?php } ?>
        <?php if ($product['rating']) { ?>
        <div class="rating"><img src="catalog/view/theme/default/image/stars-<?php echo $product['rating']; ?>.png" alt="<?php echo $product['reviews']; ?>" /></div>
        <?php } ?>
        <div class="cart" style="display:none"><input type="button" value="<?php echo $button_cart; ?>" onclick="addToCart('<?php echo $product['product_id']; ?>');" class="button" /></div>
      </div>
      <?php } ?>
    </div>
  </div>
</div>
