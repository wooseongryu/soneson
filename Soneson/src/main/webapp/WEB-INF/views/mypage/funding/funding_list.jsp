<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>   
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>   
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
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/soneson/css/customerStyle.css" type="text/css">
    
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

    <!-- Product Section Begin -->
	<section class="product-page spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-11">
					<div class="product__page__content">
						<div class="anime__details__review">
				        	<h2 id="funding_title">후원 현황</h2>
							<h6 id="funding_category">진행중인 후원</h6>
							<span>(펀딩일 기준 5개가 조회됩니다)</span>
							<c:forEach var="userFunding" items="${userFundingList}">
								<div class="anime__review__item">
									<div class="anime__review__item__text">
										<div class="row contents" onclick="location.href = 'projectDetail?project_code=${userFunding.project_code}'">
	   										<div class="product__item__pic set-bg col-3" data-setbg="${userFunding.img_main }" 
											style="background-image: url('${userFunding.img_main}'); width: 200px; height: 200px; margin-left: 15px;">
											</div>
											<div class="col-8" style="vertical-align: middle; margin-top: 25px;">
											<span style="font-weight: bold;" >후원일 : ${fn:replace(userFunding.fund_date ,"T", " ") } | 후원번호 : ${userFunding.fund_code }</span> 
											<br>
											<br>
											<h6 style="font-weight: 600;">${userFunding.title }</h6>
											<br>
											<h6 style="font-size: small; font-weight: 500;">${userFunding.cost }원 결제 예정</h6>
											<h6 style="font-size: small; font-weight: 400;">결제 예정일까지 ${userFunding.d_day }</h6>
											</div>
										</div>
									</div>
								</div>
							</c:forEach>
						</div>
						<br>
						
<!-- 						<div class="anime__details__review"> -->
<!-- 							<h6><b>후원 성공(1)</b></h6> -->
<!-- 							<br> -->
<!-- 							<div class="anime__review__item"> -->
<!-- 								<div class="anime__review__item__text" id="project_review_content"> -->
<!-- 									<div class="contents"> -->
<!-- 										후원일 2023.11.01 | 후원번호 2000001 -->
<!-- 									</div> -->
<!-- 									<h6>길냥이 유메의 냥생역전을 위한 첫걸음!</h6> -->
<!-- 									• 화이트&블랙 머그컵(x 1)<br> -->
<!-- 									42,000원 결제 완료 -->
<!-- 									<br> -->
<!-- 									<br>	 -->
<!-- 									<span>선물 전달 완료일 2023. 11. 22</span> -->
<!-- 									<div class="user_follow_btn"> -->
<!-- 										<a href="#">후기 작성</a> -->
<!-- 									</div> -->
<!-- 								</div> -->
<!-- 							</div> -->
<!-- 						</div> -->
<!-- 						<br> -->
						
<!-- 						<div class="anime__details__review"> -->
<!-- 							<h6><b>후원 실패(1)</b></h6> -->
<!-- 							<br> -->
<!-- 							<div class="anime__review__item"> -->
<!-- 								<div class="anime__review__item__text" id="project_review_content"> -->
<!-- 									<div class="contents"> -->
<!-- 										후원일 2023.10.31 | 후원번호 3000001 -->
<!-- 									</div> -->
<!-- 									<h6>일상 속 '향기 한 잔 [캄파눌라]'</h6> -->
<!-- 									• 캄파눌라 고블렛(x 1) 옵션 : 화이트<br> -->
<!-- 									54,000원 결제 예약 취소 -->
<!-- 									<br> -->
<!-- 									<br> -->
<!-- 									결제 예약 취소일 2023. 11. 01 -->
<!-- 								</div> -->
<!-- 							</div> -->
<!-- 						</div> -->
<!-- 						<br> -->
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