<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Anime Template">
    <meta name="keywords" content="Anime, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>손에손</title>

	<script src="${pageContext.request.contextPath }/resources/soneson/js/jquery-3.7.0.js"></script>


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
	<!-- header 위치 -->
	<jsp:include page="../../inc/header.jsp"></jsp:include>


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
	            <div class="col-lg-12 col-md-12" style="float: none; margin: 0 auto;">
	                <div class="anime__details__review">
	                    <div class="section-title">
	                        <h2 align="center">공지사항</h2>
	                    </div>
						<div class="row">
							<div class="col-1" id="eventCate_category">
								<div class="customer_category" align="center" 
									<c:if test="${eventCate.eventCate_idx eq param.eventCate_idx}"></c:if> 
									onclick="location.href='event'" >
									<h6 id="eventCate_subject_category">전체</h6>
								</div>
							</div>
						<c:forEach var="eventCate" items="${eventCateList }">
							<div class="col-1" id="eventCate_category">
								<div class="customer_category" align="center" name="${eventCate.eventCate_subject}" 
									<c:if test="${eventCate.eventCate_idx eq param.eventCate_idx}"></c:if> 
									onclick="location.href='eventList?eventCate_idx=${eventCate.eventCate_idx}'" >
									<h6 id="eventCate_subject_category">${eventCate.eventCate_subject }</h6>
								</div>
							</div>
						</c:forEach>
						</div>
						<hr>
						<c:forEach var="eventList" items="${eventList }">
							<div class="row" id="eventList_row">
							    <div class="col-6" onclick ="location.href ='eventDetail?event_idx=${eventList.event_idx}'"> 
			                    	<span id="eventCate_subject">${eventList.eventCate_subject}</span>
			                    	<c:if test="${!empty eventList.event_status}">
			                    		<span><button type="button" id="event_status">&nbsp;${eventList.event_status}&nbsp;</button></span><br>
			                    	</c:if>
			                        <c:if test="${!empty eventList.event_startDt && !empty eventList.event_endDt }">
									<span id="event_Dt">이벤트 기간 : ${eventList.event_startDt } ~ ${eventList.event_endDt }</span>
									</c:if>
			                        <h5 id="event_title">${eventList.event_title }</h5>
			                        
			                    	<span><fmt:formatDate value="${eventList.event_writeDate}" pattern="yyyy-MM-dd"/></span>
								</div>
							    <div class="col-6" align="right" onclick ="location.href = 'eventDetail?event_idx=${eventList.event_idx}'">
							    	<c:if test="${!empty eventList.event_thumbnail}"> 
										<img src ="${pageContext.request.contextPath }/resources/upload/${eventList.event_thumbnail }" width="150" height="150" style="margin: 10px 10px 10px 10px;">
		                        	</c:if>
		                        </div>
							</div>
						</c:forEach>
						
						
						<div class="product__pagination" id="pageList">
							<c:if test="${pageNum > 1 }">
								<a href="event?pageNum=${pageNum - 1 }"><i class="fa fa-angle-double-left"></i></a>					
							</c:if>
							<c:forEach var="i" begin="${pageInfo.startPage }" end="${pageInfo.endPage }">
								<c:choose>
									<c:when test="${pageNum eq i }">
										<a class="current-page" href="event?pageNum=${i }">${i }</a>
									</c:when>
									<c:otherwise>
										<a href="event?pageNum=${i }">${i }</a> 
									</c:otherwise>
								</c:choose>
							</c:forEach>
							<c:if test="${pageNum < pageInfo.maxPage }">
								<a href="event?pageNum=${pageNum + 1 }"><i class="fa fa-angle-double-right"></i></a>					
							</c:if>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	
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
