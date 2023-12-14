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
    
<%--     <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/mypage/css/admin_mypage.css" rel="stylesheet"> --%>
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
   		border-radius: 0px;
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
	    
    </style>
    
    <script type="text/javascript">
    	let pointColor = "#F86453";
    
    	
    	
		
		
	</script>
	
</head>

<body>

	<jsp:include page="../../inc/header.jsp"></jsp:include>

    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>
    

    
    <section class="blog-details spad">
        <div class="container">
		    <div class="blog__details__comment">
				<div class="blog__details__comment__item">
				    <div class="blog__details__comment__item__text">
				        <h3>
				        	<b>후원 현황</b>
				        </h3>
				    </div>
				</div>
			</div>
		</div>
	</section>
	

    <!-- Product Section Begin -->
	<section class="product-page spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-11">
					<div class="product__page__content">
					
				        <div class="container">
						    <div class="blog__details__comment">
								<div class="blog__details__comment__item">
								    <div class="blog__details__comment__item__text">
								        <h6>
								        <span style="color: #F86453">3</span>건의 후원 내역이 있습니다.
		                           		<div class="style__SearchInputWrapper-zxsodr-15 hbYMFx">
											<input placeholder="검색어를 입력해주세요." class="style__SearchInput-zxsodr-16 jPMsmJ">
											<div class="style__SearchButton-zxsodr-17 bolWec">
												<svg class="style__SearchIcon-zxsodr-34 dtngnQ" width="48" height="48" viewBox="0 0 48 48" fill="none" xmlns="http://www.w3.org/2000/svg">
													<path fill-rule="evenodd" clip-rule="evenodd" d="M29.9979 32.9819C27.3165 34.9694 23.9582 36.0788 20.3642 35.9089C12.0892 35.5176 5.69811 28.4922 6.08938 20.2171C6.48064 11.9421 13.5061 5.55107 21.7811 5.94234C30.0561 6.33361 36.4472 13.359 36.0559 21.6341C35.889 25.1636 34.5152 28.3505 32.3522 30.8144L39.4908 38.6856L37.1205 40.8353L29.9979 32.9819ZM32.6597 21.4735C32.3571 27.8728 26.9241 32.8152 20.5248 32.5127C14.1254 32.2101 9.183 26.7771 9.48558 20.3777C9.78816 13.9784 15.2212 9.03597 21.6205 9.33855C28.0199 9.64113 32.9623 15.0741 32.6597 21.4735Z" fill="black">
													</path>
												</svg>
											</div>
										</div>
		                           		
		                           		</h6>
									</div>
								</div>
							</div>
						</div>
						<br>
						
						<div class="anime__details__review">
							<h6><b>후원 진행중(1)</b></h6>
							<br>
							<div class="anime__review__item">
								<div class="anime__review__item__text" id="project_review_content">
									<div class="contents">
									<a href="${pageContext.request.contextPath }/soneson/popular">
										<img src="${pageContext.request.contextPath }/resources/user/success.jpg" class="success_jpg">		
									</a>
									
										후원일 2023.11.27 | 후원번호 1000001
										<br>
										내 옆에 고양이 다이어리 2024
										<br>
										• [선물A] 고양이 다이어리 + 다꾸 고양이 스티커 2매
										
										<br>
										<b>39,000원 결제 예정</b>
										<br>
									<span>결제 예정일 2023. 12. 15</span>
									</div>
								</div>
							</div>
						</div>
						<br>
						
						<div class="anime__details__review">
							<h6><b>후원 성공(1)</b></h6>
							<br>
							<div class="anime__review__item">
								<div class="anime__review__item__text" id="project_review_content">
									<div class="contents">
										후원일 2023.11.01 | 후원번호 2000001
									</div>
									<h6>길냥이 유메의 냥생역전을 위한 첫걸음!</h6>
									• 화이트&블랙 머그컵(x 1)<br>
									42,000원 결제 완료
									<br>
									<br>	
									<span>선물 전달 완료일 2023. 11. 22</span>
									<div class="user_follow_btn">
										<a href="#">후기 작성</a>
									</div>
								</div>
							</div>
						</div>
						<br>
						
						<div class="anime__details__review">
							<h6><b>후원 실패(1)</b></h6>
							<br>
							<div class="anime__review__item">
								<div class="anime__review__item__text" id="project_review_content">
									<div class="contents">
										후원일 2023.10.31 | 후원번호 3000001
									</div>
									<h6>일상 속 '향기 한 잔 [캄파눌라]'</h6>
									• 캄파눌라 고블렛(x 1) 옵션 : 화이트<br>
									54,000원 결제 예약 취소
									<br>
									<br>
									결제 예약 취소일 2023. 11. 01
								</div>
							</div>
						</div>
						<br>
												
						
					                        
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