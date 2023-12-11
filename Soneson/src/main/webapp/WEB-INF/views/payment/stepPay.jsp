<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>손에손</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/soneson/css/step5.css" type="text/css">
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
<script src= "${pageContext.request.contextPath }/resources/soneson/js/jquery-3.7.0.js"></script>
<script>
//default Img
function defaultImg(tagId) {
	console.log(tagId.id);
	$("#" + tagId.id).attr('src','${pageContext.request.contextPath }/resources/soneson/img/project/default.png');
}

</script>
    

</head>
<body class="body-iframe">

	<jsp:include page="../inc/header.jsp"></jsp:include>
	
	<br>
	<br>
	
	<div id="preloder">
        <div class="loader"></div>
    </div>
    

	<div class="inner-wrap" style="padding-top:40px; padding-bottom:100px;">
	<!-- quick-reserve -->
	<div class="quick-reserve">

		<h2 class="tit">후원하기</h2>


<!-- cti 일때만 출력 -->
<div class="cti-area" style="display:none">
    <p>이름</p>
    <input maxlength="20" name="riaName" type="text" title="이름 출력" class="input-text a-c w120px" placeholder="이름" value="">

    <p>생년월일</p>
    <input maxlength="8" name="riaBirthday" type="text" title="생년월일 출력" class="input-text a-c w150px" placeholder="6자리 또는 8자리" value="">

    <p>휴대폰번호</p>
    <input maxlength="11" name="riaMobileNo" type="text" title="휴대폰번호 출력" class="input-text a-c w150px" placeholder="- 없이 입력" value="">

    <p>회원</p>
    <input name="riaMemberYn" type="text" title="회원여부 출력" class="input-text a-c w100px" value="" readyonly="readyonly">

	
		
	
</div>

		<!-- seat-select-section -->
		<div class="seat-select-section">
			<!-- seat-section -->
			<div class="seat-section h-auto">

<!-- 				<div class="tit-util"> -->
<!-- 					<h3 class="tit small">관람권 및 할인적용관람권 및 할인적용</h3> -->

<!-- 					<div class="right"> -->
<!-- 						<button type="button" class="button gray-line small" id="btn_booking_init"><i class="iconset ico-reset-small"></i>초기화초기화</button> -->
<!-- 					</div> -->
<!-- 				</div> -->

				<!-- discout-setting -->
				
					<div class="discout-setting">
						<div class="discout-list">

						</div>
					</div>
				
				
				<!--리워드 정보 -->
				<div class="tit-util mt40">
					<h3 class="tit small">리워드 정보 <!-- 결제수단선택 --></h3>

					<div class="right">
					</div>
				</div>
				<div class="select-payment ty2">

					<div class="radio-group">
						<table>
							<tr>
								<th>리워드 구성</th>
								<td>${reward.reward_explain}</td>
							</tr>
							<tr>
								<th></th>
								<td>${reward.reward_item_name}</td>
							</tr>
							<tr>
								<th>리워드 금액</th>
								<td>${reward.reward_amount} 원</td>
							</tr>
						</table>
<!-- 						<p></p> -->
<%-- 						<p>${reward.reward_item_name}</p> --%>
<%-- 						<b>선물금액 : </b>${reward.reward_amount} 원 --%>
					</div>
				</div>	
				
				<!-- 후원자 정보 -->
				<div class="tit-util mt40">
					<h3 class="tit small">후원자 정보 <!-- 결제수단선택 --></h3>

					<div class="right">
					</div>
				</div>
				<div class="select-payment ty2">

					<div class="radio-group">
						<table>
							<tr>
								<th>연락처</th>
								<td>${user.user_phone}</td>
							</tr>
							<tr>
								<th>이메일</th>
								<td>${user.user_email}</td>
							</tr>
						</table>
						<div class="search-address">
							<p>
								* 위 연락처와 이메일로 후원 관련 소식이 전달됩니다.<br>
								* 연락처 및 이메일 변경은 설정 > 계정 설정에서 가능합니다.
							</p>
						</div>
					</div>
				</div>	
				<!-- 배송 정보 -->
				<div class="tit-util mt40">
					<h3 class="tit small">배송지 정보 <!-- 결제수단선택 --></h3>

					<div class="right">
					</div>
				</div>
				<c:choose>
					<c:when test="${not empty user.address_main }">
						<div class="select-payment ty2">
							<div class="radio-group">
								<div class="select-address">
									<h6>${user.address_reciver }</h6>
									<button type="button">변경</button>
								</div>
								<div>
									<p>[ ${user.address_code } ]&emsp;${user.address_main }&emsp;${user.address_sub }</p>
									<p>${user.address_reciver_phone }</p>
								</div>
							</div>
						</div>	
						
					</c:when>
					<c:otherwise>
					
					</c:otherwise>
				</c:choose>
						<div class="select-payment ty2">
							<div class="radio-group">
								<div class="select-address">
									<input type="text" placeholder="받는 사람" class="addressInput">
									<button type="button">등록</button>
								</div>
								<div class="search-address">
									<input type="text" class="addressInput" id="input-postCode" readonly>
									<input type="text" class="addressInput" id="input-mainAdd" placeholder="주소" readonly>
									<input type="button" class="searchBtn" value="검색" id="">
								</div>
								<div class="select-address">
									<input type="text" class="addressInput" id="input-subAdd" placeholder="상세 주소">
								</div>
								<div class="select-address">
									<input type="text" class="addressInput" placeholder="연락처">
								</div>
							</div>
						</div>	
				<div class="tit-util mt40">
					<h3 class="tit small">결제계좌 선택</h3>
				</div>
				<!-- 나중에 if문 안에 넣을 div  -->
				<!-- 내일 핀테크 정보 받아오기 -->
						<input type="hidden" name="user_name" value="${userInfo.user_name }">
							<button class="authInfoBtn" type="button" onclick="authAccountCreator()">계좌 추가 등록</button>
							<c:forEach var="auth" items="${userInfo.res_list }">
								<label for="accountVal${auth.fintech_use_num }">
									<input type="radio" id="accountVal${auth.fintech_use_num }" class="account-radioBtn" name="pro_userAuth" value="${auth.fintech_use_num}"<c:if test="${pro.pro_userAuth eq auth.fintech_use_num }">checked</c:if>>
									<div class="authInfo-writeDIv">
										<div class="userAuth-info">
											<div class="user-authInfo">
												<h5>
													<i class="bi bi-coin"></i>&emsp;${auth.account_holder_name }
												</h5>
											</div>
										</div>
										<div>
											<p>
												${auth.bank_name }&emsp;${auth.account_num_masked }
											</p>
										</div>
									</div>
								</label>
							</c:forEach>
					<!-- //div 끝 -->		
				<c:choose>
					<c:when test="">
					</c:when>
					<c:otherwise>
						<div class="authInfo-writeDIv">
								<div class="userAuth-info">
									<div class="user-authInfo">
										<p>
											후원금을 이체할 계좌를 등록해주세요.<br>
											본인인증 후 계좌등록이 가능합니다.
										</p>
									</div>
									<button class="authInfoBtn" type="button" onclick="authAccountCreator()">등록하기</button>
								</div>
							</div>
					</c:otherwise>
				</c:choose>
			</div>
			<!--// seat-section -->
			<!-- 사이드바 -->
			<div class="seat-result">
				<div class="wrap">
					<div class="tit-area type2">
						<img id="payment-img" alt="thumb" src="${pageContext.request.contextPath }/resources/upload/${pro.img_main  }" onerror="defaultImg(this)">
						<br>
						<p class="tit">${pro.title }</p>
						<p class="theater">${pro.category }</p>
					</div>
					<div class="price-process">
					</div>
					<div class="pay-area">
						<div class="pay">
							<p class="tit">최종결제금액</p>
							<div class="money">
								<em>${reward.reward_amount } </em>
								<span>원</span>
							</div>
						</div>
						<div class="payment-thing">
							<span class="tit">결제시작일</span>
							<span class="thing">계산해서 넣기...</span>
						</div>
					</div>
					<div class="btn-group">
						<a href="javascript:history.back()" class="button" id="btn_booking_back" title="이전">이전</a>
							<button w-data="600" h-data="400" class="button active btn-modal-open" id="btn_booking_pay" onclick="requestPay()" title="결제">결제</button>
					</div>
				</div>
			</div>
			<!--// seat-result -->
		</div>
		<!--// seat-select-section -->
	</div>
	<!--// quick-reserve -->
</div>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
	
<%-- 	<jsp:include page="../include/main_footer.jsp"></jsp:include> --%>
	<jsp:include page="../inc/footer.jsp"></jsp:include>
	
<%-- 	<script src="${pageContext.request.contextPath }/resources/cinepick/js/kakao.js"></script> --%>
	
	<script>
	
// 		let sche_idx = "${param.sche_idx}";
// 		let moneySum = "${param.moneySum}";
// 		let allTickets = "${param.allTickets}";
// 		let seats = "${param.seats}";
// 		let msg = "";
// 		let pg = "danal_tpay.9810030929";
// 		let pay_method = "card";
// // 		let pg = "kakaopay.TC0ONETIME";
// 		let age = "${param.age}";
// 		let ticketType = "${param.allTickets}";
		
// 		$(function(){
			
// 			ticketType = ticketType.slice(0, -1);
// 			$(".price-process .data .tit").append(ticketType);
			
// 			$(".movie-grade").addClass("age-" + age);
			
// 			$("#btn_booking_pay").mouseover(function() {

				
// 				console.log("잘 나오나?" + moneySum, sche_idx, moneySum, allTickets);
// 			});
			
// 			$("input[name='radio_payment']").change(function() {
				
// 				pg = $("#rdo_pay_easypay").is(':checked')? "kakaopay.TC0ONETIME" : "danal_tpay.9810030929";
// 				pay_method = $("#rdo_pay_easypay").is(':checked')? "kakaopay" : "card";
// 				console.log("pg는 " + pg);
// 				console.log("pay_method는 " + pay_method);
// 			});
			

			
// 		});
	
// 		function requestPay() {
// // 			alert("requestPay");

// // 			if($("#rdo_pay_easypay").is(':checked')) {
// // 				pg = "kakaopay.TC0ONETIME";
// // 				pay_method = "kakaopay";
// // 			};


// 			IMP.init('imp14320736'); // 객체 초기화. 가맹점 식별코드 전달
			
// 			IMP.request_pay({
// // 		    	pg: "kakaopay.TC0ONETIME",
// // 		    	pg: "kcp.AO09C",
// 		    	pg: pg,
// 		    	pay_method: "card",
// 		    	merchant_uid: "ORD" + getDateTimeString(),   // 주문번호
// 		    	name: "${param.movie_nameK}",
// 		    	amount: moneySum,                         // 숫자 타입
// 		    	//TODO 고쳐야 함
// // 		    	amount: 100,                         // 숫자 타입
// 		    	buyer_email: "gildong@gmail.com",
// 		    	buyer_name: "홍길동",
// 		    	buyer_tel: "010-4242-4242",
// 		    	buyer_addr: "서울특별시 강남구 신사동",
// // 		    	buyer_postcode: "01181"
// 		    }, function (rsp) { // callback
// 		      //rsp.imp_uid 값으로 결제 단건조회 API를 호출하여 결제결과를 판단합니다.
// // 		      	console.log("결과: " + rsp);
// 		      	console.log("결제 결과: " + rsp);
// 		    	if(rsp.success) {
// // 		    		let msg = "결제가 완료되었습니다.";
// 		    		msg = "결제가 완료되었습니다.";
		    		
// 					console.log("rsp.imp_uid : " + rsp.imp_uid);	    		
// 					console.log("rsp.merchant_uid : " + rsp.merchant_uid);	    
					
// 					$.ajax({
// 						type: "GET",
// 						url: "bookingPay",
// 						data: {
// 							imp_uid: rsp.imp_uid,
// 							merchant_uid: rsp.merchant_uid,
// 							paid_at : rsp.paid_at,
// 							sche_idx : sche_idx,
// 							moneySum : moneySum,
// 							allTickets : allTickets,
// 							seats : seats,
// 							user_id : "${sessionScope.sId}"
// 						},
// 						success: function(bookId) {
// // 							alert(bookId);
// 							location.href = "bookComplete?bookId="+bookId;
// // 							bookId + hidden 쓸 수 있나?
// 						}
// 					});
					
// 					// 추가
// 		    	} else {
// 		    		msg = "결제에 실패하였습니다.";
// 		    		msg += "에러 내용 : " + rsp.error_msg;
// 		    	}
// 		    	alert(msg);
// 		    });
// 		}

		
// 		// 현재 날짜 정보를 "yyyyMMdd" 형식의 문자열로 리턴하는 함수 정의
// 		function getDateTimeString() {
// 			let now = new Date();
// 			// getFullYear() : 연도, getMonth() : 월(+1 필요), getDate() : 일 
// 			// => 문자열 결합(20231101)
// 			// => 단, 월과 일의 경우 1자리 일 때 앞자리 0 추가 필요
// 			let dateTime = "" + now.getFullYear() 
// 							+ (now.getMonth() + 1 < 10 ? "0" + (now.getMonth() + 1) : now.getMonth() + 1) 
// 							+ (now.getDate() < 10 ?  "0" + now.getDate() : now.getDate())
// 							+ (now.getHours() < 10 ?  "0" + now.getHours() : now.getHours())
// 							+ (now.getMinutes() < 10 ?  "0" + now.getMinutes() : now.getMinutes())
// 							+ (now.getSeconds() < 10 ?  "0" + now.getSeconds() : now.getSeconds())
// 							;
// 			console.log(dateTime); // 20231101172821
// 			return dateTime;
// 		}
	

	</script> 

</body>
</html>