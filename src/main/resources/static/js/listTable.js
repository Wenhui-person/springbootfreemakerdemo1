$(function(){
	$("#ajaxtable>tbody tr:even").addClass("odd");
	
	$("#ajaxtable tr").hover(function(){
		$(this).addClass("hove");
	},function(){
		$(this).removeClass("hove");
	});	
	
	$(".querytable  tr:even").addClass("odd");
	
	$(".querytable  tr").hover(function(){
		$(this).addClass("hove");
	},function(){
		$(this).removeClass("hove");
	});
});
