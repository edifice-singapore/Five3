/*
FIONA

DataType:
data-emsg : error message
data-skip : 0/1 (if is 1 ,then skip validation)
data-format:  (for input text only) : email ,  number/decimal
*/

$.fn.myform_validation = function( options , callback ){

	options = $.extend({
		myform: $(this),
		msgtype: 'alert', //alert, display
		type: 'none', //ajax , none(return true/false)
	}, options);
		

	var remove_error = function( this_form ){
		if(options.msgtype=='display'){
			//remove all existing error message.
			this_form.find('.highlight_error').removeClass('highlight_error');		
			this_form.find('div.sf_error_msg').remove();		
		}
		return;
	};
	
	var expend_error = function( this_elem , error_message , isfocus){

		error_message = (typeof error_message==='undefined' || error_message=='undefined' || error_message=='')? 'This field is required.' : error_message;

		if(options.msgtype=='display'){
			//add message
			this_elem.addClass('highlight_error');
			this_elem.after('<div class="sf_error_msg">'+error_message+'</div>');
			$('html, body').animate({scrollTop: this_elem.offset().top - 100});			
		}else{
			alert(error_message);
		}
		return;
	};

	var sf_validate_inputtext = function( this_elem ){
		
		var skip = this_elem.attr('data-skip');
		var emsg = this_elem.attr('data-emsg');
		
		if(skip=='1'){return true;}

		var field_value = $.trim( this_elem.val() );
		if(typeof field_value === 'undefined' || field_value==''){
			expend_error( this_elem , emsg );
			this_elem.focus();
			return false;
		}
		
		var format = this_elem.attr('data-format');
		if(format=='email'){
			var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
			if(reg.test(field_value) == false){
				expend_error( this_elem , 'Invalid email address.' );
				this_elem.focus();
				return false;
			}
		}else if(format=='number' || format=='numdecimal' || format=='decimal'){
			/*
			var intRegex = /^\d+$/;
			if(!intRegex.test(field_value)) {
				this_elem.expend_error('Invalid number.');
				this_elem.focus();
				return false;
			}
			*/

			if($(this).val() < 0){
				expend_error( this_elem , 'Negative value is not allow.' );
				this_elem.focus();
				return false;
			}
		}
		
		return true;
	}

	var sf_validate_textarea = function( this_elem ){

		var skip = this_elem.attr('data-skip');
		var emsg = this_elem.attr('data-emsg');

		if(skip=='1'){return true;}

		var field_value = $.trim( this_elem.val() );
		if(field_value.length == 0){
			expend_error( this_elem , emsg );
			this_elem.focus();
			return false;
		}
		return true;
	}

	var sf_validate_radio = function( this_elem ){

		var skip = this_elem.attr('data-skip');
		var emsg = this_elem.attr('data-emsg');

		if(skip=='1'){return true;}

		var name = this_elem.attr('name');
		var value = $('input[name='+name+']:checked').val();
		if(typeof value === 'undefined'){
			expend_error( $('div#sferror_'+name) , emsg );
			//expend_error( this_elem , emsg );
			return false;
		}
		return true;
	}

	var sf_validate_checkbox = function( this_elem ){

		var skip = this_elem.attr('data-skip');
		var emsg = this_elem.attr('data-emsg');

		if(skip=='1'){return true;}

		var name = this_elem.attr('name');
		var group = this_elem.attr('data-group');
		if(typeof group === 'undefined'){
			//single checkbox
			if(! $('input[name='+name+']').is(':checked')){
				expend_error( $('div#sferror_'+name) , emsg );
				//expend_error( this_elem , emsg );
				return false;
			}
		}else{
			//console.log('total:'+ $('input[data-group='+group+']:checked').length );
			if( $('input[data-group='+group+']:checked').length > 0 ){
				//ok
			}else{
				expend_error( $('div#sferror_'+group) , emsg );
				return false;
			}
		}
		return true;
	}

	var sf_validate_select = function( this_elem ){

		var skip = this_elem.attr('data-skip');
		var emsg = this_elem.attr('data-emsg');

		if(skip=='1'){return true;}
		
		if( this_elem.val()=='' ){
			expend_error( this_elem , emsg );
			this_elem.focus();
			return false;
		}
		return true;
	}


	var check_form = function(){
		
		var all_fields = options.myform.find('input,select,textarea');
		var pass = true;
		
		//clear previous error msg
		remove_error( options.myform );

		$.each(all_fields, function(){
			
			if(this.tagName=='SELECT'){
				pass = sf_validate_select( $(this) );
				
			}else if(this.tagName=='INPUT'){
				
				var the_type = $(this).attr('type');
				
				if(the_type=='text'){
					pass = sf_validate_inputtext( $(this) );
				
				}else if(the_type=='radio'){
					pass = sf_validate_radio( $(this) );
				
				}else if(the_type=='checkbox'){
					pass = sf_validate_checkbox( $(this) );
				}
				
			}else if(this.tagName=='TEXTAREA'){
				pass = sf_validate_textarea( $(this) );
			}
			
			if(pass==false)
				return false; //stop loop
		});
				
		return pass;
	}
	
	//start 
	options.myform.submit(function(e){
		//console.log('testing..........');
		var validation_pass = check_form();
		if( !validation_pass )
			return false;
		else{
			if(options.type=='ajax'){
				e.stopPropagation();
				e.preventDefault();
				
				try {
				  return callback();
				} catch (_error) {}
				
			}else{
				try {
				  return callback();
				} catch (_error) {}
			}
		}		
	});
	
};

//===============================================================================================
function sfAlertBox(html_message,refreshpage){

	if(!html_message)return;

	$("body").append('<div class="floatymessage"><div class="floatymessage_content" style="width:300px;"></div></div><div class="floatymessagebg"></div>');
	var closebtn = '<br><br><a href="#" class="alertbox_close">Close</a>';
	$(".floatymessage_content").html(html_message+closebtn);
	$('.alertbox_close').click(function(){
		$('.floatymessage').remove();
		$('.floatymessagebg').remove();
		
		if(refreshpage==true){
			location.reload();
		}
	});
}

function sfProcessBoxStart(){
	$("body").append('<div class="floatymessage"><div class="floatymessage_content"></div></div><div class="floatymessagebg"></div>');
	$(".floatymessage_content").html('Loading...<br/><img src="js/sfvalidation/progressbar.gif">');
}

function sfProcessBoxStop(){
	$('.floatymessage').remove();
	$('.floatymessagebg').remove();
}

