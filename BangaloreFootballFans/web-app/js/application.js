$(document).ready(function(){
	$(window).load(function(){
		layoutBody();		
	});
});

function layoutBody(){
	var bh = $(window).height() - $("#header-container").height() - $("#footer-container").height()-60;
	var bt = ( $(window).height() - bh )/2;
	$("#body-container").css({"top":bt+"px", "height":bh+"px"});
}

function positionContainer(container, parent){
}