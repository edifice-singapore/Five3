<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content"><?php echo $content_top; ?>
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
  

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
  
  	.checkHeader{
  		padding:15px;
  		padding-left:20px;
  		padding-right:20px;
  		position:relative;
  		top:17px;
  		width:400px;
  		color: #666666;
  		font-family: "Roboto",sans-serif;
  		font-size:11pt;
  		font-weight:400;
  	}

  	.checkout_step_no {
		color: #fff;
		background-color: #acacac;
		display: inline-block;
		text-align: center;
		border-radius: 10px;
		height: 19px;
		width: 20px;
		padding-top: 1px;
		margin: -1px 8px 0 0;
	}
  	</style>
  <div style="width:1198px;height:50px;border:1px solid black">
  	
  	<span class="checkHeader" id="firstLoad"><div class="checkout_step_no">1</div><?php $ex1 = explode(":",$text_checkout_option); echo $ex1[1]; ?></span>
  	<?php if (!$logged) { ?>
  		<span class="checkHeader" id="secondLoad"><div class="checkout_step_no">2</div><?php $ex2 = explode(":",$text_checkout_account); echo $ex2[1]; ?></span>
  	<?php } else { ?>
  		<span class="checkHeader" id="secondLoad"><div class="checkout_step_no">2</div><?php $ex2 = explode(":",$text_checkout_payment_address); echo $ex2[1]; ?></span>
  	<?php } ?>
    <?php if ($shipping_required) { ?>
  		<span class="checkHeader" id="thirdLoad"><div class="checkout_step_no">3</div><?php $ex3 = explode(":",$text_checkout_shipping_address); echo $ex3[1];  ?></span>
  		<span class="checkHeader" id="fourthLoad" ><div class="checkout_step_no">4</div><?php $ex4 = explode(":",$text_checkout_shipping_method); echo $ex4[1]; ?></span>
  	<?php } ?>
  	<span class="checkHeader" id="fifthLoad"><div class="checkout_step_no">5</div><?php $ex5 = explode(":",$text_checkout_payment_method); echo $ex5[1];  ?></span>
  	<span class="checkHeader" id="sixthLoad"><div class="checkout_step_no">6</div><?php $ex6 = explode(":",$text_checkout_confirm); echo $ex6[1];  ?></span>
  </div>
  <div class="checkout">
  <br><br>
    <div id="checkout"  >
      <div style="display:none;" class="checkout-heading"><?php echo $text_checkout_option; ?></div>
      <div class="checkout-content" style="height:300px"></div>
      <div class="contBtn stackBtn commonBtn" style="display:none;margin-top:-150px;margin-left:440px;font-size:11pt">CONTINUE</div>
      <div class="logBtn stackBtn commonBtn" style="display:none;margin-left: 878px;margin-top:-150px;font-size:11pt">LOG IN</div>

    </div>
    <?php if (!$logged) { ?>
    <div id="payment-address" >
      <div  style="display:none" class="checkout-heading"><span><?php echo $text_checkout_account; ?></span></div>
      <div class="checkout-content"></div>
      <div class="backBtn checkout stackBtn firstLoad" style="display:none">BACK</div><div class="nextBtn checkout stackBtn" style="display:none">CONTINNUE</div>
    </div>
    <?php } else { ?>
    <div id="payment-address" >
      <div  style="display:none" class="checkout-heading"><span><?php echo $text_checkout_payment_address; ?></span></div>
      <div class="checkout-content"></div>
      <div class="backBtn loginBtn stackBtn firstLoad" style="display:none">BACK</div><div class="nextBtn checkout stackBtn" style="display:none">CONTINNUE</div>
    </div>
    <?php } ?>
    <?php if ($shipping_required) { ?>
    <div id="shipping-address" >
      <div  style="display:none" class="checkout-heading"><?php echo $text_checkout_shipping_address; ?></div>
      <div class="checkout-content"></div>
      <div class="backBtn payment-address stackBtn secondLoad" style="display:none">BACK</div><div class="nextBtn payment-address stackBtn" style="display:none">CONTINNUE</div>
    </div>
    <div id="shipping-method">
      <div  style="display:none" class="checkout-heading"><?php echo $text_checkout_shipping_method; ?></div>
      <div class="checkout-content"></div>
      
      <div class="backBtn shipping-address stackBtn thirdLoad" style="display:none">BACK</div><div class="nextBtn shipping-address stackBtn" style="display:none">CONTINNUE</div>
    </div>
    <?php } ?>
    <div id="payment-method" >
      <div  style="display:none" class="checkout-heading"><?php echo $text_checkout_payment_method; ?></div>
      <div class="checkout-content"></div>
       
       <div class="backBtn shipping-method stackBtn fourthLoad" style="display:none">BACK</div><div class="nextBtn shipping-method stackBtn" style="display:none">CONTINNUE</div>
    </div>
    <div id="confirm">
      <div  style="display:none" class="checkout-heading"><?php echo $text_checkout_confirm; ?></div>
      <div class="checkout-content"></div>
       <div class="backBtn payment-method stackBtn fifthLoad" style="display:none">BACK</div><div class="nextBtn payment-method stackBtn" style="display:none">CONFIRM ORDER</div>
    </div>
    <br><br>
  </div>
  <br><br>
  <?php echo $content_bottom; ?></div>

  <style type="text/css">
  .stackBtn{
  	display:block;
  	
  	padding:10px;
  	padding-left:20px;
  	padding-right:20px;
  	color:#ebebeb;
  	background-color:#555555;
  	font-weight:bold;
  	font-family:calibri;
  	font-size:12pt;
  	cursor: pointer;
  }

  .nextBtn{
  	float:right;
  }

  .backBtn{
  	float:left;
  }
  .commonBtn{
  	float:left;
  	cursor: pointer;
  	
  }

  </style>
<script type="text/javascript"><!--
$('#checkout .checkout-content input[name=\'account\']').live('change', function() {
	if ($(this).attr('value') == 'register') {
		$('#payment-address .checkout-heading span').html('<?php echo $text_checkout_account; ?>');
	} else {
		$('#payment-address .checkout-heading span').html('<?php echo $text_checkout_payment_address; ?>');
	}
});

$(".backBtn").click(function(){
  var parClass = $(this).attr('class').split(' ');
  $("#"+parClass[1]).find('.checkout-content').slideDown('slow');
  $("#"+parClass[1]).find('.'+parClass[2]).slideDown('slow');
  $(this).parent().find('.checkout-content').slideUp('slow');
  $(this).parent().find("."+parClass[2]).hide();
  $(".checkHeader").css("color","#666666").find(".checkout_step_no").css("background-color","#acacac");;
  $("#"+parClass[3]).css("color","black").find(".checkout_step_no").css("background-color","black");

  $(".loginBtn").css("display","none");

  /*if(parClass[1]=='checkout'){
  	//alert('adasd');
  	$("#checkout").find('.checkout-content').css("height","300px");
  }*/
});

$(".nextBtn").click(function(){
  $(this).parent().find(".button").click();
});

$(".contBtn").click(function(){
	$("#register").click();
 $("#button-account").click();
});

$(".logBtn").click(function(){
 $("#button-login").click();
});

$('.checkout-heading a').live('click', function() {
	$('.checkout-content').slideUp('slow');


	$(this).parent().parent().find('.checkout-content').slideDown('slow');
});
<?php if (!$logged) { ?> 
$(document).ready(function() {
	<?php if(isset($quickconfirm)) { ?>
		quickConfirm();
	<?php }else{ ?>
		$.ajax({
			url: 'index.php?route=checkout/login',
			dataType: 'html',
			success: function(html) {
				$('#checkout .checkout-content').html(html);
					
				$('#checkout .checkout-content').slideDown('slow');

				$("#checkout .stackBtn").slideDown('slow');

			

				$("#firstLoad").css("color","black").find(".checkout_step_no").css("background-color","black");
				$("#secondLoad").css("color","#666666").find(".checkout_step_no").css("background-color","#acacac");
				$("#thirdLoad").css("color","#666666").find(".checkout_step_no").css("background-color","#acacac");
				$("#fourthLoad").css("color","#666666").find(".checkout_step_no").css("background-color","#acacac");
				$("#fifthLoad").css("color","#666666").find(".checkout_step_no").css("background-color","#acacac");
				$("#sixthLoad").css("color","#666666").find(".checkout_step_no").css("background-color","#acacac");



				
			},
			error: function(xhr, ajaxOptions, thrownError) {
				alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
			}
		});	
	<?php } ?>
});		
<?php } else { ?>
$(document).ready(function() {

	<?php if(isset($quickconfirm)) { ?>
		quickConfirm();
	<?php }else{ ?>
		$.ajax({
			url: 'index.php?route=checkout/payment_address',
			dataType: 'html',
			success: function(html) {
				$('#payment-address .checkout-content').html(html);
					
				$('#payment-address .checkout-content').slideDown('slow');

				
				
				$("#checkout .stackBtn").css("display","none");
				$("#payment-address .stackBtn").css("display","block");
				$("#payment-address .backBtn").css("display","none");
				$("#shipping-address .stackBtn").css("display","none");
				$("#shipping-method .stackBtn").css("display","none");
				$("#payment-method .stackBtn").css("display","none");
				$("#confirm .stackBtn").css("display","none");

				//$(".button").css("display","none").parent().parent().css({"background-color":"#fafafa","border":"none","height":"13px"});

				$(".button").css("display","none").parent().parent().css({"background-color":"#fafafa","border":"none","height":"13px"});
				$("#newsletter").hide(); $("#newsletter").next("label").hide();
				$("#firstLoad").css("color","#666666").find(".checkout_step_no").css("background-color","#acacac");
				$("#secondLoad").css("color","black").find(".checkout_step_no").css("background-color","black");
				$("#thirdLoad").css("color","#666666").find(".checkout_step_no").css("background-color","#acacac");
				$("#fourthLoad").css("color","#666666").find(".checkout_step_no").css("background-color","#acacac");
				$("#fifthLoad").css("color","#666666").find(".checkout_step_no").css("background-color","#acacac");
				$("#sixthLoad").css("color","#666666").find(".checkout_step_no").css("background-color","#acacac");
			},
			error: function(xhr, ajaxOptions, thrownError) {
				alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
			}
		});	
	<?php } ?>
});
<?php } ?>

// Checkout
$('#button-account').live('click', function() {
	$.ajax({
		url: 'index.php?route=checkout/' + $('input[name=\'account\']:checked').attr('value'),
		dataType: 'html',
		beforeSend: function() {
			$('#button-account').attr('disabled', true);
			$('#button-account').after('<span class="wait">&nbsp;<img src="catalog/view/theme/default/image/loading.gif" alt="" /></span>');
		},		
		complete: function() {
			$('#button-account').attr('disabled', false);
			$('.wait').remove();
		},			
		success: function(html) {
			$('.warning, .error').remove();
			
			$('#payment-address .checkout-content').html(html);
				
			$('#checkout .checkout-content').slideUp('slow');
				
			$('#payment-address .checkout-content').slideDown('slow');
				
			$('.checkout-heading a').remove();
				
			$('#checkout .checkout-heading').append('<a><?php echo $text_modify; ?></a>');

			$("#newsletter").hide(); $("#newsletter").next("label").hide();
			//alert('asdas');
			//$(".button").css("display","none").parent().parent().css({"background-color":"#fafafa","border":"none","height":"13px"});
			$(".button").css("display","none").parent().parent().css({"background-color":"#fafafa","border":"none","height":"13px"});

			$("#checkout .stackBtn").css("display","none");
			$("#payment-address .stackBtn").css("display","block");
			$("#shipping-address .stackBtn").css("display","none");
			$("#shipping-method .stackBtn").css("display","none");
			$("#payment-method .stackBtn").css("display","none");
			$("#confirm .stackBtn").css("display","none");

			$("#secondLoad").css("color","black").find(".checkout_step_no").css("background-color","black");
			$("#firstLoad").css("color","#666666").find(".checkout_step_no").css("background-color","#acacac");
			$("#thirdLoad").css("color","#666666").find(".checkout_step_no").css("background-color","#acacac");
			$("#fourthLoad").css("color","#666666").find(".checkout_step_no").css("background-color","#acacac");
			$("#fifthLoad").css("color","#666666").find(".checkout_step_no").css("background-color","#acacac");
			$("#sixthLoad").css("color","#666666").find(".checkout_step_no").css("background-color","#acacac");
		},
		error: function(xhr, ajaxOptions, thrownError) {
			alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
		}
	});
});

// Login
$('#button-login').live('click', function() {
	$.ajax({
		url: 'index.php?route=checkout/login/validate',
		type: 'post',
		data: $('#checkout #login :input'),
		dataType: 'json',
		beforeSend: function() {
			$('#button-login').attr('disabled', true);
			$('#button-login').after('<span class="wait">&nbsp;<img src="catalog/view/theme/default/image/loading.gif" alt="" /></span>');
		},	
		complete: function() {
			$('#button-login').attr('disabled', false);
			$('.wait').remove();
		},				
		success: function(json) {
			$("#checkout .stackBtn").css("display","none");
			$("#payment-address .stackBtn").css("display","block");
			$("#shipping-address .stackBtn").css("display","none");
			$("#shipping-method .stackBtn").css("display","none");
			$("#payment-method .stackBtn").css("display","none");
			$("#confirm .stackBtn").css("display","none");

			$(".button").css("display","none").parent().parent().css({"background-color":"#fafafa","border":"none","height":"13px"});
			$("#newsletter").hide(); $("#newsletter").next("label").hide();

			$("#secondLoad").css("color","black").find(".checkout_step_no").css("background-color","black");
			$("#firstLoad").css("color","#666666").find(".checkout_step_no").css("background-color","#acacac");

			$("#thirdLoad").css("color","#666666").find(".checkout_step_no").css("background-color","#acacac");
			$("#fourthLoad").css("color","#666666").find(".checkout_step_no").css("background-color","#acacac");
			$("#fifthLoad").css("color","#666666").find(".checkout_step_no").css("background-color","#acacac");
			$("#sixthLoad").css("color","#666666").find(".checkout_step_no").css("background-color","#acacac");

			$('.warning, .error').remove();
			
			if (json['redirect']) {
				location = json['redirect'];
			} else if (json['error']) {
				$('#checkout .checkout-content').prepend('<div class="warning" style="display: none;">' + json['error']['warning'] + '</div>');

				$("#checkout .stackBtn").css("display","none");
				$("#payment-address .stackBtn").css("display","none");
				$("#shipping-address .stackBtn").css("display","none");
				$("#shipping-method .stackBtn").css("display","none");
				$("#payment-method .stackBtn").css("display","none");
				$("#confirm .stackBtn").css("display","none");

				$(".button").css("display","none").parent().parent().css({"background-color":"#fafafa","border":"none","height":"13px"});

				$("#firstLoad").css("color","black").find(".checkout_step_no").css("background-color","black");
				$("#secondLoad").css("color","#666666").find(".checkout_step_no").css("background-color","#acacac");
				$("#thirdLoad").css("color","#666666").find(".checkout_step_no").css("background-color","#acacac");
				$("#fourthLoad").css("color","#666666").find(".checkout_step_no").css("background-color","#acacac");
				$("#fifthLoad").css("color","#666666").find(".checkout_step_no").css("background-color","#acacac");
				$("#sixthLoad").css("color","#666666").find(".checkout_step_no").css("background-color","#acacac");

				$('.warning').fadeIn('slow');
			}
		},
		error: function(xhr, ajaxOptions, thrownError) {
			alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
		}
	});	
});

// Register
$('#button-register').live('click', function() {
	$.ajax({
		url: 'index.php?route=checkout/register/validate',
		type: 'post',
		data: $('#payment-address input[type=\'text\'], #payment-address input[type=\'password\'], #payment-address input[type=\'checkbox\']:checked, #payment-address input[type=\'radio\']:checked, #payment-address input[type=\'hidden\'], #payment-address select'),
		dataType: 'json',
		beforeSend: function() {
			$('#button-register').attr('disabled', true);
			$('#button-register').after('<span class="wait">&nbsp;<img src="catalog/view/theme/default/image/loading.gif" alt="" /></span>');
		},	
		complete: function() {
			$('#button-register').attr('disabled', false); 
			$('.wait').remove();
		},			
		success: function(json) {
			//$("#secondLoad").css("color","black").find(".checkout_step_no").css("background-color","black");
			//$("#firstLoad").css("color","#666666").find(".checkout_step_no").css("background-color","#acacac");

			$('.warning, .error').remove();
						
			if (json['redirect']) {
				location = json['redirect'];				
			} else if (json['error']) {
				if (json['error']['warning']) {
					$('#payment-address .checkout-content').prepend('<div class="warning" style="display: none;">' + json['error']['warning'] + '<img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>');
					
					$('.warning').fadeIn('slow');
				}
				
				if (json['error']['firstname']) {
					$('#payment-address input[name=\'firstname\'] + br').after('<span class="error">' + json['error']['firstname'] + '</span>');
				}
				
				if (json['error']['lastname']) {
					$('#payment-address input[name=\'lastname\'] + br').after('<span class="error">' + json['error']['lastname'] + '</span>');
				}	
				
				if (json['error']['email']) {
					$('#payment-address input[name=\'email\'] + br').after('<span class="error">' + json['error']['email'] + '</span>');
				}
				
				if (json['error']['telephone']) {
					$('#payment-address input[name=\'telephone\'] + br').after('<span class="error">' + json['error']['telephone'] + '</span>');
				}	
					
				if (json['error']['company_id']) {
					$('#payment-address input[name=\'company_id\'] + br').after('<span class="error">' + json['error']['company_id'] + '</span>');
				}	
				
				if (json['error']['tax_id']) {
					$('#payment-address input[name=\'tax_id\'] + br').after('<span class="error">' + json['error']['tax_id'] + '</span>');
				}	
																		
				if (json['error']['address_1']) {
					$('#payment-address input[name=\'address_1\'] + br').after('<span class="error">' + json['error']['address_1'] + '</span>');
				}	
				
				if (json['error']['city']) {
					$('#payment-address input[name=\'city\'] + br').after('<span class="error">' + json['error']['city'] + '</span>');
				}	
				
				if (json['error']['postcode']) {
					$('#payment-address input[name=\'postcode\'] + br').after('<span class="error">' + json['error']['postcode'] + '</span>');
				}	
				
				if (json['error']['country']) {
					$('#payment-address select[name=\'country_id\'] + br').after('<span class="error">' + json['error']['country'] + '</span>');
				}	
				
				if (json['error']['zone']) {
					$('#payment-address select[name=\'zone_id\'] + br').after('<span class="error">' + json['error']['zone'] + '</span>');
				}
				
				if (json['error']['password']) {
					$('#payment-address input[name=\'password\'] + br').after('<span class="error">' + json['error']['password'] + '</span>');
				}	
				
				if (json['error']['confirm']) {
					$('#payment-address input[name=\'confirm\'] + br').after('<span class="error">' + json['error']['confirm'] + '</span>');
				}																																	
			} else {
				<?php if ($shipping_required) { ?>				
				var shipping_address = $('#payment-address input[name=\'shipping_address\']:checked').attr('value');
				
				if (shipping_address) {
					$.ajax({
						url: 'index.php?route=checkout/shipping_method',
						dataType: 'html',
						success: function(html) {
							$("#checkout .stackBtn").css("display","none");
							$("#payment-address .stackBtn").css("display","block");
							$("#shipping-address .stackBtn").css("display","none");
							$("#shipping-method .stackBtn").css("display","none");
							$("#payment-method .stackBtn").css("display","none");
							$("#confirm .stackBtn").css("display","none");

							

							$("#secondLoad").css("color","black").find(".checkout_step_no").css("background-color","black");
							$("#firstLoad").css("color","#666666").find(".checkout_step_no").css("background-color","#acacac");
							$("#thirdLoad").css("color","#666666").find(".checkout_step_no").css("background-color","#acacac");
						$("#fourthLoad").css("color","#666666").find(".checkout_step_no").css("background-color","#acacac");
						$("#fifthLoad").css("color","#666666").find(".checkout_step_no").css("background-color","#acacac");
						$("#sixthLoad").css("color","#666666").find(".checkout_step_no").css("background-color","#acacac");

							$('#shipping-method .checkout-content').html(html);
							
							$('#payment-address .checkout-content').slideUp('slow');
							
							$('#shipping-method .checkout-content').slideDown('slow');
							
							$('#checkout .checkout-heading a').remove();
							$('#payment-address .checkout-heading a').remove();
							$('#shipping-address .checkout-heading a').remove();
							$('#shipping-method .checkout-heading a').remove();
							$('#payment-method .checkout-heading a').remove();											
							
							$('#shipping-address .checkout-heading').append('<a><?php echo $text_modify; ?></a>');									
							$('#payment-address .checkout-heading').append('<a><?php echo $text_modify; ?></a>');	

							$(".button").css("display","none").parent().parent().css({"background-color":"#fafafa","border":"none","height":"13px"});
							$("#newsletter").hide(); $("#newsletter").next("label").hide();

							$.ajax({
								url: 'index.php?route=checkout/shipping_address',
								dataType: 'html',
								success: function(html) {

									$("#checkout .stackBtn").css("display","none");
									$("#payment-address .stackBtn").css("display","block");
									$("#shipping-address .stackBtn").css("display","none");
									$("#shipping-method .stackBtn").css("display","none");
									$("#payment-method .stackBtn").css("display","none");
									$("#confirm .stackBtn").css("display","none");

									
									$("#secondLoad").css("color","black").find(".checkout_step_no").css("background-color","black");
									$("#firstLoad").css("color","#666666").find(".checkout_step_no").css("background-color","#acacac");
									$("#thirdLoad").css("color","#666666").find(".checkout_step_no").css("background-color","#acacac");
									$("#fourthLoad").css("color","#666666").find(".checkout_step_no").css("background-color","#acacac");
									$("#fifthLoad").css("color","#666666").find(".checkout_step_no").css("background-color","#acacac");
									$("#sixthLoad").css("color","#666666").find(".checkout_step_no").css("background-color","#acacac");

									$('#shipping-address .checkout-content').html(html);

									$(".button").css("display","none").parent().parent().css({"background-color":"#fafafa","border":"none","height":"13px"});
									$("#newsletter").hide(); $("#newsletter").next("label").hide();
								},
								error: function(xhr, ajaxOptions, thrownError) {
									alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
								}
							});	
						},
						error: function(xhr, ajaxOptions, thrownError) {
							alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
						}
					});	
				} else {
					$.ajax({
						url: 'index.php?route=checkout/shipping_address',
						dataType: 'html',
						success: function(html) {

							$("#checkout .stackBtn").css("display","none");
							$("#payment-address .stackBtn").css("display","block");
							$("#shipping-address .stackBtn").css("display","none");
							$("#shipping-method .stackBtn").css("display","none");
							$("#payment-method .stackBtn").css("display","none");
							$("#confirm .stackBtn").css("display","none");

							

							$("#secondLoad").css("color","black").find(".checkout_step_no").css("background-color","black");
							$("#firstLoad").css("color","#666666").find(".checkout_step_no").css("background-color","#acacac");
							$("#thirdLoad").css("color","#666666").find(".checkout_step_no").css("background-color","#acacac");
							$("#fourthLoad").css("color","#666666").find(".checkout_step_no").css("background-color","#acacac");
							$("#fifthLoad").css("color","#666666").find(".checkout_step_no").css("background-color","#acacac");
							$("#sixthLoad").css("color","#666666").find(".checkout_step_no").css("background-color","#acacac");

							$('#shipping-address .checkout-content').html(html);
							
							$('#payment-address .checkout-content').slideUp('slow');
							
							$('#shipping-address .checkout-content').slideDown('slow');
							
							$('#checkout .checkout-heading a').remove();
							$('#payment-address .checkout-heading a').remove();
							$('#shipping-address .checkout-heading a').remove();
							$('#shipping-method .checkout-heading a').remove();
							$('#payment-method .checkout-heading a').remove();							

							$('#payment-address .checkout-heading').append('<a><?php echo $text_modify; ?></a>');	

							$(".button").css("display","none").parent().parent().css({"background-color":"#fafafa","border":"none","height":"13px"});

							$("#newsletter").hide(); $("#newsletter").next("label").hide();
						},
						error: function(xhr, ajaxOptions, thrownError) {
							alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
						}
					});			
				}
				<?php } else { ?>
				$.ajax({
					url: 'index.php?route=checkout/payment_method',
					dataType: 'html',
					success: function(html) {

						$("#checkout .stackBtn").css("display","none");
						$("#payment-address .stackBtn").css("display","block");
						$("#shipping-address .stackBtn").css("display","none");
						$("#shipping-method .stackBtn").css("display","none");
						$("#payment-method .stackBtn").css("display","none");
						$("#confirm .stackBtn").css("display","none");

						

						$("#secondLoad").css("color","black").find(".checkout_step_no").css("background-color","black");
						$("#firstLoad").css("color","#666666").find(".checkout_step_no").css("background-color","#acacac");
						$("#thirdLoad").css("color","#666666").find(".checkout_step_no").css("background-color","#acacac");
						$("#fourthLoad").css("color","#666666").find(".checkout_step_no").css("background-color","#acacac");
						$("#fifthLoad").css("color","#666666").find(".checkout_step_no").css("background-color","#acacac");
						$("#sixthLoad").css("color","#666666").find(".checkout_step_no").css("background-color","#acacac");

						$('#payment-method .checkout-content').html(html);
						
						$('#payment-address .checkout-content').slideUp('slow');
						
						$('#payment-method .checkout-content').slideDown('slow');
						
						$('#checkout .checkout-heading a').remove();
						$('#payment-address .checkout-heading a').remove();
						$('#payment-method .checkout-heading a').remove();								
						
						$('#payment-address .checkout-heading').append('<a><?php echo $text_modify; ?></a>');	

						$(".button").css("display","none").parent().parent().css({"background-color":"#fafafa","border":"none","height":"13px"});

						$("#newsletter").hide(); $("#newsletter").next("label").hide();
					},
					error: function(xhr, ajaxOptions, thrownError) {
						alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
					}
				});					
				<?php } ?>

				$.ajax({
					url: 'index.php?route=checkout/payment_address',
					dataType: 'html',
					success: function(html) {

						$("#checkout .stackBtn").css("display","none");
						$("#payment-address .stackBtn").css("display","block");
						$("#shipping-address .stackBtn").css("display","none");
						$("#shipping-method .stackBtn").css("display","none");
						$("#payment-method .stackBtn").css("display","none");
						$("#confirm .stackBtn").css("display","none");

						

						$("#secondLoad").css("color","black").find(".checkout_step_no").css("background-color","black");
						$("#firstLoad").css("color","#666666").find(".checkout_step_no").css("background-color","#acacac");
						$("#thirdLoad").css("color","#666666").find(".checkout_step_no").css("background-color","#acacac");
						$("#fourthLoad").css("color","#666666").find(".checkout_step_no").css("background-color","#acacac");
						$("#fifthLoad").css("color","#666666").find(".checkout_step_no").css("background-color","#acacac");
						$("#sixthLoad").css("color","#666666").find(".checkout_step_no").css("background-color","#acacac");

						$('#payment-address .checkout-content').html(html);
							
						$('#payment-address .checkout-heading span').html('<?php echo $text_checkout_payment_address; ?>');
						$(".button").css("display","none").parent().parent().css({"background-color":"#fafafa","border":"none","height":"13px"});
						$("#newsletter").hide(); $("#newsletter").next("label").hide();
					},
					error: function(xhr, ajaxOptions, thrownError) {
						alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
					}
				});
			}	 
		},
		error: function(xhr, ajaxOptions, thrownError) {
			alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
		}
	});	
});

// Payment Address	
$('#button-payment-address').live('click', function() {
	$.ajax({
		url: 'index.php?route=checkout/payment_address/validate',
		type: 'post',
		data: $('#payment-address input[type=\'text\'], #payment-address input[type=\'password\'], #payment-address input[type=\'checkbox\']:checked, #payment-address input[type=\'radio\']:checked, #payment-address input[type=\'hidden\'], #payment-address select'),
		dataType: 'json',
		beforeSend: function() {
			$('#button-payment-address').attr('disabled', true);
			$('#button-payment-address').after('<span class="wait">&nbsp;<img src="catalog/view/theme/default/image/loading.gif" alt="" /></span>');
		},	
		complete: function() {
			$('#button-payment-address').attr('disabled', false);
			$('.wait').remove();
		},			
		success: function(json) {
			/*$("#firstLoad").css("color","#666666").find(".checkout_step_no").css("background-color","#acacac");
			$("#secondLoad").css("color","#666666").find(".checkout_step_no").css("background-color","#acacac");
			$("#thirdLoad").css("color","black").find(".checkout_step_no").css("background-color","black");
			$("#fourthLoad").css("color","#666666").find(".checkout_step_no").css("background-color","#acacac");*/
			

			$('.warning, .error').remove();
			
			if (json['redirect']) {
				location = json['redirect'];
			} else if (json['error']) {
				if (json['error']['warning']) {
					$('#payment-address .checkout-content').prepend('<div class="warning" style="display: none;">' + json['error']['warning'] + '<img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>');
					
					$('.warning').fadeIn('slow');
				}
								
				if (json['error']['firstname']) {
					$('#payment-address input[name=\'firstname\']').after('<span class="error">' + json['error']['firstname'] + '</span>');
				}
				
				if (json['error']['lastname']) {
					$('#payment-address input[name=\'lastname\']').after('<span class="error">' + json['error']['lastname'] + '</span>');
				}	
				
				if (json['error']['telephone']) {
					$('#payment-address input[name=\'telephone\']').after('<span class="error">' + json['error']['telephone'] + '</span>');
				}		
				
				if (json['error']['company_id']) {
					$('#payment-address input[name=\'company_id\']').after('<span class="error">' + json['error']['company_id'] + '</span>');
				}	
				
				if (json['error']['tax_id']) {
					$('#payment-address input[name=\'tax_id\']').after('<span class="error">' + json['error']['tax_id'] + '</span>');
				}	
														
				if (json['error']['address_1']) {
					$('#payment-address input[name=\'address_1\']').after('<span class="error">' + json['error']['address_1'] + '</span>');
				}	
				
				if (json['error']['city']) {
					$('#payment-address input[name=\'city\']').after('<span class="error">' + json['error']['city'] + '</span>');
				}	
				
				if (json['error']['postcode']) {
					$('#payment-address input[name=\'postcode\']').after('<span class="error">' + json['error']['postcode'] + '</span>');
				}	
				
				if (json['error']['country']) {
					$('#payment-address select[name=\'country_id\']').after('<span class="error">' + json['error']['country'] + '</span>');
				}	
				
				if (json['error']['zone']) {
					$('#payment-address select[name=\'zone_id\']').after('<span class="error">' + json['error']['zone'] + '</span>');
				}
			} else {
				<?php if ($shipping_required) { ?>
				$.ajax({
					url: 'index.php?route=checkout/shipping_address',
					dataType: 'html',
					success: function(html) {
						$("#checkout .stackBtn").css("display","none");
						$("#payment-address .stackBtn").css("display","none");
						$("#shipping-address .stackBtn").css("display","block");
						$("#shipping-method .stackBtn").css("display","none");
						$("#payment-method .stackBtn").css("display","none");
						$("#confirm .stackBtn").css("display","none");

						

						$("#firstLoad").css("color","#666666").find(".checkout_step_no").css("background-color","#acacac");
						$("#secondLoad").css("color","#666666").find(".checkout_step_no").css("background-color","#acacac");
						$("#thirdLoad").css("color","black").find(".checkout_step_no").css("background-color","black");
						$("#fourthLoad").css("color","#666666").find(".checkout_step_no").css("background-color","#acacac");
						$("#fifthLoad").css("color","#666666").find(".checkout_step_no").css("background-color","#acacac");
						$("#sixthLoad").css("color","#666666").find(".checkout_step_no").css("background-color","#acacac");
						

						$('#shipping-address .checkout-content').html(html);
					
						$('#payment-address .checkout-content').slideUp('slow');
						
						$('#shipping-address .checkout-content').slideDown('slow');
						
						$('#payment-address .checkout-heading a').remove();
						$('#shipping-address .checkout-heading a').remove();
						$('#shipping-method .checkout-heading a').remove();
						$('#payment-method .checkout-heading a').remove();
						
						$('#payment-address .checkout-heading').append('<a><?php echo $text_modify; ?></a>');	
						$(".button").css("display","none").parent().parent().css({"background-color":"#fafafa","border":"none","height":"13px"});
					},
					error: function(xhr, ajaxOptions, thrownError) {
						alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
					}
				});
				<?php } else { ?>
				$.ajax({
					url: 'index.php?route=checkout/payment_method',
					dataType: 'html',
					success: function(html) {
						$("#checkout .stackBtn").css("display","none");
						$("#payment-address .stackBtn").css("display","none");
						$("#shipping-address .stackBtn").css("display","block");
						$("#shipping-method .stackBtn").css("display","none");
						$("#payment-method .stackBtn").css("display","none");
						$("#confirm .stackBtn").css("display","none");

						

						$("#firstLoad").css("color","#666666").find(".checkout_step_no").css("background-color","#acacac");
						$("#secondLoad").css("color","#666666").find(".checkout_step_no").css("background-color","#acacac");
						$("#thirdLoad").css("color","black").find(".checkout_step_no").css("background-color","black");
						$("#fourthLoad").css("color","#666666").find(".checkout_step_no").css("background-color","#acacac");
						$("#fifthLoad").css("color","#666666").find(".checkout_step_no").css("background-color","#acacac");
						$("#sixthLoad").css("color","#666666").find(".checkout_step_no").css("background-color","#acacac");
						
						$('#payment-method .checkout-content').html(html);
					
						$('#payment-address .checkout-content').slideUp('slow');
						
						$('#payment-method .checkout-content').slideDown('slow');
						
						$('#payment-address .checkout-heading a').remove();
						$('#payment-method .checkout-heading a').remove();
													
						$('#payment-address .checkout-heading').append('<a><?php echo $text_modify; ?></a>');	
						$(".button").css("display","none").parent().parent().css({"background-color":"#fafafa","border":"none","height":"13px"});
					},
					error: function(xhr, ajaxOptions, thrownError) {
						alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
					}
				});	
				<?php } ?>
				
				$.ajax({
					url: 'index.php?route=checkout/payment_address',
					dataType: 'html',
					success: function(html) {
						$("#checkout .stackBtn").css("display","none");
						$("#payment-address .stackBtn").css("display","none");
						$("#shipping-address .stackBtn").css("display","block");
						$("#shipping-method .stackBtn").css("display","none");
						$("#payment-method .stackBtn").css("display","none");
						$("#confirm .stackBtn").css("display","none");

						

						$("#firstLoad").css("color","#666666").find(".checkout_step_no").css("background-color","#acacac");
						$("#secondLoad").css("color","#666666").find(".checkout_step_no").css("background-color","#acacac");
						$("#thirdLoad").css("color","black").find(".checkout_step_no").css("background-color","black");
						$("#fourthLoad").css("color","#666666").find(".checkout_step_no").css("background-color","#acacac");
						$("#fifthLoad").css("color","#666666").find(".checkout_step_no").css("background-color","#acacac");
						$("#sixthLoad").css("color","#666666").find(".checkout_step_no").css("background-color","#acacac");

						$('#payment-address .checkout-content').html(html);
						$(".button").css("display","none").parent().parent().css({"background-color":"#fafafa","border":"none","height":"13px"});
					},
					error: function(xhr, ajaxOptions, thrownError) {
						alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
					}
				});				
			}	  
		},
		error: function(xhr, ajaxOptions, thrownError) {
			alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
		}
	});	
});

// Shipping Address			
$('#button-shipping-address').live('click', function() {
	$.ajax({
		url: 'index.php?route=checkout/shipping_address/validate',
		type: 'post',
		data: $('#shipping-address input[type=\'text\'], #shipping-address input[type=\'password\'], #shipping-address input[type=\'checkbox\']:checked, #shipping-address input[type=\'radio\']:checked, #shipping-address select'),
		dataType: 'json',
		beforeSend: function() {
			$('#button-shipping-address').attr('disabled', true);
			$('#button-shipping-address').after('<span class="wait">&nbsp;<img src="catalog/view/theme/default/image/loading.gif" alt="" /></span>');
		},	
		complete: function() {
			$('#button-shipping-address').attr('disabled', false);
			$('.wait').remove();
		},			
		success: function(json) {
			 $("#setInAddress").html($("#shipping-existing select[name='address_id']").find("option:selected").text());
			/*$("#firstLoad").css("color","#666666").find(".checkout_step_no").css("background-color","#acacac");
			$("#secondLoad").css("color","#666666").find(".checkout_step_no").css("background-color","#acacac");
			$("#thirdLoad").css("color","#666666").find(".checkout_step_no").css("background-color","#acacac");
			$("#fourthLoad").css("color","black").find(".checkout_step_no").css("background-color","black");*/


			$('.warning, .error').remove();
			
			if (json['redirect']) {
				location = json['redirect'];
			} else if (json['error']) {
				if (json['error']['warning']) {
					$('#shipping-address .checkout-content').prepend('<div class="warning" style="display: none;">' + json['error']['warning'] + '<img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>');
					
					$('.warning').fadeIn('slow');
				}
								
				if (json['error']['firstname']) {
					$('#shipping-address input[name=\'firstname\']').after('<span class="error">' + json['error']['firstname'] + '</span>');
				}
				
				if (json['error']['lastname']) {
					$('#shipping-address input[name=\'lastname\']').after('<span class="error">' + json['error']['lastname'] + '</span>');
				}	
				
				if (json['error']['email']) {
					$('#shipping-address input[name=\'email\']').after('<span class="error">' + json['error']['email'] + '</span>');
				}
				
				if (json['error']['telephone']) {
					$('#shipping-address input[name=\'telephone\']').after('<span class="error">' + json['error']['telephone'] + '</span>');
				}		
										
				if (json['error']['address_1']) {
					$('#shipping-address input[name=\'address_1\']').after('<span class="error">' + json['error']['address_1'] + '</span>');
				}	
				
				if (json['error']['city']) {
					$('#shipping-address input[name=\'city\']').after('<span class="error">' + json['error']['city'] + '</span>');
				}	
				
				if (json['error']['postcode']) {
					$('#shipping-address input[name=\'postcode\']').after('<span class="error">' + json['error']['postcode'] + '</span>');
				}	
				
				if (json['error']['country']) {
					$('#shipping-address select[name=\'country_id\']').after('<span class="error">' + json['error']['country'] + '</span>');
				}	
				
				if (json['error']['zone']) {
					$('#shipping-address select[name=\'zone_id\']').after('<span class="error">' + json['error']['zone'] + '</span>');
				}
			} else {
				$.ajax({
					url: 'index.php?route=checkout/shipping_method',
					dataType: 'html',
					success: function(html) {
						$("#checkout .stackBtn").css("display","none");
						$("#payment-address .stackBtn").css("display","none");
						$("#shipping-address .stackBtn").css("display","none");
						$("#shipping-method .stackBtn").css("display","block");
						$("#payment-method .stackBtn").css("display","none");
						$("#confirm .stackBtn").css("display","none");

						

						$("#firstLoad").css("color","#666666").find(".checkout_step_no").css("background-color","#acacac");
						$("#secondLoad").css("color","#666666").find(".checkout_step_no").css("background-color","#acacac");
						$("#thirdLoad").css("color","#666666").find(".checkout_step_no").css("background-color","#acacac");
						$("#fourthLoad").css("color","black").find(".checkout_step_no").css("background-color","black");
						$("#fifthLoad").css("color","#666666").find(".checkout_step_no").css("background-color","#acacac");
						$("#sixthLoad").css("color","#666666").find(".checkout_step_no").css("background-color","#acacac");

						$('#shipping-method .checkout-content').html(html);
						
						$('#shipping-address .checkout-content').slideUp('slow');
						
						$('#shipping-method .checkout-content').slideDown('slow');
						
						$('#shipping-address .checkout-heading a').remove();
						$('#shipping-method .checkout-heading a').remove();
						$('#payment-method .checkout-heading a').remove();
						
						$('#shipping-address .checkout-heading').append('<a><?php echo $text_modify; ?></a>');		
						$(".button").css("display","none").parent().parent().css({"background-color":"#fafafa","border":"none","height":"13px"});		
						 $("#setInAddress").html($("#shipping-existing select[name='address_id']").find("option:selected").text());			
						
						$.ajax({
							url: 'index.php?route=checkout/shipping_address',
							dataType: 'html',
							success: function(html) {
						$("#checkout .stackBtn").css("display","none");
						$("#payment-address .stackBtn").css("display","none");
						$("#shipping-address .stackBtn").css("display","none");
						$("#shipping-method .stackBtn").css("display","block");
						$("#payment-method .stackBtn").css("display","none");
						$("#confirm .stackBtn").css("display","none");

						
						$("#firstLoad").css("color","#666666").find(".checkout_step_no").css("background-color","#acacac");
						$("#secondLoad").css("color","#666666").find(".checkout_step_no").css("background-color","#acacac");
						$("#thirdLoad").css("color","#666666").find(".checkout_step_no").css("background-color","#acacac");
						$("#fourthLoad").css("color","black").find(".checkout_step_no").css("background-color","black");
						$("#fifthLoad").css("color","#666666").find(".checkout_step_no").css("background-color","#acacac");
						$("#sixthLoad").css("color","#666666").find(".checkout_step_no").css("background-color","#acacac");

								$('#shipping-address .checkout-content').html(html);
								$(".button").css("display","none").parent().parent().css({"background-color":"#fafafa","border":"none","height":"13px"});

								 $("#setInAddress").html($("#shipping-existing select[name='address_id']").find("option:selected").text());
							},
							error: function(xhr, ajaxOptions, thrownError) {
								alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
							}
						});
					},
					error: function(xhr, ajaxOptions, thrownError) {
						alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
					}
				});	
				
				$.ajax({
					url: 'index.php?route=checkout/payment_address',
					dataType: 'html',
					success: function(html) {
						$("#checkout .stackBtn").css("display","none");
						$("#payment-address .stackBtn").css("display","none");
						$("#shipping-address .stackBtn").css("display","none");
						$("#shipping-method .stackBtn").css("display","block");
						$("#payment-method .stackBtn").css("display","none");
						$("#confirm .stackBtn").css("display","none");

						

						$("#firstLoad").css("color","#666666").find(".checkout_step_no").css("background-color","#acacac");
						$("#secondLoad").css("color","#666666").find(".checkout_step_no").css("background-color","#acacac");
						$("#thirdLoad").css("color","#666666").find(".checkout_step_no").css("background-color","#acacac");
						$("#fourthLoad").css("color","black").find(".checkout_step_no").css("background-color","black");
						$("#fifthLoad").css("color","#666666").find(".checkout_step_no").css("background-color","#acacac");
						$("#sixthLoad").css("color","#666666").find(".checkout_step_no").css("background-color","#acacac");

						$('#payment-address .checkout-content').html(html);
						$(".button").css("display","none").parent().parent().css({"background-color":"#fafafa","border":"none","height":"13px"});

						 $("#setInAddress").html($("#shipping-existing select[name='address_id']").find("option:selected").text());
					},
					error: function(xhr, ajaxOptions, thrownError) {
						alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
					}
				});					
			}
		},
		error: function(xhr, ajaxOptions, thrownError) {
			alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
		}
	});	
});

// Guest
$('#button-guest').live('click', function() {
	$.ajax({
		url: 'index.php?route=checkout/guest/validate',
		type: 'post',
		data: $('#payment-address input[type=\'text\'], #payment-address input[type=\'checkbox\']:checked, #payment-address input[type=\'radio\']:checked, #payment-address input[type=\'hidden\'], #payment-address select'),
		dataType: 'json',
		beforeSend: function() {
			$('#button-guest').attr('disabled', true);
			$('#button-guest').after('<span class="wait">&nbsp;<img src="catalog/view/theme/default/image/loading.gif" alt="" /></span>');
		},	
		complete: function() {
			$('#button-guest').attr('disabled', false); 
			$('.wait').remove();
		},			
		success: function(json) {
			
			/*$("#firstLoad").css("color","#666666").find(".checkout_step_no").css("background-color","#acacac");
			$("#secondLoad").css("color","#666666").find(".checkout_step_no").css("background-color","#acacac");
			$("#thirdLoad").css("color","#666666").find(".checkout_step_no").css("background-color","#acacac");
			$("#fourthLoad").css("color","black").find(".checkout_step_no").css("background-color","black");*/


			$('.warning, .error').remove();
			
			if (json['redirect']) {
				location = json['redirect'];
			} else if (json['error']) {
				if (json['error']['warning']) {
					$('#payment-address .checkout-content').prepend('<div class="warning" style="display: none;">' + json['error']['warning'] + '<img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>');
					
					$('.warning').fadeIn('slow');
				}
								
				if (json['error']['firstname']) {
					$('#payment-address input[name=\'firstname\'] + br').after('<span class="error">' + json['error']['firstname'] + '</span>');
				}
				
				if (json['error']['lastname']) {
					$('#payment-address input[name=\'lastname\'] + br').after('<span class="error">' + json['error']['lastname'] + '</span>');
				}	
				
				if (json['error']['email']) {
					$('#payment-address input[name=\'email\'] + br').after('<span class="error">' + json['error']['email'] + '</span>');
				}
				
				if (json['error']['telephone']) {
					$('#payment-address input[name=\'telephone\'] + br').after('<span class="error">' + json['error']['telephone'] + '</span>');
				}	
					
				if (json['error']['company_id']) {
					$('#payment-address input[name=\'company_id\'] + br').after('<span class="error">' + json['error']['company_id'] + '</span>');
				}	
				
				if (json['error']['tax_id']) {
					$('#payment-address input[name=\'tax_id\'] + br').after('<span class="error">' + json['error']['tax_id'] + '</span>');
				}	
																		
				if (json['error']['address_1']) {
					$('#payment-address input[name=\'address_1\'] + br').after('<span class="error">' + json['error']['address_1'] + '</span>');
				}	
				
				if (json['error']['city']) {
					$('#payment-address input[name=\'city\'] + br').after('<span class="error">' + json['error']['city'] + '</span>');
				}	
				
				if (json['error']['postcode']) {
					$('#payment-address input[name=\'postcode\'] + br').after('<span class="error">' + json['error']['postcode'] + '</span>');
				}	
				
				if (json['error']['country']) {
					$('#payment-address select[name=\'country_id\'] + br').after('<span class="error">' + json['error']['country'] + '</span>');
				}	
				
				if (json['error']['zone']) {
					$('#payment-address select[name=\'zone_id\'] + br').after('<span class="error">' + json['error']['zone'] + '</span>');
				}
			} else {
				<?php if ($shipping_required) { ?>	
				var shipping_address = $('#payment-address input[name=\'shipping_address\']:checked').attr('value');
				
				if (shipping_address) {
					$.ajax({
						url: 'index.php?route=checkout/shipping_method',
						dataType: 'html',
						success: function(html) {
						$("#checkout .stackBtn").css("display","none");
						$("#payment-address .stackBtn").css("display","none");
						$("#shipping-address .stackBtn").css("display","none");
						$("#shipping-method .stackBtn").css("display","block");
						$("#payment-method .stackBtn").css("display","none");
						$("#confirm .stackBtn").css("display","none");

						

						$("#firstLoad").css("color","#666666").find(".checkout_step_no").css("background-color","#acacac");
						$("#secondLoad").css("color","#666666").find(".checkout_step_no").css("background-color","#acacac");
						$("#thirdLoad").css("color","#666666").find(".checkout_step_no").css("background-color","#acacac");
						$("#fourthLoad").css("color","black").find(".checkout_step_no").css("background-color","black");
						$("#fifthLoad").css("color","#666666").find(".checkout_step_no").css("background-color","#acacac");
						$("#sixthLoad").css("color","#666666").find(".checkout_step_no").css("background-color","#acacac");

							$('#shipping-method .checkout-content').html(html);
							
							$('#payment-address .checkout-content').slideUp('slow');
							
							$('#shipping-method .checkout-content').slideDown('slow');
							
							$('#payment-address .checkout-heading a').remove();
							$('#shipping-address .checkout-heading a').remove();
							$('#shipping-method .checkout-heading a').remove();
							$('#payment-method .checkout-heading a').remove();		
															
							$('#payment-address .checkout-heading').append('<a><?php echo $text_modify; ?></a>');	
							$('#shipping-address .checkout-heading').append('<a><?php echo $text_modify; ?></a>');	

							$(".button").css("display","none").parent().parent().css({"background-color":"#fafafa","border":"none","height":"13px"});								
							
							$.ajax({
								url: 'index.php?route=checkout/guest_shipping',
								dataType: 'html',
								success: function(html) {
						$("#checkout .stackBtn").css("display","none");
						$("#payment-address .stackBtn").css("display","none");
						$("#shipping-address .stackBtn").css("display","none");
						$("#shipping-method .stackBtn").css("display","block");
						$("#payment-method .stackBtn").css("display","none");
						$("#confirm .stackBtn").css("display","none");

						

						$("#firstLoad").css("color","#666666").find(".checkout_step_no").css("background-color","#acacac");
						$("#secondLoad").css("color","#666666").find(".checkout_step_no").css("background-color","#acacac");
						$("#thirdLoad").css("color","#666666").find(".checkout_step_no").css("background-color","#acacac");
						$("#fourthLoad").css("color","black").find(".checkout_step_no").css("background-color","black");
						$("#fifthLoad").css("color","#666666").find(".checkout_step_no").css("background-color","#acacac");
						$("#sixthLoad").css("color","#666666").find(".checkout_step_no").css("background-color","#acacac");

									$('#shipping-address .checkout-content').html(html);
									$(".button").css("display","none").parent().parent().css({"background-color":"#fafafa","border":"none","height":"13px"});
								},
								error: function(xhr, ajaxOptions, thrownError) {
									alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
								}
							});
						},
						error: function(xhr, ajaxOptions, thrownError) {
							alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
						}
					});					
				} else {
					$.ajax({
						url: 'index.php?route=checkout/guest_shipping',
						dataType: 'html',
						success: function(html) {
						$("#checkout .stackBtn").css("display","none");
						$("#payment-address .stackBtn").css("display","none");
						$("#shipping-address .stackBtn").css("display","none");
						$("#shipping-method .stackBtn").css("display","block");
						$("#payment-method .stackBtn").css("display","none");
						$("#confirm .stackBtn").css("display","none");

						

						$("#firstLoad").css("color","#666666").find(".checkout_step_no").css("background-color","#acacac");
						$("#secondLoad").css("color","#666666").find(".checkout_step_no").css("background-color","#acacac");
						$("#thirdLoad").css("color","#666666").find(".checkout_step_no").css("background-color","#acacac");
						$("#fourthLoad").css("color","black").find(".checkout_step_no").css("background-color","black");
						$("#fifthLoad").css("color","#666666").find(".checkout_step_no").css("background-color","#acacac");
						$("#sixthLoad").css("color","#666666").find(".checkout_step_no").css("background-color","#acacac");

							$('#shipping-address .checkout-content').html(html);
							
							$('#payment-address .checkout-content').slideUp('slow');
							
							$('#shipping-address .checkout-content').slideDown('slow');
							
							$('#payment-address .checkout-heading a').remove();
							$('#shipping-address .checkout-heading a').remove();
							$('#shipping-method .checkout-heading a').remove();
							$('#payment-method .checkout-heading a').remove();
							
							$('#payment-address .checkout-heading').append('<a><?php echo $text_modify; ?></a>');	
							$(".button").css("display","none").parent().parent().css({"background-color":"#fafafa","border":"none","height":"13px"});
						},
						error: function(xhr, ajaxOptions, thrownError) {
							alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
						}
					});
				}
				<?php } else { ?>				
				$.ajax({
					url: 'index.php?route=checkout/payment_method',
					dataType: 'html',
					success: function(html) {
						$("#checkout .stackBtn").css("display","none");
						$("#payment-address .stackBtn").css("display","none");
						$("#shipping-address .stackBtn").css("display","none");
						$("#shipping-method .stackBtn").css("display","block");
						$("#payment-method .stackBtn").css("display","none");
						$("#confirm .stackBtn").css("display","none");

						

						$("#firstLoad").css("color","#666666").find(".checkout_step_no").css("background-color","#acacac");
						$("#secondLoad").css("color","#666666").find(".checkout_step_no").css("background-color","#acacac");
						$("#thirdLoad").css("color","#666666").find(".checkout_step_no").css("background-color","#acacac");
						$("#fourthLoad").css("color","black").find(".checkout_step_no").css("background-color","black");
						$("#fifthLoad").css("color","#666666").find(".checkout_step_no").css("background-color","#acacac");
						$("#sixthLoad").css("color","#666666").find(".checkout_step_no").css("background-color","#acacac");


						$('#payment-method .checkout-content').html(html);
						
						$('#payment-address .checkout-content').slideUp('slow');
							
						$('#payment-method .checkout-content').slideDown('slow');
							
						$('#payment-address .checkout-heading a').remove();
						$('#payment-method .checkout-heading a').remove();
														
						$('#payment-address .checkout-heading').append('<a><?php echo $text_modify; ?></a>');

						$(".button").css("display","none").parent().parent().css({"background-color":"#fafafa","border":"none","height":"13px"});
					},
					error: function(xhr, ajaxOptions, thrownError) {
						alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
					}
				});				
				<?php } ?>
			}	 
		},
		error: function(xhr, ajaxOptions, thrownError) {
			alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
		}
	});	
});

// Guest Shipping
$('#button-guest-shipping').live('click', function() {
	$.ajax({
		url: 'index.php?route=checkout/guest_shipping/validate',
		type: 'post',
		data: $('#shipping-address input[type=\'text\'], #shipping-address select'),
		dataType: 'json',
		beforeSend: function() {
			$('#button-guest-shipping').attr('disabled', true);
			$('#button-guest-shipping').after('<span class="wait">&nbsp;<img src="catalog/view/theme/default/image/loading.gif" alt="" /></span>');
		},	
		complete: function() {
			$('#button-guest-shipping').attr('disabled', false); 
			$('.wait').remove();
		},			
		success: function(json) {
			$('.warning, .error').remove();
			
			if (json['redirect']) {
				location = json['redirect'];
			} else if (json['error']) {
				if (json['error']['warning']) {
					$('#shipping-address .checkout-content').prepend('<div class="warning" style="display: none;">' + json['error']['warning'] + '<img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>');
					
					$('.warning').fadeIn('slow');
				}
								
				if (json['error']['firstname']) {
					$('#shipping-address input[name=\'firstname\']').after('<span class="error">' + json['error']['firstname'] + '</span>');
				}
				
				if (json['error']['lastname']) {
					$('#shipping-address input[name=\'lastname\']').after('<span class="error">' + json['error']['lastname'] + '</span>');
				}	
										
				if (json['error']['address_1']) {
					$('#shipping-address input[name=\'address_1\']').after('<span class="error">' + json['error']['address_1'] + '</span>');
				}	
				
				if (json['error']['city']) {
					$('#shipping-address input[name=\'city\']').after('<span class="error">' + json['error']['city'] + '</span>');
				}	
				
				if (json['error']['postcode']) {
					$('#shipping-address input[name=\'postcode\']').after('<span class="error">' + json['error']['postcode'] + '</span>');
				}	
				
				if (json['error']['country']) {
					$('#shipping-address select[name=\'country_id\']').after('<span class="error">' + json['error']['country'] + '</span>');
				}	
				
				if (json['error']['zone']) {
					$('#shipping-address select[name=\'zone_id\']').after('<span class="error">' + json['error']['zone'] + '</span>');
				}
			} else {
				$.ajax({
					url: 'index.php?route=checkout/shipping_method',
					dataType: 'html',
					success: function(html) {
						$('#shipping-method .checkout-content').html(html);
						
						$('#shipping-address .checkout-content').slideUp('slow');
						
						$('#shipping-method .checkout-content').slideDown('slow');
						
						$('#shipping-address .checkout-heading a').remove();
						$('#shipping-method .checkout-heading a').remove();
						$('#payment-method .checkout-heading a').remove();
							
						$('#shipping-address .checkout-heading').append('<a><?php echo $text_modify; ?></a>');
					},
					error: function(xhr, ajaxOptions, thrownError) {
						alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
					}
				});				
			}	 
		},
		error: function(xhr, ajaxOptions, thrownError) {
			alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
		}
	});	
});

$('#button-shipping-method').live('click', function() {
	$.ajax({
		url: 'index.php?route=checkout/shipping_method/validate',
		type: 'post',
		data: $('#shipping-method input[type=\'radio\']:checked, #shipping-method textarea'),
		dataType: 'json',
		beforeSend: function() {
			$('#button-shipping-method').attr('disabled', true);
			$('#button-shipping-method').after('<span class="wait">&nbsp;<img src="catalog/view/theme/default/image/loading.gif" alt="" /></span>');
		},	
		complete: function() {
			$('#button-shipping-method').attr('disabled', false);
			$('.wait').remove();
		},			
		success: function(json) {
			/*$("#firstLoad").css("color","#666666").find(".checkout_step_no").css("background-color","#acacac");
			$("#secondLoad").css("color","#666666").find(".checkout_step_no").css("background-color","#acacac");
			$("#thirdLoad").css("color","#666666").find(".checkout_step_no").css("background-color","#acacac");
			$("#fourthLoad").css("color","#666666").find(".checkout_step_no").css("background-color","#acacac");
			$("#fifthLoad").css("color","black").find(".checkout_step_no").css("background-color","black");*/

			$('.warning, .error').remove();
			
			if (json['redirect']) {
				location = json['redirect'];
			} else if (json['error']) {
				if (json['error']['warning']) {
					$('#shipping-method .checkout-content').prepend('<div class="warning" style="display: none;">' + json['error']['warning'] + '<img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>');
					
					$('.warning').fadeIn('slow');
				}			
			} else {
				$.ajax({
					url: 'index.php?route=checkout/payment_method',
					dataType: 'html',
					success: function(html) {
						$("#checkout .stackBtn").css("display","none");
						$("#payment-address .stackBtn").css("display","none");
						$("#shipping-address .stackBtn").css("display","none");
						$("#shipping-method .stackBtn").css("display","none");
						$("#payment-method .stackBtn").css("display","block");
						$("#confirm .stackBtn").css("display","none");

						

						$("#firstLoad").css("color","#666666").find(".checkout_step_no").css("background-color","#acacac");
						$("#secondLoad").css("color","#666666").find(".checkout_step_no").css("background-color","#acacac");
						$("#thirdLoad").css("color","#666666").find(".checkout_step_no").css("background-color","#acacac");
						$("#fourthLoad").css("color","#666666").find(".checkout_step_no").css("background-color","#acacac");
						$("#fifthLoad").css("color","black").find(".checkout_step_no").css("background-color","black");
						$("#sixthLoad").css("color","#666666").find(".checkout_step_no").css("background-color","#acacac");


						$('#payment-method .checkout-content').html(html);
						
						$('#shipping-method .checkout-content').slideUp('slow');
						
						$('#payment-method .checkout-content').slideDown('slow');

						$('#shipping-method .checkout-heading a').remove();
						$('#payment-method .checkout-heading a').remove();
						
						$('#shipping-method .checkout-heading').append('<a><?php echo $text_modify; ?></a>');	

						$(".button").css("display","none").parent().parent().css({"background-color":"#fafafa","border":"none","height":"13px"});
					},
					error: function(xhr, ajaxOptions, thrownError) {
						alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
					}
				});					
			}
		},
		error: function(xhr, ajaxOptions, thrownError) {
			alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
		}
	});	
});
//data: $('#payment-method input[type=\'radio\']:checked, #payment-method input[type=\'checkbox\']:checked, #payment-method textarea'),
$('#button-payment-method').live('click', function() {
	$.ajax({
		url: 'index.php?route=checkout/payment_method/validate', 
		type: 'post',
		data: $('#payment-method input[type=\'radio\']:checked, #payment-method input[type=\'checkbox\']:checked, #payment-method textarea'),
		dataType: 'json',
		beforeSend: function() {
			$('#button-payment-method').attr('disabled', true);
			$('#button-payment-method').after('<span class="wait">&nbsp;<img src="catalog/view/theme/default/image/loading.gif" alt="" /></span>');
		},	
		complete: function() {
			$('#button-payment-method').attr('disabled', false);
			$('.wait').remove();
		},			
		success: function(json) {

			/*$("#firstLoad").css("color","#666666").find(".checkout_step_no").css("background-color","#acacac");
			$("#secondLoad").css("color","#666666").find(".checkout_step_no").css("background-color","#acacac");
			$("#thirdLoad").css("color","#666666").find(".checkout_step_no").css("background-color","#acacac");
			$("#fourthLoad").css("color","#666666").find(".checkout_step_no").css("background-color","#acacac");
			$("#fifthLoad").css("color","#666666").find(".checkout_step_no").css("background-color","#acacac");
			$("#sixthLoad").css("color","black").find(".checkout_step_no").css("background-color","black");*/

			$('.warning, .error').remove();
			
			if (json['redirect']) {
				location = json['redirect'];
			} else if (json['error']) {
				if (json['error']['warning']) {
					$('#payment-method .checkout-content').prepend('<div class="warning" style="display: none;">' + json['error']['warning'] + '<img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>');
					
					$('.warning').fadeIn('slow');
				}			
			} else {
				$.ajax({
					url: 'index.php?route=checkout/confirm',
					dataType: 'html',
					success: function(html) {
						$("#checkout .stackBtn").css("display","none");
						$("#payment-address .stackBtn").css("display","none");
						$("#shipping-address .stackBtn").css("display","none");
						$("#shipping-method .stackBtn").css("display","none");
						$("#payment-method .stackBtn").css("display","none");
						$("#confirm .stackBtn").css("display","block");

						

						$("#firstLoad").css("color","#666666").find(".checkout_step_no").css("background-color","#acacac");
						$("#secondLoad").css("color","#666666").find(".checkout_step_no").css("background-color","#acacac");
						$("#thirdLoad").css("color","#666666").find(".checkout_step_no").css("background-color","#acacac");
						$("#fourthLoad").css("color","#666666").find(".checkout_step_no").css("background-color","#acacac");
						$("#fifthLoad").css("color","#666666").find(".checkout_step_no").css("background-color","#acacac");
						$("#sixthLoad").css("color","black").find(".checkout_step_no").css("background-color","black");

						$('#confirm .checkout-content').html(html);
						
						$('#payment-method .checkout-content').slideUp('slow');
						
						$('#confirm .checkout-content').slideDown('slow');
						
						$('#payment-method .checkout-heading a').remove();
						
						$('#payment-method .checkout-heading').append('<a><?php echo $text_modify; ?></a>');	

						$(".button").css("display","none").parent().parent().css({"background-color":"#fafafa","border":"none","height":"13px"});
					},
					error: function(xhr, ajaxOptions, thrownError) {
						alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
					}
				});	
			}
		},
		error: function(xhr, ajaxOptions, thrownError) {
			alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
		}
	});	
});

function quickConfirm(module){
	$.ajax({
		url: 'index.php?route=checkout/confirm',
		dataType: 'html',
		success: function(html) {
			$('#confirm .checkout-content').html(html);
			$('#confirm .checkout-content').slideDown('slow');
			
				
			$('.checkout-heading a').remove();
				
			$('#checkout .checkout-heading a').remove();
			$('#checkout .checkout-heading').append('<a><?php echo $text_modify; ?></a>');
			
			$('#shipping-address .checkout-heading a').remove();
			$('#shipping-address .checkout-heading').append('<a><?php echo $text_modify; ?></a>');	
			
			$('#shipping-method .checkout-heading a').remove();
			$('#shipping-method .checkout-heading').append('<a><?php echo $text_modify; ?></a>');	
			
			$('#payment-address .checkout-heading a').remove();			
			$('#payment-address .checkout-heading').append('<a><?php echo $text_modify; ?></a>');	
							
			$('#payment-method .checkout-heading a').remove();
			$('#payment-method .checkout-heading').append('<a><?php echo $text_modify; ?></a>');	

		},
		error: function(xhr, ajaxOptions, thrownError) {
			alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
		}
	});	
}
//--></script> 
<?php echo $footer; ?>

<style>
	.checkout .button{
		display:none;
	}
</style>