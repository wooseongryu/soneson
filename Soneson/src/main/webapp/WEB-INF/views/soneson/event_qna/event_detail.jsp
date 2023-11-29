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
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/soneson/css/customerStyle.css" type="text/css">
</head>
<style>
	#eventCate_subject {
		color: #F86453; 
		font-weight: bold;
	}
	#eventCate_category {
		padding-right: 0px !important;
	}
	
	#eventCate_subject_category {
		font-weight: bold;
		color: rgba(0,0,0,0.7);
	}
	#event_status {
		 border: none;
		 color: #fff; 
		 background: #F86453;
	}
	
</style>



<body>
	<!-- header 위치 -->
	<jsp:include page="../../inc/header.jsp"></jsp:include>
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
						<div class="row justify-content-end">
							<c:forEach var="eventCate" items="${eventCateList }">
								<div class="col-1" id="eventCate_category">
									<div class="customer_category" align="center" name="${eventCate.eventCate_subject}" 
										onclick="location.href='eventList?eventCate_idx=${eventCate.eventCate_idx}'" >
										<h6 id="eventCate_subject_category">${eventCate.eventCate_subject }</h6>
									</div>
								</div>
							</c:forEach>
						</div>
					</div>
				</div>
			</div>
			<div class="row d-flex justify-content-center">
				<div class="col-lg-8">
					<div class="blog__details__title">
						<h2>${event.event_title }</h2>
						<span id="eventCate_subject">${event.eventCate_subject }</span>
						<c:if test="${!empty event.event_startDt }">
							<span><button type="button" id="event_status">&nbsp;${eventDetail.event_status}&nbsp;</button></span><br>
							<span>${event.event_startDt } ~ ${event.event_endDt }</span>
						</c:if>
						<hr>
					</div>
				</div>
				<div class="col-lg-8">
					<div class="blog__details__content">
						<div class="blog__details__text">
							<p>${fn:replace(event.event_content, replaceChar, "<br/>")}</p>
                       	</div>
                   	</div>
                </div>
				<div class="col-lg-8">
					<div class="blog__details__content">
						<div class="blog__details__text">
							<c:if test="${!empty event.event_poster}"> 
								<img src ="${pageContext.request.contextPath }/resources/upload/${event.event_poster }">
                        	</c:if>
                       	</div>
                   	</div>
                </div>
            </div>
        </div>
    </section>
    <!-- Blog Details Section End -->
    
	<!-- footer -->
	<jsp:include page="../../inc/footer.jsp"></jsp:include>


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