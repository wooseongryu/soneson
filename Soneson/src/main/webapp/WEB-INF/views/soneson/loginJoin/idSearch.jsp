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
    <title>로그인</title>

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
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/soneson/css/joinLogin.css" type="text/css">
    
</head>

<style>
	h4 {
	color: black;
	font-weight: bolder;
	}
</style>

<body>

    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>
    
	<!-- header 위치 -->
	<jsp:include page="../../inc/header.jsp"></jsp:include>


    <!-- Login Section Begin -->
    <section class="login spad">
        <div class="container">
        
            <div class="row">
                <div class="col-lg-6">
                    <div class="login__form">
                        <h3>아이디 찾기</h3>
                        <form action="idSearchPro" method="post">
                            <div class="input__item">
                                <input type="text" name="user_name" id="user_name" required="required" size="20" placeholder="이름을 입력하세요" maxlength="8">
                                <span class="icon_profile"></span>
                            </div>
                            <div class="input__item">
                                <input type="email" name="user_email" id ="user_email" placeholder="이메일 주소를 입력하세요">
                                <span class="icon_mail"></span>
                            </div>
                            <button type="submit" class="site-btn">&nbsp;아이디 찾기&nbsp;</button>
                        </form>    
                    </div>
                </div>
                
                <div class="col-lg-6">
                    <div class="login__register">
                        <h4>아직 회원이 아니신가요?</h4>
                        <br>
                        <a href="join" class="primary-btn">회원가입하기</a>
                    </div>
                    <br>
                    <br>
                 	<div class="login__register">
                        <h4>비밀번호를 잊으셨나요?</h4>
                        <br>
                        <a href="passwdSearch" class="primary-btn" >&nbsp;&nbsp;비밀번호재발급&nbsp;</a>
                    </div>
                    
                </div>
            </div>
            
            <div class="login__social">
                <div class="row d-flex justify-content-center">
                    <div class="col-lg-6">
                        <div class="login__social__links">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Login Section End -->
    
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