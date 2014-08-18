
	$(document).ready(function(){
		$(document).ready(function(){
			//Examples of how to assign the ColorBox event to elements
			$(".signin").colorbox({inline:true, width:"510px"});
			$(".signup").colorbox({inline:true, width:"510px"});
			$(".appointment_content").colorbox({inline:true, width:"520px"});
		});
		
		$(".main_navi li").hover(function(){
		$(this).toggleClass("hover");
		
	  });
	});
	
	function goBack() {
		window.history.back()
	}