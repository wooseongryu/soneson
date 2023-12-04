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
	<!-- 손에손 타이틀 아이콘 -->
	<link rel="shortcut icon" href="${pageContext.request.contextPath }/resources/soneson/img/header/son33.ico" type="image/x-icon">
	
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
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/soneson/css/joinLogin.css" type="text/css">
	
	<!-- 김주영 비번 보기/가리기 아이콘 추가 css -->
	<link rel="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css">	
		
<style>
	div.main i{
		position: absolute;
		left: 90%;
		top: 18px;
		color: lightblack;
	}
</style>

</head>
<script type="text/javascript">
	$(function() {
		// 1. 아이디 입력창 체크
		$("#user_id").blur(function() {
			let id = $("#user_id").val();
			let msg = "";
			let color = "";
			let regex = /^[A-Za-z0-9][\w]{3,15}$/;
			if(id == "") {
				$("#checkIdResult").html("아이디 입력 필수!");
				$("#checkIdResult").css("color", "red");
			} else {
				// 아이디 입력값 검증
				if(!regex.exec(id)) { // 아이디 입력값 검증 실패 시 
	// 				// 정규표현식을 활용한 아이디 입력값 검증 결과가 일치하지 않을 경우
					$("#checkIdResult").html("영문자, 숫자, 특수문자(_) 조합 4 ~ 16자리 필수!");
					$("#checkIdResult").css("color", "red");
				} else { // 아이디 입력값 검증 성공 시 
					$.ajax({
						url: "UserCheckDupId",
						data: {
							user_id: id
						},
						success: function(result) {
							console.log("ID 중복 확인 결과 : " + result);
							
							if($.trim(result) == "true") { // 아이디 중복
								console.log("사용 불가능한 아이디");
								$("#checkIdResult").html("사용 불가능한 아이디");
								$("#checkIdResult").css("color", "red");
							} else {
								console.log("사용 가능한 아이디");
								$("#checkIdResult").html("사용 가능한 아이디");
								$("#checkIdResult").css("color", "green");
							}
						}
					});
					
				}
				
			}
		});
		
		// 2. 비밀번호 입력창 체크
		$("#user_passwd").blur(function() {
			let passwd = $("#user_passwd").val();
			let msg = "";
			let color = "";
			
			// 비밀번호 입력값 검증(복잡도 검사 포함)
			// 1) 비밀번호 길이 검증 : 영문자, 숫자, 특수문자(!@#$%) 조합 8 ~ 16자리
			let lengthRegex = /^[A-Za-z0-9!@#$%]{8,16}$/;
				
			if(passwd == "") { // 비밀번호 미입력
				msg = "비밀번호 입력 필수!";
				color = "red";
			} else if(!lengthRegex.exec(passwd)) { // 비밀번호 길이 체크 위반
				msg = "비밀번호 길이 8 ~ 16글자 필수!";
				color = "red";
			} else {
				// 2) 비밀번호(패스워드) 복잡도 검사(영문자 대&소문자, 숫자, 특수문자 중 최소 2가지 조합)
				// => 단, 부분 검사 수행을 위해 각각의 규칙에서 ^ 기호와 $ 기호는 미사용
				// 2-1) 영문자 대문자 검사 규칙
				let engUpperRegex = /[A-Z]/;
				// 2-2) 영문자 소문자 검사 규칙
				let engLowerRegex = /[a-z]/;
				// 2-3) 숫자 검사 규칙
				let numRegex = /[\d]/; // [0-9] 와 동일
				// 2-4) 특수문자(!@#$%) 검사 규칙
				let specRegex = /[!@#$%]/;
				
				// 부분 검사를 통해 일치하는 항목 존재할 경우 카운팅 변수값 1 증가시키기
				let count = 0;
				
				if(engUpperRegex.exec(passwd)) count++; // 대문자가 포함되어 있을 경우
				if(engLowerRegex.exec(passwd)) count++; // 소문자가 포함되어 있을 경우
				if(numRegex.exec(passwd)) count++; // 숫자가 포함되어 있을 경우
				if(specRegex.exec(passwd)) count++; // 특수문자가 포함되어 있을 경우
				
				// 복잡도 검사 결과 판별
				// 4점 : 안전, 3점 : 보통, 2점 : 위험, 1점 이하 : 사용 불가능한 패스워드!
				switch(count) {
					case 4 : 
						msg = "안전";
						color = "green";
						break;
					case 3 : 
						msg = "보통";
						color = "blue";
						break;
					case 2 : 
						msg = "위험";
						color = "orange";
						break;
					case 1 : // 1점과 0점은 공통 처리를 위해 break 문 없이
					case 0 : // 중복 항목들 중 마지막 case 문에서 중복 처리 기술
						msg = "사용 불가능한 패스워드!";
						color = "red";
				}
				
			}
			
			// 텍스트와 글자색상 변수를 활용하여 상태 변경
			$("#checkPasswdResult").html(msg);
			$("#checkPasswdResult").css("color", color);
		});
		
		
		$("#user_passwd2").blur(function() {
			let passwd = $("#user_passwd").val();
			let passwd2 = $("#user_passwd2").val();
			
			let msg = "";
			let color = "";
			
			if(passwd2 == "") {
				msg = "비밀번호 확인 입력 필수!";
				color = "red";
			} else if(passwd != passwd2) {
				msg = "비밀번호 불일치!";
				color = "red";
			} else {
				msg = "비밀번호 일치!";
				color = "green";
			}
			
			// 텍스트와 글자색상 변수를 활용하여 상태 변경
			$("#checkPasswdResult2").html(msg);
			$("#checkPasswdResult2").css("color", color);
		});
		

		
		$("#user_email").blur(function() {
			let email = $("#user_email").val();
			let msg = "";
			let color = "";
			let emailRegex = /^[a-zA-Z0-9+-\_.]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$/;
			if(email == "") {
				$("#checkEmailResult").html("이메일 입력 필수!");
				$("#checkEmailResult").css("color", "red");
			} else {
				if(!emailRegex.exec(email)) {
					$("#checkEmailResult").html("이메일 형식에 맞게 입력하세요! ex) abc123@naver.com");
					$("#checkEmailResult").css("color", "red");
					return false;
				} else {
					$.ajax({
						url: "UserCheckDupEmail",
						data: {
							user_email: email
						},
						success: function(result) {
							console.log("이메일 중복 확인 결과 : " + result);
							
							if($.trim(result) == "true") { // 이메일 중복
								console.log("사용 불가능한 이메일");
								$("#checkEmailResult").html("사용 불가능한 이메일");
								$("#checkEmailResult").css("color", "red");
							} else {
								console.log("사용 가능한 이메일");
								$("#checkEmailResult").html("사용 가능한 이메일");
								$("#checkEmailResult").css("color", "green");
							}
						}
					});
				}
			}
		});
	}); // document.ready 이벤트 끝
</script>
<script>
	
	//이름 입력 가능한 수 maxlength(8자리) 설정
	function maxLengthCheckName(object){
	    if (object.value.length > object.maxLength){
	        object.value = object.value.slice(0, object.maxLength);
	    }
	}
	//아이디 입력 가능한 수 maxlength(16자리) 설정
	function maxLengthCheckId(object){
// 	    	alert(object.maxLength);
	    if (object.value.length > object.maxLength){
	    	
	        object.value = object.value.slice(0, object.maxLength);
	    }
	}
	//비밀번호 입력 가능한 수 maxlength(16자리) 설정
	function maxLengthCheckPasswd(object){
	    if (object.value.length > object.maxLength){
	        object.value = object.value.slice(0, object.maxLength);
	    }
	}

	//이메일 입력 가능한 수 maxlength(40자리) 설정
	function maxLengthCheckEmail(object){
	    if (object.value.length > object.maxLength){
	        object.value = object.value.slice(0, object.maxLength);
	    }
	}

</script>
	
	
<body>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>
	<!-- header 위치 -->
	<jsp:include page="../../inc/header.jsp"></jsp:include>

    <!-- Signup Section Begin -->
    <section class="signup spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="login__form">
                        <h3>회원가입</h3>
                        <form action="joinPro" method="post">
                        	<input type="hidden" name="kakao_id" value="${sessionScope.kakao_id }">
                        	<div class="input__item">
                                <input type="text" name="user_name" id="user_name" required="required" size="20" placeholder="이름을 입력하세요" maxlength="8" oninput="maxLengthCheckName(this)">
                                <span class="icon_profile"></span>
                            </div>
                            <div>
                            	<span id="checkIdResult"></span>
                            </div>
                        	<div class="input__item">
                               <input type="text" name="user_id" id="user_id" placeholder="아이디를 입력하세요" required="required" size="20" maxlength="16" oninput="maxLengthCheckId(this)" pattern="^[A-Za-z0-9][\w]{3,15}$" title="4 ~ 16글자 영문자, 숫자, 특수문자(_) 조합">
                                <span id = "checkIdResult"></span>
                                <span class="icon_id"></span>
                            </div>
                            <div>
                            	<span id="checkEmailResult"></span>
                            </div>
                            <div class="input__item">
                                <input type="text" name="user_email" id ="user_email" placeholder="이메일 주소" required="required" size="20" maxlength="40" oninput="maxLengthCheckEmail(this)" pattern="^[a-zA-Z0-9+-\_.]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$" title="이메일 형식에 맞게 작성해주세요">
                                <span class="icon_mail"></span>
                            </div>
                            <div>
                                <span id = "checkPasswdResult"></span>
                            </div>
                            <div class="input__item">
                            	<div class="main">
                            		<span class="icon_lock"></span>
	                                <input type="password" name="user_passwd" id="user_passwd" placeholder="8 ~ 16글자 사이 입력" required="required" size="20" maxlength="16" oninput="maxLengthCheckPasswd(this)">
	                                <i class="fa fa-eye fa-lg"></i>
                                </div>
                            </div>
                            <div>
                            	<span id="checkPasswdResult2"></span>
                            </div>
                          
                            
                            <div class="input__item">
                           		<div class="main">
	                            	<span class="icon_lock"></span>
	                                <input type="password" name="user_passwd2" id="user_passwd2" placeholder="비밀번호 확인" required="required" maxlength="16">
	                                <i class="fa fa-eye fa-lg"></i>
	                        	</div> 
                            </div>
                            <button type="submit" class="site-btn">&nbsp;&nbsp;회원가입하기&nbsp;</button>
                        </form>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="login__social__links">
                        <h3>이미 회원이신가요?</h3>
                        <ul>
                            <li><a href="https://kauth.kakao.com/oauth/authorize?response_type=code&client_id=436a131f08ff59d92a8725d7841cd063&redirect_uri=http://localhost:8081/soneson/kakao/callback" style="margin-top:50px">
								<img src="${pageContext.request.contextPath }/resources/soneson/img/kakao_login_medium_wide.png" style="margin-left: -160px; margin-top: -40px;"></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Signup Section End -->

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