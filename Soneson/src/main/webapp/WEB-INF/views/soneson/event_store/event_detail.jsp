<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Anime Template">
    <meta name="keywords" content="Anime, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>soneson</title>

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
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/soneson/css/style.css" type="text/css">
    
   	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/soneson/css/customerStyle.css" type="text/css">
</head>

<body>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>


    <!-- Blog Details Section Begin -->
    <section class="blog-details spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-10 col-md-8" style="float: none; margin: 0 auto;">
					<div class="anime__details__review">
<!-- 						<div class="section-title"> -->
<!-- 							<h2>이벤트</h5> -->
<!-- 						</div> -->
						<div class="test" id="order_comment">
	                        <h5>
	                            <a href="eventList?eventCate_idx=1">공지</a>
	                             &nbsp;&nbsp;
	                            <a href="eventList?eventCate_idx=2">이벤트</a>
	                             &nbsp;&nbsp;
	                            <a href="eventList?eventCate_idx=3">보도자료</a>
	                        </h5>
	                    </div>
					</div>
				</div>
			</div>
			<div class="row d-flex justify-content-center">
				<div class="col-lg-8">
					<div class="blog__details__title">
						<h2>${event.event_title }</h2>
						<h6>${event.event_startDt } ~ ${event.event_endDt }</h6>
						<hr>
						<h4>${event.event_title }</h4>
					</div>
				</div>
				
				<div class="col-lg-8">
					<div class="blog__details__content">
						<div class="blog__details__text">
							<img src ="${pageContext.request.contextPath }/resources/upload/${event.event_poster }">
                       	</div>
                   	</div>
                </div>
            </div>
        </div>
    </section>
    <!-- Blog Details Section End -->



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