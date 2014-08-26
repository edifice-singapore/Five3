<!DOCTYPE html>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<head>
<meta charset="UTF-8" />
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content="<?php echo $keywords; ?>" />
<?php } ?>
<?php if ($icon) { ?>
<link href="<?php echo $icon; ?>" rel="icon" />
<?php } ?>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/stylesheet.css" />
<?php foreach ($styles as $style) { ?>
<link rel="<?php echo $style['rel']; ?>" type="text/css" href="<?php echo $style['href']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script type="text/javascript" src="catalog/view/javascript/jquery/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-1.8.16.custom.min.js"></script>
<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/ui/themes/ui-lightness/jquery-ui-1.8.16.custom.css" />
<script type="text/javascript" src="catalog/view/javascript/common.js"></script>
<?php foreach ($scripts as $script) { ?>
<script type="text/javascript" src="<?php echo $script; ?>"></script>



<?php } ?>
<!--[if IE 7]> 
<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/ie7.css" />
<![endif]-->
<!--[if lt IE 7]>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/ie6.css" />
<script type="text/javascript" src="catalog/view/javascript/DD_belatedPNG_0.0.8a-min.js"></script>
<script type="text/javascript">
DD_belatedPNG.fix('#logo img');
</script>
<![endif]-->
<?php if ($stores) { ?>
<script type="text/javascript"><!--
$(document).ready(function() {
<?php foreach ($stores as $store) { ?>
$('body').prepend('<iframe src="<?php echo $store; ?>" style="display: none;"></iframe>');
<?php } ?>
});
//--></script>
<?php } ?>
<?php echo $google_analytics; ?>
</head>
<body style="background-color:#fafafa">
<div id="container" style="width:1200px">
<div id="header" style="height:140px; top:-15px">

  <?php if ($logo) { ?>
  <div id="logo" align="center"><a href="<?php echo $home; ?>" style="text-decoration:none;font-size:50pt;color:black;"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" /> </a></div>

  <style type="text/css">
    #logo{
      text-align:center;
      padding-left:41%;
      height:80px;
      color:black;
    }
  </style>
  <?php } ?>
  <?php echo $language; ?>
  <?php //echo $currency; ?>
  <!--div id="search">
    <div class="button-search"></div>
    <input type="text" name="search" placeholder="<?php //echo $text_search; ?>" value="<?php //echo $search; ?>" />
  </div-->
  <div id="welcome" class="joinUs" style="right:10px;top:38pt; color:#606060;">
    <?php if (!$logged) { 
        $linkWise  = explode(' | ',$text_welcome);
        $text_welcome = implode('|',array_reverse($linkWise)); 
    ?>

    <?php echo $text_welcome; ?>
    <?php } else { ?><a style="text-decoration:none;color:#606060;"  href="<?php echo $account; ?>">
    <?php echo ucwords($text_logged); ?></a>
    <?php } ?>
    
      <a href="<?php echo $shopping_cart; ?>"><?php echo $cart; ?></a>
  </div>


  <style>
    .joinUs{
      text-decoration:none;
      font-size:9pt;
      font-family:arial;
      font-weight: bold;
      color:black;
    }
  </style>

  <div class="links upperLinks" align="center">
    <a class="subUpLinks"  style="border:none;color:gray; font-size:13pt;margin-left:1.3%" href="http://localhost/FIV3/index.php?route=information/information&information_id=4">ABOUT&nbsp; </a>

    
  <a class="subUpLinks clsShop"  id="idShop" style="border: medium none; color: gray; font-size: 13pt; margin-left: 77px;width:70px">SHOP&nbsp</a>
  

    <a class="subUpLinks" style="border:none;color:gray; font-size:13pt;margin-left:7%" href="<?php echo $wishlist; ?>" id="wishlist-total"><?php echo strtoupper($text_wishlist); ?>&nbsp;</a>

    <a class="subUpLinks" style="border:none;color:gray; font-size:13pt;margin-left:7%"  href="<?php echo $account; ?>"><?php echo strtoupper($text_account); ?>&nbsp;</a>

    <a class="subUpLinks" style="border:none;color:gray; font-size:13pt;margin-left:7%"  href="<?php echo $shopping_cart; ?>"><?php echo strtoupper($text_shopping_cart); ?>&nbsp;</a>

    <a class="subUpLinks" style="border:none;color:gray; font-size:13pt;margin-left:7%"  href="<?php echo $checkout; ?>"><?php echo strtoupper($text_checkout); ?>&nbsp;</a>

    <a class="subUpLinks" style="border:none;color:gray; font-size:13pt;margin-left:4%"  href="http://localhost/FIV3/index.php?route=information/howitworks">HOW IT WORKS&nbsp;</a>
  </div>

   <div id="hoverListCategory" style="float:left;width:150px;top:140px;position:absolute;left:14.5%;border-top:1px solid black">
    <?php foreach ($categories as $category) { ?>
    <div class="msHover" style="padding-left:15px;padding-right:60%;padding-top: 5px ; padding-bottom:5px;">
      <?php if(count($category['children'])==0) { ?>
        <a href="<?php echo $category['href']; ?>" style="text-decoration:none;color:#333;"><?php echo $category['name']; ?></a>
      <?php }else{ ?>
        <a href="<?php echo $category['children'][0]['href']; ?>" style="text-decoration:none;color:#333;"><?php echo $category['name']; ?></a>
      <?php } ?>
    </div>
    <?php } ?>
  </div>

<style>
    #hoverListCategory{
      display:none;
    }

    .msHover:hover{

      background-color: none;
    }

    .msHover:hover{

      background-color: white;
    }

    .upperLinks{

      width:95%;
      border-bottom:1px solid black;
      left:2%;
    }

    .subUpLinks{
      font-family: calibri;
      border:none;
    }

    .subUpLinks:hover{
      color:red;

    }

</style>

<script>
  $(function(){
    $(".subUpLinks").hover(function(){
      $(this).css({'color':'white', 'background-color':'black'});
    },function(){
      $(this).css({'color':'gray', 'background-color':'#fafafa'});
    });

    $("#idShop").hover(function(){
      $("#hoverListCategory").css({'display':'block'});
    },function(){
      $("#hoverListCategory").css({'display':'none'});
    });

    $("#hoverListCategory").hover(function(){
      $("#hoverListCategory").css({'display':'block'});
      $("#idShop").css({'color':'white', 'background-color':'black'});
    },function(){
      $("#hoverListCategory").css({'display':'none'});
      $("#idShop").css({'color':'gray', 'background-color':'#fafafa'});
    });

  });
</script>

</div>
<?php if ($categories) { ?>
<div id="menu" style="width:150px;border:1px solid black;display:none">
  <ul>
    <?php foreach ($categories as $category) { ?>
    <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
      <?php if ($category['children']) { ?>
      <div>
        <?php for ($i = 0; $i < count($category['children']);) { ?>
        <ul>
          <?php $j = $i + ceil(count($category['children']) / $category['column']); ?>
          <?php for (; $i < $j; $i++) { ?>
          <?php if (isset($category['children'][$i])) { ?>
          <li><a href="<?php echo $category['children'][$i]['href']; ?>"><?php echo $category['children'][$i]['name']; ?></a></li>
          <?php } ?>
          <?php } ?>
        </ul>
        <?php } ?>
      </div>
      <?php } ?>
    </li>
    <?php } ?>
  </ul>
</div>

<div>
<?php
 
  $hrefforback = "";
  //var_dump($categories[0]);
  if(isset($_GET['path'])){
    //echo $_GET['path'].'<br>';
    $explodedPath = explode("_",$_GET['path']);
    foreach($categories as $cat){
      $explodedCategories = explode("path=",$cat['href']);

      if($explodedPath[0] == $explodedCategories[1]){
          //echo $cat['name']."<br>";
        ?>
       
<div style="display:<?php echo (isset($_GET['product_id']))? "none": "block";?>">

<table cellpadding="0" cellspacing="0" class="headingtitle" style="margin: 20px auto 10px;width: 930px; min-width: 930px">
          <tr>
              <td><hr /></td>
              <td width="200px"><h1><?php echo $cat['name']; ?></h1></td>
              <td><hr /></td>
            </tr>
        </table>


        
      <div align="center">
      <?php
          foreach($cat['children'] as $catChildren){

          $explodedChildren = explode("path=",$catChildren['href']);
          if($_GET['path'] == $explodedChildren[1]) {
            //echo "current = ".$catChildren['name']."<br>";
            echo "<a href='".$catChildren['href']."' style='font-size:13pt;font-family:calibri;color:gray;padding-right:10px;padding-left:10px;text-decoration:underline'>".$catChildren['name']."</a>";

            $hrefforback=$catChildren['href'];
          }else{
            echo "<a href='".$catChildren['href']."' style='font-size:13pt;font-family:calibri;color:gray;padding-right:10px;padding-left:10px;text-decoration:none'>".$catChildren['name']."</a>";
          }
        } ?>

      </div>
  </div>
  <div style="display:<?php echo (isset($_GET['product_id']))? "block": "none";?>">
    <a href="<?php echo $hrefforback;?>" style="color:black" class="backChecks">BACK TO CHECKS</a>
    <br><br>
  </div>
  <style>
    .backChecks{
      color: #000000;
      font-size: 15px;
      text-transform: uppercase;
      text-decoration: underline;
      border: none;
      background: none;
      
      font-family: 'Josefin Sans', sans-serif;
      margin-top: 35px;
      cursor: pointer;
    }
  </style>
<?php
      }
    }
  }
?>
</div>
<?php } ?>
<?php if ($error) { ?>
    
    <div class="warning"><?php echo $error ?><img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>
    
<?php } ?>
<div id="notification"></div>


<?php //ralph comment ?>
<link href='http://fonts.googleapis.com/css?family=Josefin+Sans:100,300,400,600,700,100italic,300italic,400italic,600italic,700italic' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Roboto:100,100italic,300,300italic,400,400italic,500,500italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:300italic,400italic,700italic,300,400,700' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,300,400,600,700,800' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Cardo:400,400italic,700' rel='stylesheet' type='text/css'>

<link rel='stylesheet' type='text/css' href='../FIV3/css/style.css'>
<?php //end ralph comment ?>


<div class="header">
        <ul class="main_navi">
            <li><a href="about.html">About</a></li>
            <li><a href="">Shop</a>
            <ul>
            <?php foreach ($categories as $category) { ?>
            <li>
              <?php if(count($category['children'])==0) { ?>
                <a href="<?php echo $category['href']; ?>" style="text-decoration:none;color:#333;"><?php echo $category['name']; ?></a>
              <?php }else{ ?>
                <a href="<?php echo $category['children'][0]['href']; ?>" style="text-decoration:none;color:#333;"><?php echo $category['name']; ?></a>
              <?php } ?>
            </li>
            <?php } ?>  
            </ul>

            </li>
            <li><a href="explorecustom.html">Explore Customs</a></li>
            <li><a href="beinspired.html">Be Inspired<span style="font-size:16px;line-height: 0;">!</span></a></li>
            <li><a href="collaboration.html">Collaboration</a></li>
            <li><a href="whycustom.html">Why Custom</a></li>
            <li class="active"><a href="howitworks.html">How it works</a></li>             
        </ul><!-- End .main_navi -->
    </div><!-- End .header -->