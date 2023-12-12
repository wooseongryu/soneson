<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>손에손</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/soneson/css/step5.css" type="text/css">
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
<script src= "${pageContext.request.contextPath }/resources/soneson/js/jquery-3.7.0.js"></script>
<!-- 다음 주소 API -->
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>



//default Img
function defaultImg(tagId) {
	console.log(tagId.id);
	$("#" + tagId.id).attr('src','${pageContext.request.contextPath }/resources/soneson/img/project/default.png');
}

//계좌등록
function authAccountCreator() {
	let requestUri = "https://testapi.openbanking.or.kr/oauth/2.0/authorize?"
		+ "response_type=code"
		+ "&client_id=4066d795-aa6e-4720-9383-931d1f60d1a9"
		+ "&redirect_uri=http://localhost:8081/soneson/callback"
//			+ "&scope=login inquiry transfer oob"
		+ "&scope=login inquiry transfer"
		+ "&state=12345678901234567890123456789012"
		+ "&auth_type=0";
	window.open(requestUri, "authWindow", "width=600, height=800");	
	
	
	//등록을 하고 꺼지면 여기서 계속 이어나갈 수 가 있나??
	//controller에서 session에 저장되니까 그 값을 가지고 getAuthAccount(access_token, user_seq_no); 바로 호출하고싶음
	
}

//새로 만들 함수
let access_token = "";
let user_seq_no = "";
function selectAuthInfo() {
	
	access_token = "${sessionScope.access_token}";
	user_seq_no = "${sessionScope.user_seq_no}";
	getAuthAccount(access_token, user_seq_no);
	
}


function getAuthAccount(access_token, user_seq_no) {
//		debugger;
	console.log("access_token: " + access_token);
	console.log("user_seq_no: " + user_seq_no);
//		console.log(access_token + ", " + user_seq_no);
	$.ajax({
		type: "GET",
		url: "selectAccountInfo",
		data: {
			"access_token": access_token,
			"user_seq_no": user_seq_no
		},
		dataType: "json",
		success: function(data) {
//				console.log(data);
			let infoList = data.res_list;
			let str = "";
			$("#funding-authAccountInfo").empty();
			str += '<div class="authInfo-addBtn">'
			str += 		'<button class="authInfoBtn" type="button" onclick="authAccountCreator()">계좌 추가 등록</button>'
			str += '</div>'
			str += '<input type="hidden" name="user_name" value=" ' + data.user_name + ' ">'
			
			for(info of infoList) {
				console.log(info);
				str += '<label for="accountVal' + info.fintech_use_num + '">'
				str += '<input type="radio" id="accountVal' + info.fintech_use_num + '" class="account-radioBtn" name="pro_userAuth" value="' + info.fintech_use_num + '">'
				str += 		'<div class="authInfo-writeDIv">'
				str += 			'<div class="userAuth-info">'
				str += 				'<div class="user-authInfo">'
				str += 					'<h6>'
// 				str += 						'<i class="bi bi-coin"></i>&emsp;'
				str += 						info.account_holder_name
				str += 					'</h6>'
				str += 				'</div>'
				str += 			'</div>'
				str += 			'<div>'
				str += 				'<p>'
				str += 					info.bank_name + '&emsp;' + info.account_num_masked
				str += 				'</p>'
				str += 			'</div>'
				str += 		 '</div>'
				str += '</label>'
			}
			
			$("#funding-authAccountInfo").append(str);
			
			
			
		},
		error:function(request, status, error){
			console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		}
	});//ajax끝
	
	
}

//주소검색
function search_address_window() { 
	new daum.Postcode({
		oncomplete: function(data) {
			let zonecode = data.zonecode;
			let address = data.address;
			
			if (data.buildingName != "") {
				address += " (" + data.buildingName + ")";
			}
			
			$("#input-mainAdd").val(address);
			$("#input-postCode").val(zonecode);
		}
	}).open();
}

//주소변경
// function changeFudingAddress(user_id) {
// 	console.log("바꿀 배송지 유저 : " + user_id);
// 	window.open('selectFundingAddress?id=' + user_id,"authWindow", "width=400, height=600");
	
	
// }



//전화번호
function onlynumberic(event) {
    event.target.value = event.target.value.replace(/[^0-9]/g, "");
}

function checkPhoneNumber(formId, printId) {
	let isValid = false;
	
	let phoneNumber = $("#" + formId).val();
	
	let msg = "";
	let color = "";
	
	let numberRegex = /^01([0|1|6])[0-9]{8}$/;

	if(numberRegex.exec(phoneNumber)) {
		msg = "가능한 번호";
		color = "green";
		isValid = true;
	} else {
		msg = "010/011/016으로 시작하는 숫자로만 이루어진 값을 입력하세요.";
		color = "red";
		isValid = false;
	}
	
	$("#" + printId).html(msg);
	$("#" + printId).css("color", color);
	
	return isValid;
}

$(function() {
	
	let endDt = new Date("${pro.end_date}");
	let paymentDt = new Date(endDt.setDate(endDt.getDate() + 7));
	console.log("으아렁니라ㅓㄴ이ㅏ렁니ㅏㄹ" + String(paymentDt.toISOString().slice(0,10)));
	$("#payStartDate").text(String(paymentDt.toISOString().slice(0,10)));

	
	$("#funding-inputPhoneNum").on("blur", function() {
		checkPhoneNumber("funding-inputPhoneNum", "funding-checkPhoneNum");
	});
});

// function selectAddress() {
// 	let a = $("input[type=radio][name=]:ischecked").val();
	
	
// }

//후원버튼
function successFunding() {
	debugger;
	let finNumber = $("input[type=radio][name=pro_userAuth]:checked").val();
	let user_name = $("input[type=radio][name=pro_userAuth]:checked").next().val();
	let address_idx = $("[name=address_idx]").val();
	console.log($("[name=reward_code]").val());
	console.log($("[name=reward_amount]").val());
	console.log($("[name=project_code]").val());
	console.log($("[name=address_idx]").val());
	console.log($("#payStartDate").text());
	
	console.log("으앙 " + user_name);
	console.log("뭐야" + finNumber);
	if(address_idx == "" || address_idx == undefined) {
		alert("배송지를 입력해주세요.");
		return;
		
	}
	
	if(finNumber == "" || finNumber == "0" || finNumber == undefined) {
		alert("계좌를 선택해주세요.");
		return;
	}
	location.href="";
	
}


function checkedValue() {
	debugger;
	let finNumber = $("input[type=radio][name=pro_userAuth]:checked").val();
	
	console.log($("[name=reward_code]").val());
	console.log($("[name=reward_amount]").val());
	console.log($("[name=project_code]").val());
	console.log($("[name=user_name]").val());
	console.log($("#payStartDate").text());
	
	console.log("뭐야" + finNumber);
	if(finNumber == "" || finNumber == "0") {
		alert("계좌를 선택해주세요.");
		return false;
	}
	
	
	
	return false;
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
<!-- 	<form action="successFunding" method="get" onsubmit="return checkedValue()"> -->
		<div class="quick-reserve">
	
			<h2 class="tit">후원하기</h2>
	
			<!-- seat-select-section -->
			<div class="seat-select-section">
				<!-- seat-section -->
				<div class="seat-section h-auto">
					<div class="discout-setting">
						<div class="discout-list">
	
						</div>
					</div>
					<!--리워드 정보 -->
					<div class="tit-util mt40">
						<h3 class="tit small">리워드 정보 <!-- 결제수단선택 --></h3>
						<input type="hidden" value="${reward.reward_code }" name="reward_code" id="fund_reward_code">
						<input type="hidden" value="${reward.reward_amount }" name="reward_amount" id="fund_reward_amount">
						<input type="hidden" value="${pro.project_code }" name="project_code" id="fund_project_code">
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
					<c:if test="${reward.reward_isDeliv eq 'Y'}">
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
											<input type="hidden" value="${user.address_idx }" id="addressInfo" name="address_idx">
											<button type="button" data-bs-toggle="modal" data-bs-target="#addressModal">변경</button>
										</div>
										<div>
											<p>[ ${user.address_code } ]&emsp;${user.address_main }&emsp;${user.address_sub }</p>
											<p>${user.address_reciver_phone }</p>
										</div>
									</div>
								</div>	
								<!-- Modal -->
								<div class="modal fade" id="addressModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
									<div class="modal-dialog modal-dialog-scrollable">
								    	<div class="modal-content">
								      		<div class="modal-header">
								        		<h5 class="modal-title" id="addressModalLabel">배송지 선택</h5>
		<!-- 						        		<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">완료</button> -->
								      		</div>
								      		<div class="modal-body">
								      			<c:forEach var="address" items="${addressList }" varStatus="status">
													<input type="radio" id="address${address.address_idx }" class="address-radioBtn" name="pro_userAuth" value="${status.index }"<c:if test="${address.address_idx eq user.address_idx }">checked</c:if>>
								      				<label for="address${address.address_idx }" class="radio_label">
														<div class="radio-group">
															<div class="select-address">
																<h6>${address.address_reciver }</h6>
															</div>
															<div>
																<p>[ ${address.address_code } ]&emsp;${address.address_main }&emsp;${address.address_sub }</p>
																<p>${address.address_reciver_phone }</p>
															</div>
														</div>
													</label>
								      			</c:forEach>
								    		</div>
								      		<div class="modal-footer">
								        		<button type="button" data-bs-dismiss="modal" onclick="selectAddress()">완료</button>
								      		</div>
										</div>
									</div>
								</div>
							</c:when>
							<c:otherwise>
								<div class="select-payment ty2">
									<div class="radio-group">
										<div class="select-address">
											<input type="text" placeholder="받는 사람" class="addressInput">
											<button type="button" onclick="inputAddress()">저장</button>
										</div>
										<div class="search-address">
											<input type="text" class="addressInput" id="input-postCode" readonly>
											<input type="text" class="addressInput" id="input-mainAdd" placeholder="주소" readonly>
											<input type="button" class="searchBtn" value="검색" onclick="search_address_window()">
										</div>
										<div class="select-address">
											<input type="text" class="addressInput" id="input-subAdd" placeholder="상세 주소">
										</div>
										<div class="select-address">
											<input type="text" class="addressInput" placeholder="연락처" maxlength="11" id="funding-inputPhoneNum" onkeyup="onlynumberic(event)">
										</div>
										<span id="funding-checkPhoneNum"></span>
									</div>
								</div>	
							
							</c:otherwise>
						</c:choose>
					</c:if>
					<div class="tit-util mt40">
						<h3 class="tit small">결제계좌 선택</h3>
					</div>
					<!-- 나중에 if문 안에 넣을 div  -->
					<!-- 내일 핀테크 정보 받아오기 테이블 만들고 name 다시 바꿔야함 위에 ajax에도 -->
						<div class="projectItem-form"  id="funding-authAccountInfo">
	<%-- 						<input type="hidden" name="user_name" value="${userInfo.user_name }"> --%>
							<div class="authInfo-addBtn">
								<button class="authInfoBtn" type="button" onclick="authAccountCreator()">계좌 추가 등록</button>
							</div>
							<c:forEach var="auth" items="${userInfo.res_list }">
								<label for="accountVal${auth.fintech_use_num }">
									<input type="radio" id="accountVal${auth.fintech_use_num }" class="account-radioBtn" name="pro_userAuth" value="${auth.fintech_use_num}">
									<input type="hidden" id="accountVal${auth.account_holder_name }" name="user_name" value="${auth.account_holder_name}">
									<div class="authInfo-writeDIv">
										<div class="userAuth-info">
											<div class="user-authInfo">
												<h6>
													${auth.account_holder_name }
												</h6>
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
						</div>
						<!-- //div 끝 -->		
					<c:choose>
						<c:when test="${not empty fintechInfo.access_token }">
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
								<span class="thing" id="payStartDate"></span>
							</div>
						</div>
						<div class="btn-group">
							<a href="javascript:history.back()" class="button" id="btn_booking_back" title="이전">이전</a>
								<button w-data="600" h-data="400" class="button active btn-modal-open" id="btn_booking_pay" onclick="successFunding()" title="결제">결제</button>
						</div>
					</div>
				</div>
				<!--// seat-result -->
			</div>
			<!--// seat-select-section -->
		</div>
<!-- 	</form>	 -->
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

</body>
</html>