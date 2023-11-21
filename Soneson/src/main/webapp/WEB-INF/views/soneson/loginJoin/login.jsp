<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html lang="zxx">

<head>
	<meta charset="UTF-8">
	<meta name="description" content="Anime Template">
	<meta name="keywords" content="Anime, unica, creative, html">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<link rel="shortcut icon" href="${pageContext.request.contextPath }/resources/soneson/img/header/son33.ico" type="image/x-icon">
	<title>손에손</title>

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
	
	<!-- 김주영 비번 보기/가리기 아이콘 추가 css -->
<!-- 	<link rel="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css">		 -->


<style>
div.main i{
	position: absolute;
	left: 90%;
	top: 18px;
	color: lightblack;
}
</style>

</head>

<body>
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>
	
	<!-- header 위치 -->
<%-- 	<jsp:include page="../../inc/header.jsp"></jsp:include> --%>
	
	<!-- Login Section Begin -->
	<section class="login spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-6">
					<div class="login__form">
						<h3>로그인</h3>
						<form action="loginPro" method="post">
							<div class="input__item">
                                <input name="user_id" type="text" value="${cookie.cookieId.value }" placeholder="아이디를 입력하세요">
                                <span class="icon_id"></span>
                            </div>
                            
                            <div class="input__item">
                            	<div class="main">
                        			<span class="icon_lock"></span>
                           			<input name="user_passwd" type="password" placeholder="비밀번호를 입력해주세요" >
                           			<i class="fa fa-eye fa-lg"></i>
								</div>
							</div>
							
							<input type="checkbox" name="rememberId"
							<c:if test="${not empty cookie.cookieId.value }">checked</c:if>
						><span>&nbsp; 아이디 저장</span><br>
							<button type="submit" class="site-btn">로그인</button>
							
						</form>
						
					</div>
				</div>
                <div class="col-lg-6">
                    <div class="login__register">
                        <h4>아직 회원이 아니신가요?</h4>
                        <a href="join" class="primary-btn">회원가입</a>
                    </div>
                    <br>
                 	<div class="login__register">
                        <h4>아이디/비밀번호를 잊으셨나요?</h4>
                        <a href="idSearch" class="primary-btn">&nbsp;&nbsp;아이디 찾기&nbsp;</a>
                        &nbsp;&nbsp;
                        <a href="passwdSearch" class="primary-btn" >&nbsp;&nbsp;비밀번호 재발급&nbsp;</a>
                    </div>
                </div>
			</div>
			<div class="login__social">
				<div class="row d-flex justify-content-center">
					<div class="col-lg-6">
						<div class="login__social__links">
							<span>or</span>
							<ul>
								<li><a href="https://kauth.kakao.com/oauth/authorize?response_type=code&client_id=436a131f08ff59d92a8725d7841cd063&redirect_uri=http://localhost:8081/soneson/kakao/callback" style="margin-top:50px">
								<img src="${pageContext.request.contextPath }/resources/soneson/img/kakao_login_medium_wide.png" style="height:48px"></a></li>
<!-- 								<li><a href="#" class="facebook"><i class="fa fa-facebook"></i> Sign in With -->
<!-- 								Facebook</a></li> -->
<!-- 								<li><a href="#" class="google"><i class="fa fa-google"></i> Sign in With Google</a></li> -->
<!-- 								<li><a href="#" class="twitter"><i class="fa fa-twitter"></i> Sign in With Twitter</a> -->
<!-- 								</li> -->
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Login Section End -->

	<!-- footer -->
<%-- 	<jsp:include page="../../inc/footer.jsp"></jsp:include> --%>
	
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



<!-- 비번 보기/가리기 기능-->
<script>
	$(document).ready(function(){
	    $('.input__item i').on('click',function(){
	        $('input').toggleClass('active');
	        if($('input').hasClass('active')){
	            $(this).attr('class',"fa fa-eye-slash fa-lg")
	            .prev('input').attr('type',"text");
	        }else{
	            $(this).attr('class',"fa fa-eye fa-lg")
	            .prev('input').attr('type','password');
	        }
	    });
	});
</script>

</body>

</html>