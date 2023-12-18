let hideCount = 0;

function filterGoalRate(from, to) {
	if(to === undefined || to === ''){
		to = 9999;
	}
	
	if(from === ''){
		from = 0;
	}
	
	let count = $(".listCard").length;
	$(".listCard").each(function() {
		let goalRate = parseInt($(this).find(".percent").text().replace('%', ''));
	
		if(from <= goalRate && goalRate <= to){
			$(this).show();
		} else {
			$(this).hide();
			count--;
		}

	$("#projectCount").text(count);

	});
	
//	debugger;
	
}

$('#btnInputScope').click(function(){
	filterGoalRate($('#start').val(), $('#end').val());
});

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
	
	switch (this.classList[1]){
		case 'grAll': 		filterGoalRate(0);			break;
		case 'grUnder75': 	filterGoalRate(0, 75);		break;
		case 'gr75to100': 	filterGoalRate(75, 100);	break;
		case 'grOver100': 	filterGoalRate(100);		break; 
	}
	
	
	// 쌤한테 여쭤볼 부분
	/*
	if($(this).is(".grAll, .grUnder75, .gr75to100, .grOver100")) {
		
		let count = $(".listCard").length;
		$(".listCard").each(function() {
			let goalRate = parseInt($(this).find(".percent").text().replace('%', ''));
			
			if(goalRate > 75) {
				$(this).hide();
				count--; 
			} 
		});
		
	}
	
	if($(this).hasClass("gr75to100")) {
		
		$(".listCard").each(function() {
			let goalRate = parseInt($(this).find(".percent").text().replace('%', ''));
			
			if(goalRate > 75) {
				$(this).hide();
			} 
		});
	}
	*/
	
});



function restDay() {
	$(".dday").each(function() {
		let now = new Date();
		let serverEndDate = new Date($(this).data("end_date"));
//		let goalRate = $(this).data("goal_rate");
		let dday = new Date(serverEndDate.getTime() + serverEndDate.getTimezoneOffset() * 60 * 1000);
		let timeDifference = dday - now;
		let restDay = Math.floor(timeDifference / (1000 * 60 * 60 * 24)) + 1;
		let thisGoldRate = $(this).data("goal_rate");
//		debugger;
		let percentElement = $(this).siblings().children('.percent');
		
		if(restDay == 0) {
			$(this).html("오늘 마감");
			$(this).addClass("deadline")
		} else if(restDay > 0) {
			$(this).html(restDay + "일 남음");
		} else {
			percentElement.removeClass("ivYcvj");
			percentElement.addClass("ggdrCf");
			if(thisGoldRate >= 100) {
				$(this).html("펀딩 성공");
			} else {
				$(this).html("펀딩 무산");
			}
			let goalRateBar = $(this).closest(".hjCxPX").siblings(".lcwTLC").find(".goalRate");
			goalRateBar.addClass("ddayOver");
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
	
	$("#admit").click(function() {
		$(".faghXt").hide();
		$(".goalRateBtn").removeClass("modalOn");
		$(".goalRateBtn").addClass("modalOff");
	})
	
	$(".ieWwZH").click(function() {
		filterGoalRate(80, 99);
	})
	
	
});