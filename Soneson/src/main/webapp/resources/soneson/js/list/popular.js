$(".grChoice > div").click(function() {
	let grChoice = $(this).text();
	$(".goalRateBtn .title-wrapper").text(grChoice);
	// cuuQUM 선택
	// cJCVrl 그외
//	$(".grChoice > div").removeClass("cuuQUM");
	$(".grChoice > div").removeClass("cuuQUM");
	$(".grChoice > div").addClass("cJCVrl");
	$(this).addClass("cuuQUM");
	$(this).removeClass("cJCVrl");
	$(".goalRateBtn").addClass("modalOff");
	$(".goalRateBtn").removeClass("modalOn");
	$(".faghXt").hide();
});



function restDay() {
	$(".dday").each(function() {
		let now = new Date();
		let serverEndDate = new Date($(this).data("end_date"));
//		let goalRate = $(this).data("goal_rate");
		let dday = new Date(serverEndDate.getTime() + serverEndDate.getTimezoneOffset() * 60 * 1000);
		let timeDifference = dday - now;
		let restDay = Math.floor(timeDifference / (1000 * 60 * 60 * 24)) + 1;
		
		if(restDay == 0) {
			$(this).html("오늘 마감");
			$(this).addClass("deadline")
		} else {
			$(this).html(restDay + "일 남음");
		}
		
	});
}
	

function goalRateCss() {
	$(".goalRate").each(function() {
		let goalRate = $(this).data("goal_rate");
		
		console.log(goalRate);
		
		 $(this).css("width", goalRate + "%");
	})
	
}

	
$(function() {
	restDay();
	
	console.log("바보");
	

	
	goalRateCss();
	
	$(".goalRateBtn").click(function() {
		
		// 모달 켜져 있을 때 누르면
		if($(this).hasClass("modalOn")) {
			$(".faghXt").hide();
			$(this).removeClass("modalOn");
			$(this).addClass("modalOff");
		} else { // 모달 꺼져 있을 때 누르면
			$(this).addClass("modalOn");
			$(".faghXt").show();
			$(this).removeClass("modalOff");
			$(this).addClass("modalOn");
		}
		
	});
	
	
	$(document).mouseup(function (e){
		if($(".faghXt").has(e.target).length === 0){
			$(".faghXt").hide();
			$(this).removeClass("modalOn");
			$(this).addClass("modalOff");
		}
	});
	
	
	
});