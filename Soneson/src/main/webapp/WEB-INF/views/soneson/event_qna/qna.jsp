<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Anime Template">
    <meta name="keywords" content="Anime, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>CINEPICK</title>

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
	            <div class="col-lg-12 col-md-8" style="float: none; margin: 0 auto;">
	                <div class="anime__details__review">
	                    <div class="section-title">
	                        <h2 align="center">자주묻는질문</h2>
	                    </div>
	                    <div class="row" style="justify-content: space-evenly">
							<div class="col-2" id="qna_category">
								<div class="customer_category" align="center" onclick="location.href='qna'">
									<h6 id="qnaCate_subject_category">전체</h6>
								</div>
							</div>
						<c:forEach var="qnaCate" items="${qnaCateList }">
							<div class="col-2" id="qna_category">
								<div class="customer_category" align="center" name="${qnaCate.qnaCate_subject}" 
									<c:if test="${qnaCate.qnaCate_idx eq param.qnaCate_idx}">style="color: #F86453; text-decoration : underline; text-underline-offset : 18px; text-decoration-thickness : 4px" </c:if> 
									onclick="location.href='qna?qnaCate_idx=${qnaCate.qnaCate_idx}'" >
									<h6 id="qnaCate_subject_category">${qnaCate.qnaCate_subject }</h6>
								</div>
							</div>
						</c:forEach>
						</div>
						<hr>
						
						<div class="row">
						    <div class="col-lg-12">
								<c:forEach var="qna" items="${qnaList }">
									<div class="row" id="qna_row">
										<div class="col-12" align="left" onclick="location.href='qnaDetail?qna_idx=${qna.qna_idx}'">
					                    	<span id="qnaCate_subject">${qna.qnaCate_subject}</span>
					                        <h4 id="qna_title" >${qna.qna_title }</h4>
										</div>
									</div>
								</c:forEach>
							</div>
						</div>
						<div class="product__pagination" id="pageList">
							<c:if test="${pageNum > 1 }">
								<a href="qna?qnaCate_idx=${param.qnaCate_idx }&pageNum=${pageNum - 1 }"><i class="fa fa-angle-double-left"></i></a>					
							</c:if>
							<c:forEach var="i" begin="${pageInfo.startPage }" end="${pageInfo.endPage }">
								<c:choose>
									<c:when test="${pageNum eq i }">
										<a class="current-page" href="qna?qnaCate_idx=${param.qnaCate_idx }&pageNum=${i }">${i }</a>
									</c:when>
									<c:otherwise>
										<a href="qna?qnaCate_idx=${param.qnaCate_idx }&pageNum=${i }">${i }</a> 
									</c:otherwise>
								</c:choose>
							</c:forEach>
							<c:if test="${pageNum < pageInfo.maxPage }">
								<a href="qna?qnaCate_idx=${param.qnaCate_idx }&pageNum=${pageNum + 1 }"><i class="fa fa-angle-double-right"></i></a>					
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
