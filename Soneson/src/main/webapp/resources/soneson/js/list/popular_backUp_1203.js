//function load_list(search)




function restDay() {
	$(".dday").each(function() {
		let now = new Date();
		let serverEndDate = new Date($(this).data("end_date"));
		let goalRate = $(this).data("goal_rate");
		let dday = new Date(serverEndDate.getTime() + serverEndDate.getTimezoneOffset() * 60 * 1000);
		let timeDifference = dday - now;
		let restDay = Math.floor(timeDifference / (1000 * 60 * 60 * 24)) + 1;
		
		if(restDay == 0) {
			$(this).html("오늘 마감");
			$(this).addClass("deadline")
		} else {
			$(this).html(restDay + "일 남음");
		}
		
//		else if(restDay < 0 && goalRate < 100) {
//			$(this).html("펀딩 무산");
//		} else if(restDay < 0 && goalRate >= 100) {
//			$(this).html("펀딩 성공");
//		}
		
		
	});
}
	
//let goalRate = 0;

function goalRateCss() {
	$(".goalRate").each(function() {
		let goalRate = $(this).data("goal_rate");
		
		console.log(goalRate);
		
		 $(this).css("width", goalRate + "%");
//		 $(this).style.setProperty('--goal-rate', goalRate + '%');
		
		
//		$(this).style.setProperty('--goal-rate', goalRate + '%');
//		$(this).style.width = goalRate + "%";
	})
	
}
//function goalRateCss() {
//    $(".lcwTLC").each(function () {
//        let goalRate = $(this).data("goal_rate");
//
//        console.log(goalRate);
//        
//
//        // .goalRate::after의 width를 동적으로 변경
//        let style = `
//            .goalRate::after {
//                width: ${goalRate}%;
//            }
//        `;
//        
//    });
//}

function removeAllStyles() {
    // 모든 <style> 태그 삭제
    $("style").remove();
}

//function goalRateCss() {
//    
////    removeAllStyles();
//	
//    
//    $(".lcwTLC").each(function () {
//		
//		$("head").removeAttr("style");	
//	
//	
//        let goalRate = $(this).data("goal_rate");
//
//        console.log(goalRate);
//
//
//    });
//}

//function removeGoalRateStyle() {
//    // 현재 문서에 있는 모든 <style> 태그를 순회
//    $("<style>").each(function () {
//        // 각 <style> 태그의 내용을 가져옴
//        var styleContent = $(this).html();
//
//        // 만약 .goalRate::after 가 포함되어 있다면 해당 <style> 태그 삭제
//        if (styleContent.includes(".goalRate::after")) {
//            $(this).remove();
//        }
//    });
//}

	
$(function() {
	restDay();
	
	console.log("바보");
	

	
	goalRateCss();
	
	$(".goalRateBtn").click(function() {
//		debugger;
//		$(".faghXt").show();
		
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
	
//	$(".grChoice > div").click(function() {
	$(".jKGUjM").click(function() {
		debugger;
		let grChoice = $(this).text();
		$(".title-wrapper").text(grChoice);
	});
//	$(".faghXt").addEventListner("click", (e) => {console.log(e.target);});
	
	$(document).mouseup(function (e){
		if($(".faghXt").has(e.target).length === 0){
			$(".faghXt").hide();
			$(this).removeClass("modalOn");
			$(this).addClass("modalOff");
		}
	});
	
	
	
});