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
			<div class="row d-flex justify-content-center">
				<div class="col-lg-8">
					<div class="blog__details__title">
						<h2>1대1문의</h2>
						<hr>
					</div>
				</div>
				<div class="col-lg-8">
				<form action="oneToOneQnaPro" method="post">
					<input type="hidden" name="myQuestion_id" value="${sessionScope.sId}">
						<div class="row">
							<div class="col-3">
								<div class="qna_form">
									<h6>제목</h6>
		                        </div>
						    </div>
						    <div class="col-9">
	                        	<input type="text" name="myQuestion_subject" class="form-control form-control-lg" id="subject" placeholder="제목을 입력해주세요." maxlength="50" required="required">
							</div>
						</div>
						<br>
						<div class="row">
							<div class="col-3">
								<div class="qna_form">
									<h6>내용</h6>
		                        </div>
						    </div>
						    <div class="col-9">
	                            <textarea class="form-control" name="myQuestion_content" id="content" rows="20" placeholder="문의내용에 회원님의 개인정보가 포함되지 않도록 유의하세요." maxlength="2000" required="required"></textarea>
								<br>
								<div class="qna_submit" align="center">
									<button type="submit" class="qna_submit_btn">등록</button>
									<button onclick="history.back(); return false;" class="qna_submit_btn" >취소</button>
									<button type="reset" class="qna_submit_btn">다시쓰기</button>
		                        </div>
							</div>
						</div>
					</form>
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