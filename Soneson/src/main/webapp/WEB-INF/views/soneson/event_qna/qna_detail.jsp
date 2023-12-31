<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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


    <!-- Blog Details Section Begin -->
    <section class="blog-details spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-10 col-md-8" style="float: none; margin: 0 auto;">
					<div class="anime__details__review">
						<div class="row justify-content-center">
							<c:forEach var="qnaCate" items="${qnaCateList }">
								<div class="col-2" >
									<div class="customer_category"  align="center" name="${qnaCate.qnaCate_subject}" 
										onclick="location.href='qna?qnaCate_idx=${qnaCate.qnaCate_idx}'" >
										<h6 id="qnaCate_subject_category">${qnaCate.qnaCate_subject }</h6>
									</div>
								</div>
							</c:forEach>
						</div>
						<hr>
					</div>
				</div>
			</div>
			<div class="row d-flex justify-content-center">
				<div class="col-lg-8">
					<div class="blog__details__title">
						<h6 style="color: #F86453;">${qna.qnaCate_subject }</h6>
						<h2>${qna.qna_title }</h2>
						<hr>
					</div>
				</div>
				<div class="col-lg-8">
					<div class="blog__details__content">
						<div class="blog__details__text">
							<p align="center">${fn:replace(qna.qna_content, replaceChar, "<br/>")}</p>
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