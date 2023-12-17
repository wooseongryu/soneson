//function adjustContainerHeight() {
//    let container = $(".cfXECD");
//    let contentHeight = container.children().outerHeight(true);
//    container.height(contentHeight);
//}

//$(".iqsxGc").each(function() {
//	    let contentHeight = $(this).find(".ehQhai").outerHeight(true);
//	    $(this).height(contentHeight);
//	});

//default Img
//function defaultImg(tagId) {
//	console.log(tagId.id);
//	$("#" + tagId.id).attr('src','${pageContext.request.contextPath }/resources/soneson/img/project/default.png');
//}

$(function() {
//	debugger;
//	$(".iqsxGc").each(function() {
//	    let contentHeight = $(this).find(".ehQhai").outerHeight(true);
//	    $(this).height(contentHeight);
//	});

	$(".iqsxGc").click(function() {
//		debugger;
//		$(this).find(".ehQhai").removeClass("ehQhai");
//		$(this).find(".gcTNai").removeClass("gcTNai");
//		let nextSection = $(this).siblings(".gcTNai");
//		nextSection.removeClass(".gcTNai");
//		nextSection.addClass("ehQhai");
//		$(this).removeClass("ehQhai");
	});
	
	$("#scrollButton").click(function() {
        $("#reward").get(0).scrollIntoView({ behavior: 'smooth' });
    });
	
});


