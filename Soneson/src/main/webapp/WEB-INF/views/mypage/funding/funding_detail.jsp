<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Anime Template">
    <meta name="keywords" content="Anime, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>손에손</title>
	
	<!-- 손에손 타이틀 아이콘 -->
	<link rel="shortcut icon" href="${pageContext.request.contextPath }/resources/soneson/img/header/son33.ico" type="image/x-icon">
	<script src="${pageContext.request.contextPath }/resources/soneson/js/jquery-3.7.0.js"></script>
    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Mulish:wght@300;400;500;600;700;800;900&display=swap"
    rel="stylesheet">

    <!-- Css Styles -->
   	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/soneson/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/soneson/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/soneson/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/soneson/css/plyr.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/soneson/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/soneson/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/soneson/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/main/css/happy/global.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/mypage/css/admin_mypage.css" rel="stylesheet">
    <!-- 류우성 CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/user/style.css" type="text/css">
    
    <style>
    
   	h6  {
   		display: flex;
   	} 
   	
   	.contents {
   		font-size: 15px;
   		color: lightblack;
   		margin-bottom: 7px;
   	}
   	
   	.anime__review__item__text{
   		border: 1px solid rgba(0, 0, 0, 0.3);
   	}
   	
   	.anime__review__item__text span {
   		color: #F86453;
   		font-weight: bold;
   	}
   	
   	.user_follow_btn a {
   		bottom: 65px;
   		display: inline-block;
	    background: white;
	    padding: 6px 20px;
	    letter-spacing: 2px;
	    border-radius: 2px;
	    margin-right: 14px;
	    -webkit-transition: all, 0.3s;
	    -o-transition: all, 0.3s;
	    transition: all, 0.3s;
	    border: 1px solid red;
	   	color: #F86453;
	   	font-weight: bold;
   	}	
   
   
   .success_jpg {
	    width: 160px;
	    height: 120px;
	    font-size: 88px;
	    margin: 0px 20px 0px 0px;
	}
	
	.anime__review__item__text {
	    padding: 18px 30px 16px 20px;
	    border: 1px solid rgba(0, 0, 0, 0.3);
	    position: relative;
	    border-radius: 0px;
	}
	
	.InfoBox__InfoTitle {
    	gap: 40px;
	}
	
	
	
	    
    </style>
    
    <script type="text/javascript">
    	let pointColor = "#F86453";
    
    	function confirmCancel(fund_idx) {
    		let result = confirm(fund_idx  + "번 후원 취소를 원하시나요?");
    		
    		if(result) {
    			location.href = "fundingCancel?fund_idx=" + fund_idx;
    			
    		}
    	}
    	
		
		
	</script>
	
</head>

<body>

	<jsp:include page="../../inc/header.jsp"></jsp:include>

    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>
    

    
<!--     <section class="blog-details spad"> -->
<!--         <div class="container"> -->
<!-- 		    <div class="blog__details__comment"> -->
<!-- 				<div class="blog__details__comment__item"> -->
<!-- 				    <div class="blog__details__comment__item__text"> -->
<!-- 				        <h3> -->
<!-- 				        	<b>후원 상세 페이지</b> -->
<!-- 				        </h3> -->
<!-- 				    </div> -->
<!-- 				</div> -->
<!-- 			</div> -->
<!-- 		</div> -->
<!-- 	</section> -->
	

    <!-- Product Section Begin -->
	<section class="product-page spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-11">
					<div class="product__page__content">
					
				        <div class="anime__details__review">
							<div class="anime__review__item">
								<div class="" id="project_review_content">
									<div class="">
									<a href="${pageContext.request.contextPath }/soneson/popular">
										<img src="${pageContext.request.contextPath }/resources/user/success.jpg" class="success_jpg">		
									</a>
										
									후원일 2023.11.27 | 후원번호 1000001<br>내 옆에 고양이 다이어리 2024<br>• [선물A] 고양이 다이어리 + 다꾸 고양이 스티커 2매
									<span>39,000원 결제 예정</span>
									</div>
								</div>
							</div>
						</div>
						<br>
						
						
						<div class="anime__details__review">
							<div class="anime__review__item">
								<div class="anime__review__item__text" id="project_review_content">
									<div class="contents">
									<h6><b>후원 정보</b></h6>
									<br>
										<div class="contents__InfoBox__InfoItem">
											<dl class="InfoBox__InfoItem">
												<dt class="InfoBox__InfoTitle">펀딩 상태</dt>
												<dd class="InfoBox__InfoContentWrap"><span>펀딩 성공</span></dd>
											</dl>
											<dl class="InfoBox__InfoItem">
												<dt class="InfoBox__InfoTitle">후원 번호</dt>
												<dd class="InfoBox__InfoContentWrap">2000001</dd>
											</dl>
											<dl class="InfoBox__InfoItem">
												<dt class="InfoBox__InfoTitle">후원 날짜</dt>
												<dd class="InfoBox__InfoContentWrap">2023. 11. 01</dd>
											</dl>
											<dl class="InfoBox__InfoItem">
												<dt class="InfoBox__InfoTitle">펀딩 마감일</dt>
												<dd class="InfoBox__InfoContentWrap">2023. 11. 08</dd>
											</dl>
										
										</div>	
									</div>
								</div>
							</div>
						</div>
						<br>
						
						
						<div class="anime__details__review">
							<div class="anime__review__item">
								<div class="anime__review__item__text" id="project_review_content">
									<div class="contents">
									<h6><b>선물 정보</b></h6>
									<br>
										<div class="contents__InfoBox__InfoItem">
											<dl class="InfoBox__InfoItem">
												<dt class="InfoBox__InfoTitle">선물 구성</dt>
												<dd class="InfoBox__InfoContentWrap">• 화이트&블랙 머그컵(x 1)<br></dd>
											</dl>
											<dl class="InfoBox__InfoItem">
												<dt class="InfoBox__InfoTitle">후원 금액</dt>
												<dd class="InfoBox__InfoContentWrap">27,000원</dd>
											</dl>
											<dl class="InfoBox__InfoItem">
												<dt class="InfoBox__InfoTitle">추가 후원금</dt>
												<dd class="InfoBox__InfoContentWrap">15,000원</dd>
											</dl>
											<dl class="InfoBox__InfoItem">
												<dt class="InfoBox__InfoTitle">전달 상태</dt>
												<dd class="InfoBox__InfoContentWrap">2023. 11. 22 전달 완료</dd>
											</dl>
										
										</div>	
									</div>
								</div>
							</div>
						</div>
						<br>
						
						
						<div class="anime__details__review">
							<div class="anime__review__item">
								<div class="anime__review__item__text" id="project_review_content">
									<div class="contents">
									<h6><b>결제 정보</b></h6>
									<br>
										<div class="contents__InfoBox__InfoItem">
											<dl class="InfoBox__InfoItem">
												<dt class="InfoBox__InfoTitle">결제 수단</dt>
												<dd class="InfoBox__InfoContentWrap">신한카드(***1) 일시불<br></dd>
											</dl>
											<dl class="InfoBox__InfoItem">
												<dt class="InfoBox__InfoTitle">결제 금액</dt>
												<dd class="InfoBox__InfoContentWrap">42,000원</dd>
											</dl>
											<dl class="InfoBox__InfoItem">
												<dt class="InfoBox__InfoTitle">결제 상태</dt>
												<dd class="InfoBox__InfoContentWrap">2023. 11. 09 결제 완료</dd>
											</dl>
										</div>	
									</div>
								</div>
							</div>
						</div>
						<br>
						
						
						<div class="anime__details__review">
							<div class="anime__review__item">
								<div class="anime__review__item__text" id="project_review_content">
									<div class="contents">
									<h6><b>배송 정보</b></h6>
									<br>
										<div class="contents__InfoBox__InfoItem">
											<dl class="InfoBox__InfoItem">
												<dt class="InfoBox__InfoTitle">받는 사람</dt>
												<dd class="InfoBox__InfoContentWrap">춘식이<br></dd>
											</dl>
											<dl class="InfoBox__InfoItem">
												<dt class="InfoBox__InfoTitle">연락처</dt>
												<dd class="InfoBox__InfoContentWrap">010-1111-2222</dd>
											</dl>
											<dl class="InfoBox__InfoItem">
												<dt class="InfoBox__InfoTitle">주소</dt>
												<dd class="InfoBox__InfoContentWrap">(47246) 부산광역시 부산진구 동천로 109 (부전동) 삼한골든게이트 7층</dd>
											</dl>
										</div>	
									</div>
								</div>
							</div>
						</div>
						<br>
						
						<div align="center">
							<button type="button" class="btn btn-primary"
							onclick="location.href='fundingList'">&nbsp;&nbsp;&nbsp;&nbsp;후원 목록 보기&nbsp;&nbsp;&nbsp;&nbsp;</button>
						</div>			
						
						<div align="center">
							<a class="cancel" href=fundingCancel
							onclick='return confirm("후원을 취소하시겠어요? 선착순 마감된 선물은 취소 후 다시 후원할 수 없습니다. 신중하게 고민하고 취소를 결정해주세요.");'>
							   	후원을 취소하시겠어요?
							</a>
						</div>				
						
					                        
						<div id="user_content">
						<!-- ajax -->
						</div>
											
					</div>
				</div>
			</div>
		</div>
	</section>
	
	
	<!-- Product Section End -->
	
	<jsp:include page="../../inc/footer.jsp"></jsp:include>

	<!-- Search model Begin -->
	<div class="search-model">
		<div class="h-100 d-flex align-items-center justify-content-center">
			<div class="search-close-switch"><i class="icon_close"></i></div>
			<form class="search-model-form">
				<input type="text" id="search-input" placeholder="Search here.....">
			</form>
		</div>
	</div>
	<!-- Search model end -->

	<!-- Js Plugins -->
	<script src="${pageContext.request.contextPath }/resources/soneson/js/jquery-3.3.1.min.js"></script>
	<script src="${pageContext.request.contextPath }/resources/soneson/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath }/resources/soneson/js/player.js"></script>
	<script src="${pageContext.request.contextPath }/resources/soneson/js/jquery.nice-select.min.js"></script>
	<script src="${pageContext.request.contextPath }/resources/soneson/js/mixitup.min.js"></script>
	<script src="${pageContext.request.contextPath }/resources/soneson/js/jquery.slicknav.js"></script>
	<script src="${pageContext.request.contextPath }/resources/soneson/js/owl.carousel.min.js"></script>
	<script src="${pageContext.request.contextPath }/resources/soneson/js/main.js"></script>

</body>

</html>