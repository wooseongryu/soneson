<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
				
				
				<!--// discout-setting -->
				
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
				<div class="rollbanner">
					<div class="inrolb swiper-container swiper-container-initialized swiper-container-vertical">
			            <div class="swiper-wrapper" style="transition-duration: 0ms; transform: translate3d(0px, -120px, 0px);"><div class="swiper-slide swiper-slide-duplicate swiper-slide-next swiper-slide-duplicate-prev" data-swiper-slide-index="1" style="height: 40px;">
											<div class="text" style="background:url('https://img.megabox.co.kr/SharedImg/flagBanner/2023/04/21/gwehxwSczxpyPt48whc3EZr3Fgx9ASVh.png') 0 50% no-repeat; background-size:80px 30px;">토스페이 메가박스 첫 결제 시 최대 1천원 즉시할인</div>
										</div>
			            	
				                
									
									
										<div class="swiper-slide swiper-slide-duplicate-active" data-swiper-slide-index="0" style="height: 40px;">
											<div class="text" style="background:url('https://img.megabox.co.kr/SharedImg/flagBanner/2023/10/10/znMs1PqIBr3kJMRX2JzgEXcJ1UBiFE3O.png') 0 50% no-repeat; background-size:80px 30px;">결제 시 최대 1만원 혜택!</div>
										</div>
									
								
				            
				                
									
									
										<div class="swiper-slide swiper-slide-prev swiper-slide-duplicate-next" data-swiper-slide-index="1" style="height: 40px;">
											<div class="text" style="background:url('https://img.megabox.co.kr/SharedImg/flagBanner/2023/04/21/gwehxwSczxpyPt48whc3EZr3Fgx9ASVh.png') 0 50% no-repeat; background-size:80px 30px;">토스페이 메가박스 첫 결제 시 최대 1천원 즉시할인</div>
										</div>
									
								
				            
			            <div class="swiper-slide swiper-slide-duplicate swiper-slide-active" data-swiper-slide-index="0" style="height: 40px;">
											<div class="text" style="background:url('https://img.megabox.co.kr/SharedImg/flagBanner/2023/10/10/znMs1PqIBr3kJMRX2JzgEXcJ1UBiFE3O.png') 0 50% no-repeat; background-size:80px 30px;">결제 시 최대 1만원 혜택!</div>
										</div></div>
			            <div class="pgbx swiper-pagination-fraction"><span class="swiper-pagination-current">1</span> / <span class="swiper-pagination-total">2</span></div>
			        <span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span></div>
				</div>
				
				<div class="tit-util mt40">
					<h3 class="tit small">결제수단선택 <!-- 결제수단선택 --></h3>

					<div class="right">
						<input type="checkbox" id="same_use_payment">
						<label for="same_use_payment" id="label_use_payment">다음에도 이 결제수단 사용 <!-- 다음에도 이 결제수단 사용 --></label>
					</div>
				</div>

				<!-- seat-section -->
				
					<div class="rollbanner">
						<div class="inrolb swiper-container swiper-container-initialized swiper-container-vertical">
				            <div class="swiper-wrapper" style="transition-duration: 0ms; transform: translate3d(0px, -120px, 0px);"><div class="swiper-slide swiper-slide-duplicate swiper-slide-next swiper-slide-duplicate-prev" data-swiper-slide-index="1" style="height: 40px;">
												<div class="text" style="background:url('https://img.megabox.co.kr/SharedImg/flagBanner/2023/04/21/gwehxwSczxpyPt48whc3EZr3Fgx9ASVh.png') 0 50% no-repeat; background-size:80px 30px;">토스페이 메가박스 첫 결제 시 최대 1천원 즉시할인</div>
											</div>
				            	
					                
										
										
											<div class="swiper-slide swiper-slide-duplicate-active" data-swiper-slide-index="0" style="height: 40px;">
												<div class="text" style="background:url('https://img.megabox.co.kr/SharedImg/flagBanner/2023/10/10/znMs1PqIBr3kJMRX2JzgEXcJ1UBiFE3O.png') 0 50% no-repeat; background-size:80px 30px;">결제 시 최대 1만원 혜택!</div>
											</div>
										
									
					            
					                
										
										
											<div class="swiper-slide swiper-slide-prev swiper-slide-duplicate-next" data-swiper-slide-index="1" style="height: 40px;">
												<div class="text" style="background:url('https://img.megabox.co.kr/SharedImg/flagBanner/2023/04/21/gwehxwSczxpyPt48whc3EZr3Fgx9ASVh.png') 0 50% no-repeat; background-size:80px 30px;">토스페이 메가박스 첫 결제 시 최대 1천원 즉시할인</div>
											</div>
										
									
					            
				            <div class="swiper-slide swiper-slide-duplicate swiper-slide-active" data-swiper-slide-index="0" style="height: 40px;">
												<div class="text" style="background:url('https://img.megabox.co.kr/SharedImg/flagBanner/2023/10/10/znMs1PqIBr3kJMRX2JzgEXcJ1UBiFE3O.png') 0 50% no-repeat; background-size:80px 30px;">결제 시 최대 1만원 혜택!</div>
											</div></div>
				            <div class="pgbx swiper-pagination-fraction"><span class="swiper-pagination-current">1</span> / <span class="swiper-pagination-total">2</span></div>
				        <span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span></div>
					</div>
				
				<!--// seat-section -->

				<!--
					체크 표시 on 클래스 추가

					<button type="button">

					<button type="button" class="on">
				-->
				<div class="select-payment ty2">

					<div class="radio-group">
						<span class="bg-chk small">
							<input type="radio" name="radio_payment" id="rdo_pay_credit" value="credit" checked="checked"> <label for="rdo_pay_credit">신용/체크카드</label>
						</span>
						<span class="bg-chk small">
							<input type="radio" name="radio_payment" id="rdo_pay_easypay" value="easypay"> <label for="rdo_pay_easypay">카카오페이</label>
<!-- 							<input type="radio" name="radio_payment" id="rdo_pay_easypay" value="easypay"> <label for="rdo_pay_easypay">간편결제</label> -->
						</span>
						
					</div>



					<!-- 2020.02.07 수단별 알림 문구 추가 -->
					<div class="select-mobile-info" style="display:none">
						<ul class="dash-list">
							<li>결제하신 금액은 익월 휴대폰 요금에 합산되어 청구되며, 휴대폰 결제한도는 통산사별 월 누적 이용 제한에 따라 적용됩니다.</li>
							<li>매월 말일 23시30분 ~ 익월 00시 10분까지(40분간)는 시스템 점검시간으로 이용이 어려울 수 있습니다.</li>
							<li>휴대폰 결제와 관련된 추가 안내는 FAQ를 참조해주세요.</li>
						</ul>
					</div>

					<div class="select-toss-info" style="display:none">
						<ul class="dash-list">
							<li>토스에 등록된 계좌와 신용/체크카드로 쉽고 편리하게 결제하세요.</li>
							<li>토스페이 결제 시 토스에서 제공하는 카드사 별 무이자, 청구할인, 결제 이벤트만 제공됩니다.</li>
						</ul>
					</div>

					<div class="select-kakao-info" style="display:none">
						<ul class="dash-list">
							<li>즉시할인 신용카드 적용이 불가합니다.</li>
						</ul>
					</div>

					<div class="select-payco-info" style="display:none">
						<ul class="dash-list">
							<li>즉시할인 신용카드 적용이 불가합니다.</li>
							<li>페이코 포인트 결제 시 결제금액의 1% 추가적립 됩니다.</li>
						</ul>
					</div>

					<div class="select-naverpay-info" style="display:none">
						<ul class="dash-list">
							<li>네이버페이 결제 시, 카드사 할인 및 포인트 사용이 불가할 수 있습니다.</li>
							<li>네이버페이 결제 시 결제금액의 1%가 적립 됩니다.
								<br>(네이버 유입1% / 기타경로 0.2%)
								<br>상기 적립율은 2023년 6월 1일 결제 건부터 적용됩니다.
							</li>
						</ul>
					</div>

					<div class="select-chai-info" style="display:none">
						<ul class="dash-list">
							<li>CHAI는 은행 계좌만 등록하면 차이 비밀번호로 안전하게 결제할 수 있는 간편결제 서비스입니다.<br>(은행 점검시간인 23:30 ~ 00:30에는 이용이 어려울 수 있습니다.)</li>
							<li>결제 취소 또는 부분 취소 시 차이머니로 환불됩니다.</li>
							<li>결제 이용 한도는 1회 200만원입니다.</li>
							<li>이벤트를 통해 혜택을 적용 받은 주문의 경우, 즉시 할인 기준 금액에 따라 부분환불이 불가능할 수도 있습니다.</li>
						</ul>
					</div>

					<div class="select-settlebank-info" style="display:none">
						<ul class="dash-list">
							<li>내통장결제는 본인명의의 계좌를 최초 1회 등록 후 비밀번호 입력만으로 간편하게 이용할 수 있는 현금결제 서비스 입니다.</li>
							<li>은행 점검시간의 경우 내통장결제서비스 이용이 불가합니다.</li>
						</ul>
					</div>

					<div class="select-kj-info" style="display:none;">
						<ul class="dash-list">
							<li>메가박스 신용/체크카드(광주카드) 선할인은 즉시할인 버튼 선택 시에만 적용 가능합니다.</li>
						</ul>
					</div>
				</div>

				<dl class="term-list" id="terms" style="display: none;">
					<dt>
						<span class="bg-chk small">
							<input type="checkbox" id="agree"><label for="agree">결제대행 서비스 약관 필수 동의</label>
						</span>
					</dt>
					<dd class="tit">
						전자금융거래 이용약관<!-- 전자금융거래 이용약관 -->
						<a href="javascript:void(0);" onclick="openTermsPop('one')">내용보기</a>
					</dd>
					<dd class="tit">
						개인정보 수집 및 이용 안내<!-- 개인정보 수집 및 이용 안내 -->
						<a href="javascript:void(0);" onclick="openTermsPop('two')">내용보기</a>
					</dd>
					<dd class="tit">
						개인정보 제공 및 위탁 안내<!-- 개인정보 제공 및 위탁 안내 -->
						<a href="javascript:void(0);" onclick="openTermsPop('three')">내용보기</a>
					</dd>
				</dl>
			</div>
			<!--// seat-section -->

			<!-- seat-result -->
			<div class="seat-result">
				<div class="wrap">

					<div class="tit-area type2">
						<!--
							관람 등급 표시
							<span class="movie-grade small age-all">전체 관람가</span>
							<span class="movie-grade small age-12">12세 이상 관람가</span>
							<span class="movie-grade small age-15">15세 이상 관람가</span>
							<span class="movie-grade small age-19">청소년 관람 불가</span>
							<span class="movie-grade small age-no">미정</span>
						-->
						<span class="movie-grade small age-all" id="admisClassNm">${param.movie_rated }</span>

						<p class="tit" id="movieNm">${param.movie_nameK }</p>
<!-- 						<p class="cate" id="playKindNm">2D(자막)</p> -->
						<p class="theater" id="brchNm">${param.theater_name }/${param.screen_name }</p>
						<p class="date">
							<span id="playDe">${param.sche_date }</span>
<!-- 							<em id="dowNm">(월)</em>  -->
							<br>
							<span class="time" id="playTime" style="color: #c4c4c4">
<!-- 								<i class="iconset ico-clock-white"></i> -->
								${param.sche_start_time } ~ ${param.sche_end_time }
							</span>
						</p>
<!-- 						<span class="movie-grade small age-all" id="admisClassNm">전체관람가</span> -->

<!-- 						<p class="tit" id="movieNm">(자막) 그대들은 어떻게 살 것인가</p> -->
<!-- 						<p class="cate" id="playKindNm">2D(자막)</p> -->
<!-- 						<p class="theater" id="brchNm">원주센트럴/컴포트3관_리클라이너</p> -->
<!-- 						<p class="date"><span id="playDe">2023.10.30</span><em id="dowNm">(월)</em> <span class="time" id="playTime"><i class="iconset ico-clock-white"></i>17:10~19:23</span></p> -->
					</div>
					<div class="price-process">
<!-- 						<div class="box"><div class="data"><span class="tit">청소년 <em>1</em></span><span class="price">11,000</span></div> -->
						<div class="box">
							<div class="data">
								<span class="tit"></span>
<%-- 								<span class="tit">${param.allTickets }</span> --%>
							</div>
							<!--
							<div class="data">
								<span class="tit">일반 <em>1</em></span>
								<span class="price">20,000</span>
							</div>

							<div class="data">
								<span class="tit">어린이 <em>2</em></span>
								<span class="price">6,000</span>
							</div>
							-->
							<div class="all">
								<span class="tit">금액 <!-- 금액 --></span>
								<span class="price"><em>${param.moneySum }</em> <span>원 <!-- 원 --></span></span>
							</div>
						</div>

<!-- 						<div class="box discout-box"> -->

<!-- 							<div class="all"> -->
<!-- 								<span class="tit">할인적용 할인적용</span> -->
<!-- 								<span class="price"><em>0</em> 원 원</span> -->
<!-- 							</div> -->
<!-- 						</div> -->
					</div>

					<div class="pay-area">
<!-- 						<div class="add-thing"> -->
<!-- 							<p class="tit">추가차액 추가금액</p> -->

<!-- 							<div class="money">0</div> -->
<!-- 						</div> -->
						<div class="pay">
							<p class="tit">최종결제금액 <!-- 최종결제금액 --></p>

							<div class="money">
								<em>${param.moneySum }</em>
								<span>원 <!-- 원 --></span>
							</div>
						</div>
						<div class="payment-thing">
							<span class="tit">결제수단 <!-- 결제수단 --></span>
							<span class="thing">신용/체크카드</span>
						</div>
					</div>

					<div class="btn-group">
						<a href="javascript:history.back()" class="button" id="btn_booking_back" title="이전">이전</a>
<!-- 						<button class="button" id="btn_booking_back" title="이전">이전 이전</button> -->
							
<!-- 								<a href="#" w-data="600" h-data="400" class="button active btn-modal-open" id="btn_booking_pay" onclick="startPay()" title="결제">결제</a> -->
<!-- 								<a href="#" w-data="600" h-data="400" class="button active btn-modal-open" id="btn_booking_pay" onclick="requestPay()" title="결제">결제</a> -->
<!-- 								<a href="javscript:requestPay()" w-data="600" h-data="400" class="button active btn-modal-open" id="btn_booking_pay" title="결제">결제</a> -->
								<button w-data="600" h-data="400" class="button active btn-modal-open" id="btn_booking_pay" onclick="requestPay()" title="결제">결제</button>
<!-- 								<button id="kakao">카카오 결제</button> -->
								
					</div>
				</div>
			</div>
			<!--// seat-result -->
			
			
				
					
					<div class="adbox">
						<div class="swiper-container payBannerSwiper swiper-container-initialized swiper-container-horizontal">
							<div class="swiper-wrapper" style="transform: translate3d(-1860px, 0px, 0px); transition-duration: 0ms;"><div class="swiper-slide swiper-slide-duplicate swiper-slide-next swiper-slide-duplicate-prev" data-swiper-slide-index="4" style="width: 310px;">
										
											
												<a href="https://event.thessencard.co.kr/megabox" target="_blank" title="할인혜택 확인하기" classname="eventBtn">
<!-- 													<img style="width:310px;" src="https://img.megabox.co.kr/SharedImg/cpBanner/2023/10/13/rzyo2JqBMmVulA5blXaXEJkXt3tWmlEH.png" alt=" "> -->
												</a>
											
											
										
									</div>
								
									<div class="swiper-slide swiper-slide-duplicate-active" data-swiper-slide-index="0" style="width: 310px;">
										
											
												<a href="https://megabox.co.kr/event/detail?eventNo=14234" target="_blank" title="" classname="eventBtn">
<!-- 													<img style="width:310px;" src="https://img.megabox.co.kr/SharedImg/cpBanner/2023/10/10/PzI6j8DM87lZ4z6O7Z5d2kaeXptwLNjM.png" alt=" "> -->
												</a>
											
											
										
									</div>
								
									<div class="swiper-slide" data-swiper-slide-index="1" style="width: 310px;">
										
											
												<a href="https://megabox.co.kr/event/detail?eventNo=14164" target="_blank" title="" classname="eventBtn">
<!-- 													<img style="width:310px;" src="https://img.megabox.co.kr/SharedImg/cpBanner/2023/09/26/3V1MA6zKA8G8V78QXLafxQTmUIvSemDQ.jpg" alt=" "> -->
												</a>
											
											
										
									</div>
								
									<div class="swiper-slide" data-swiper-slide-index="2" style="width: 310px;">
										
											
											
												<a href="https://www.megabox.co.kr/event/detail?eventNo=11263" target="_top" title="할인쿠폰 받기" classname="eventBtn">
<!-- 													<img style="width:310px;" src="https://img.megabox.co.kr/SharedImg/cpBanner/2023/05/12/UBtabkSOoEm1tXZCblLLGAeLKX9Qnkei.jpg" alt=" "> -->
												</a>
											
										
									</div>
								
									<div class="swiper-slide" data-swiper-slide-index="3" style="width: 310px;">
										
											
											
												<a href="https://www.megabox.co.kr/event/detail?eventNo=13381" target="_top" title="보험료 확인하기" classname="eventBtn">
<!-- 													<img style="width:310px;" src="https://img.megabox.co.kr/SharedImg/cpBanner/2023/05/30/c43LWLcvVKWG3WZTVUsL3n82n0BXISmE.jpg" alt=" "> -->
												</a>
											
										
									</div>
								
									<div class="swiper-slide swiper-slide-prev swiper-slide-duplicate-next" data-swiper-slide-index="4" style="width: 310px;">
										
											
												<a href="https://event.thessencard.co.kr/megabox" target="_blank" title="할인혜택 확인하기" classname="eventBtn">
<!-- 													<img style="width:310px;" src="https://img.megabox.co.kr/SharedImg/cpBanner/2023/10/13/rzyo2JqBMmVulA5blXaXEJkXt3tWmlEH.png" alt=" "> -->
												</a>
											
											
										
									</div>
								
							<div class="swiper-slide swiper-slide-duplicate swiper-slide-active" data-swiper-slide-index="0" style="width: 310px;">
										
											
												<a href="https://megabox.co.kr/event/detail?eventNo=14234" target="_blank" title="" classname="eventBtn">
<!-- 													<img style="width:310px;" src="https://img.megabox.co.kr/SharedImg/cpBanner/2023/10/10/PzI6j8DM87lZ4z6O7Z5d2kaeXptwLNjM.png" alt=" "> -->
												</a>
											
											
										
									</div></div>
						<span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span></div>
						<div class="swiper-pagination swiper-pagination-clickable swiper-pagination-bullets"><span class="swiper-pagination-bullet swiper-pagination-bullet-active" tabindex="0" role="button" aria-label="Go to slide 1"></span><span class="swiper-pagination-bullet" tabindex="0" role="button" aria-label="Go to slide 2"></span><span class="swiper-pagination-bullet" tabindex="0" role="button" aria-label="Go to slide 3"></span><span class="swiper-pagination-bullet" tabindex="0" role="button" aria-label="Go to slide 4"></span><span class="swiper-pagination-bullet" tabindex="0" role="button" aria-label="Go to slide 5"></span></div>
					</div>
					
					
				
			

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