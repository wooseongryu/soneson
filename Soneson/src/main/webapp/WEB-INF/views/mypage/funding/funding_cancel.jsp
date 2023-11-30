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
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/mypage/css/admin_mypage.css" rel="stylesheet">
    <!-- 류우성 CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/user/style.css" type="text/css">
    
    <script type="text/javascript">
    	let pointColor = "#F86453";
	
    </script>
    
<style>
	.funding__cancel__date{
		margin-top: 15px;
	}
	
	.anime__review__item__text{
  		border: 1px solid rgba(0, 0, 0, 0.3);
  		border-radius: 0px;
   	}
   	
   	.creator_next_project {
   		margin-bottom: 15px;
   	}
   	
	.user_follow_btn a {
		bottom: 20px;
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
	
	.funding_detail_btn a {
		display: inline-block;
		color: rgb(0, 0, 0);
		background: white;
		padding: 6px 20px;
		letter-spacing: 2px;
		border-radius: 2px;
		margin-right: 14px;
		-webkit-transition: all, 0.3s;
		-o-transition: all, 0.3s;
		transition: all, 0.3s;
		border: 1px solid rgba(0, 0, 0, 0.3);
		
		position: absolute;
	    right: 10px;
	    bottom: 40px;
	}
	
	.funding_list {
		margin-right: 100px;
	}
	
	
</style>

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
				        	<b>후원이 취소되었습니다.</b>
				        </h3>
				        <div class="funding__cancel__date">
				        	2023년 12월 20일까지 다시 후원할 수 있습니다.
				        </div>
				    </div>
				</div>
			</div>
		</div>
	</section>
	
	<section class="product-page spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-11">
					<div class="product__page__content">
						
						<div class="anime__details__review">
							
							<div class="anime__review__item">
								<div class="anime__review__item__text" id="project_review_content">
									<div class="contents">
										후원번호 3000001가 취소되었습니다.
										<div class="funding_detail_btn">
											<a href="fundingDetail">후원 상세</a>
										</div>
										<hr>
										프로젝트 &nbsp;&nbsp; 일상 속 '향기 한 잔 [캄파눌라]'<br>
										창작자 &nbsp;&nbsp; 타다 세라믹<br>
										선택한 선물 &nbsp;&nbsp; • 캄파눌라 고블렛 (x1) 옵션 : 화이트<br>
										후원금액 &nbsp;&nbsp; 54,000원<br>
										
									</div>
								</div>
							</div>
						</div>
						<br>
						
						<div class="creator_next_project">
							이 창작자의 다음 프로젝트가 궁금하다면?
							
						</div>
						<div class="anime__review__item__text" id="project_review_content">
							타다 세라믹
							<br>
							팔로워 106명
							<div class="user_follow_btn">
								<a href="#">+ 팔로우</a>
							</div>
						</div>
						
						           
						<div id="user_content">
						<!-- ajax -->
						</div>
											
					</div>
				</div>
			</div>
		</div>
	</section>

	<br>
	
	<div class="funding_list" align="center">
		<button type="button" class="btn btn-primary"
		onclick="location.href='fundingList'">&nbsp;&nbsp;&nbsp;&nbsp;후원 목록&nbsp;&nbsp;&nbsp;&nbsp;</button>
	</div>
	
	
	
	
	
	
	
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