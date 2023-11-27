<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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



<body>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

	<c:set var="pageNum" value="1" />
	<c:if test="${not empty param.pageNum }">
		<c:set var="pageNum" value="${param.pageNum }" />
	</c:if>



    <section class="product-page spad">
		<div class="container">
			<div class="row">
	            <div class="col-lg-10 col-md-8" style="float: none; margin: 0 auto;">
	                <div class="anime__details__review">
	                    <div class="section-title">
	                        <h2 align="center">공지사항</h2>
	                    </div>
						<div class="row">
							<div class="col">
								<div class="customer_category" align="center" onclick="location.href='eventMain'">
									<h6>전체</h6>
								</div>
							</div>
						<c:forEach var="eventCate" items="${eventCateList }">
							<div class="col">
								<div class="customer_category" align="center" name="${eventCate.eventCate_subject}" 
									<c:if test="${eventCate.eventCate_idx eq param.eventCate_idx}">style="color: #F86453; text-decoration : underline; text-underline-offset : 18px; text-decoration-thickness : 4px" </c:if> 
									onclick="location.href='eventList?eventCate_idx=${eventCate.eventCate_idx}'" >
									<h6>${eventCate.eventCate_subject }</h6>
								</div>
							</div>
						</c:forEach>
						</div>
						<hr>
						<div class="row">
						    <div class="col-lg-12">
								<div class="row" style="justify-content: center">
									<c:forEach var="eventDetail" items="${eventDetailList }">
										<div class="col-6" align="left" onclick="location.href='eventDetail?event_idx=${eventDetail.event_idx}'">
					                    	<span style="color: #F86453">${eventDetail.eventCate_subject}</span>
					                    	&nbsp;<span>${eventDetail.event_status}</span>
					                        <h4 style="margin: 10px 10px 10px 0px;">${eventDetail.event_title }</h4>
											<c:if test="${!empty eventDetail.event_startDt && !empty eventDetail.event_endDt }">
												<span>${eventDetail.event_startDt } ~ ${eventDetail.event_endDt }</span><br>
											</c:if>
					                    	<span>등록일 : <fmt:formatDate value="${eventDetail.event_writeDate}" pattern="yyyy-MM-dd"/></span>
										</div>
										<div class="col-6" align="right"  onclick="location.href='eventDetail?event_idx=${eventDetail.event_idx}'">
									    	<c:if test="${!empty eventDetail.event_thumbnail}"> 
												<img src ="${pageContext.request.contextPath }/resources/upload/${eventDetail.event_thumbnail }" width="150" height="150" style="margin: 10px 10px 10px 10px;">
				                        	</c:if>
										</div>
									</c:forEach>
								</div>
							</div>
						</div>
						
						<div class="product__pagination" id="pageList">
							<c:if test="${pageNum > 1 }">
								<a href="eventList?eventCate_idx=${param.eventCate_idx }&pageNum=${pageNum - 1 }"><i class="fa fa-angle-double-left"></i></a>					
							</c:if>
							<c:forEach var="i" begin="${pageInfo.startPage }" end="${pageInfo.endPage }">
								<c:choose>
									<c:when test="${pageNum eq i }">
										<a class="current-page" href="eventList?eventCate_idx=${param.eventCate_idx }&pageNum=${i }">${i }</a>
									</c:when>
									<c:otherwise>
										<a href="eventList?eventCate_idx=${param.eventCate_idx }&pageNum=${i }">${i }</a> 
									</c:otherwise>
								</c:choose>
							</c:forEach>
							<c:if test="${pageNum < pageInfo.maxPage }">
								<a href="eventList?eventCate_idx=${param.eventCate_idx }&pageNum=${pageNum + 1 }"><i class="fa fa-angle-double-right"></i></a>					
							</c:if>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

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