<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content" align="center"><?php echo $content_top; ?>
<h1 style="display: none;"><?php echo $heading_title; ?></h1>
<?php echo $content_bottom; ?></div>

<div class="hm_container">
        	<div class="hm_bottombox">
            	<div class="img_box"><img class="imgthis" src="image/data/nImage/img_hm_inspired.jpg" /></div>
                <div class=""><h2>Be Inspired</h2></div>
                <div class="content" >
                	If you are not 100% pleased with the fit or performance of your FIV.3 purchase, please return it within 90 days for a prompt and complete refund.
                    <br />
                	<a href="" class="readmore">Read More</a>    
                </div>
            </div><!-- End .hm_bottombox -->
        	<div class="hm_bottombox">
            	<div class="img_box"><img class="imgthis" src="image/data/nImage/img_hm_promise.jpg" /></div>
                <div class=""><h2>Promise fit<br />guarantee</h2></div>
                <div class="content">
                	If you are not 100% pleased with the fit or performance of your FIV.3 purchase, please return it within 90 days for a prompt and complete refund.
                    <br />
                	<a href="" class="readmore">Read More</a>    
                </div>
            </div><!-- End .hm_bottombox -->
        	<div class="hm_bottombox">
            	<div class="img_box"><img class="imgthis" src="image/data/nImage/img_hm_refer.jpg" /></div>
                <div class=""><h2>Referral page</h2></div>
                <div class="content">
                	If you are not 100% pleased with the fit or performance of your FIV.3 purchase, please return it within 90 days for a prompt and complete refund.
                    <br />
                	<a href="" class="readmore">Read More</a>    
                </div>
            </div><!-- End .hm_bottombox -->
        	<div class="hm_bottombox">
            	<div class="img_box"><img class="imgthis" src="image/data/nImage/img_hm_shirt.jpg" /></div>
                <div class=""><h2>100% cotton<br />SHIRTS</h2></div>
                <div class="content">
                	If you are not 100% pleased with the fit or performance of your FIV.3 purchase, please return it within 90 days for a prompt and complete refund.
                    <br />
                	<a href="" class="readmore">Read More</a>    
                </div>
            </div><!-- End .hm_bottombox -->
        </div><!-- End .hm_container -->
    </div><!-- End .wrapper -->


    <style>

    .hm_container {
		overflow: hidden;
		width:100%;
		margin: 10px auto 0;
		height:340px;
		left:15px;
		padding-left:20px;
	}

	.hm_bottombox {
		position:relative;
		height:335px;
		width:282px;
		float:left;
		margin-right: 15px;
	}

		.hm_bottombox h2 {
			font-size:24px;
			font-family: 'Cardo', serif;
			font-style: italic;
			font-weight: 400;
			margin:0;
			position:absolute;
			top: 40%;
			color: #fff;
			width: 100%;
			text-align:center;
			text-transform: uppercase;
		}

		.hm_bottombox:last-child {
			margin-right: 0;
		}
		
		.hm_bottombox .content{
			background-color: #fff;
			position: absolute;
			top:335px;
			-webkit-transition: all 0.3s ease;
			transition: all 0.3s ease;
			padding: 5px 8px;
			font-size: 13px;
			color: #636363;
			font-family: 'Roboto', sans-serif;
			font-weight: 500;
			text-transform: uppercase;
			height: 100px;
		}
		
		.hm_bottombox:hover .content {
			top: 235px;
		}
		
		.hm_bottombox .content {
			font-size: 13px;
			color: gray;
			font-family: 'Roboto', sans-serif;
			font-weight: bold;
			
			float: right;
		}

		.hm_bottombox .content .readmore{
			font-size: 15px;
			color: black;
			font-family: calibri;
			text-decoration: none;
			font-weight: bolder;
			font-style: italic;
			float: right;
		}
		
    </style>
<?php echo $footer; ?>