<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%-- <link href="${pageContext.request.contextPath }/resources/main/css/tumble/app.81892d40d14a84165880.css" rel="stylesheet"> --%>
<!--     개인 css 엄성윤 -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
<script src="${pageContext.request.contextPath }/resources/soneson/js/jquery-3.7.0.js"></script>
<%-- <script src="${pageContext.request.contextPath }/resources/soneson/js/jquery-3.3.1.min.js"></script> --%>
<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script> 

<!--     개인 css 엄성윤 -->
<link href="${pageContext.request.contextPath }/resources/soneson/css/main/main.css" rel="stylesheet">
 
 
<link rel="shortcut icon" href="${pageContext.request.contextPath }/resources/soneson/img/header/son33.ico" type="image/x-icon">
<title>손에손</title>

<script>
// slider
   $(function() {
        $(".slider").bxSlider({
        	nextText:'<i class="bi bi-chevron-compact-right" style="color: #ffffff"></i>',
//         	nextText:'<i class="fa-light fa-chevron-right" style="color: #a6abaa;"></i>',
        	prevText:'<i class="bi bi-chevron-compact-left" style="color: #ffffff"></i>',
//         	prevText:'<i class="fa-light fa-chevron-left" style="color: #a6abaa;"></i>'
			autohover: true,
			auto: true,
			autoControls: true,
			stopAutoOnClick: true,
			pager: true,
			startText: '<i class="bi bi-play-fill" style="color: #ffffff"></i>',
			stopText: '<i class="bi bi-pause-fill" style="color: #ffffff"></i>'
        	
        });
	});

//board
	$(function() {
		$(".slider-bo").bxSlider({
			minSlides: 2,
			maxSlides: 5,
			slideWidth:200,
			slideMargin: 20,
			pager:false,
			controls: true,
			auto: false,
			autohover: true,
			moveSlides:5,
			speed:500,
			touchEnabled : (navigator.maxTouchPoints > 0),
			nextText:'<i class="bi bi-chevron-right" style="color: #1c1c1c"></i>',
        	prevText:'<i class="bi bi-chevron-left" style="color: #1c1c1c"></i>'
			
		});
		
		$(".bx-viewport").on("mouseenter", " ul > li > span.over > a", function() {
			$(this).parent().addClass("on");
			if ($(this).hasClass("mvInfo")) {
				$(this).parent().removeClass("down");
				$(this).parent().addClass("up");
			}
			if ($(this).hasClass("rsv")) {
				$(this).parent().removeClass("up");
				$(this).parent().addClass("down");
			}
		});
	
		$(".bx-viewport").on("mouseleave", " ul > li > span.over", function() {
			$(this).removeClass("on");
		});
		
	});
// 	function click() {
// 		alert("클릭됨");
// 	}
	
	

</script>
<style>
	.header_right {
/* 		text-align: right; */
	/* 	padding: 20px 30px 15px 20px; */
/* 		padding: 20px 15px 15px 20px; */
/* 		width: 1092px; */
		margin: 0 auto;
	}
</style>

</head>
<body>

<jsp:include page="../inc/header.jsp"></jsp:include>


<div class="slideWrap" id="slider">
		<ul class="slider" id="slide">
			<li><img alt="" src="${pageContext.request.contextPath }/resources/soneson/img/main_slider/main_slider1.jpg"></li>
			<li><img alt="" src="${pageContext.request.contextPath }/resources/soneson/img/main_slider/main_slider2.jpg"></li>
			<li><img alt="" src="${pageContext.request.contextPath }/resources/soneson/img/main_slider/main_slider3.jpg"></li>
		</ul>
	</div>
	
<!-- --------------------------board-----------------------------	 -->

	<div class="mainList">
		<div class="title">인기 프로젝트</div>
		<div class="main-movie-list">
			<div class="boardWrap">
				<ul class="slider-bo">
					<c:forEach var="movie" items="${movieList }">
						<li data-movie_code="${movie.movie_code }">
<!-- 							<div class="slider-over"> -->
								<span class="over">
<!-- 								<span class="over-like"><a href="#"><i class="bi bi-heart"></i></a></span> -->
<%-- 									<a href="bookingStepOne?movie_code=${movie.movie_code }" class="rsv"><span class="over-rsv">예매하기</span></a> --%>
									<a href="bookingStepOne?movie_code=${movie.movie_code }" class="rsv">예매하기</a>
<%-- 									<a href="movieDetail?movie_code= ${movie.movie_code }&pageNum=1" class="mvInfo"><span class="over-info">상세보기</span></a> --%>
									<a href="movieDetail?movie_code= ${movie.movie_code }&pageNum=1" class="mvInfo">상세보기</a>
								</span>
								<img alt="" src="${movie.movie_poster }">
<!-- 							</div> -->
							<div class="mv-desc">
								<c:choose>
 									<c:when test="${movie.movie_rated eq '전체관람가'}">
                               			<span class = "rate-all"></span>
                               		</c:when>
                               		<c:when test="${movie.movie_rated eq '12세이상관람가'}">
                               			<span class = "rate-12"></span>
                               		</c:when>
                               		<c:when test="${movie.movie_rated eq '15세이상관람가'}">
                               			<span class = "rate-15"></span>
                               		</c:when>
                               		<c:when test="${movie.movie_rated eq '18세이상관람가'}">
                               			<span class = "rate-18"></span>
                               		</c:when>
                               </c:choose>
<!-- 								<span class="rate-12">12세관람가</span> -->
								<span title="${movie.movie_nameK }">${movie.movie_nameK }</span>

							</div>
						</li>
					</c:forEach>
				</ul>
			</div>
		</div>
	</div>


<jsp:include page="../inc/footer.jsp"></jsp:include>

</body>
</html>