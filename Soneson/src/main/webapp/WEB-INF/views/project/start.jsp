<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/soneson/css/projectstyle.css" type="text/css">
<script src= "${pageContext.request.contextPath }/resources/soneson/js/jquery-3.7.0.js"></script>
<script>
	$(function() {
		//카테고리 선택시 div 활성화
		$("input[type=radio][name=pro_categorie]").click(function() {
			console.log($(this).val());
			$(".pro-step1-plan").css('display', 'block');
			
			
		});
		
		
		$("#pro_title1").on("keyup", function() {
// 			console.log($(this).val().length);
			let content = $(this).val();
			$(".count-length").text(content.length);
			
			if(content.length < 1) {
				$(".alert-count").text("제목을 작성해 주세요");
				$("#step1_next").css("background","rgb(240, 240, 240)").prop("disabled",true);
			} else {
				$(".alert-count").text("");
				$("#step1_next").css("background","rgb(248, 100, 83)").prop("disabled",false);
				
			}
			
			if (content.length > 32) {
		        $(this).val($(this).val().substring(0, 32));
		        alert('글자수는 32자까지 입력 가능합니다.');
		    };
			
		});
		
		
		
		$("#step1_next").on("click",function() {
			$(this).css({"background":"rgb(248, 100, 83)","color":"#ffffff"});
// 			location.href="projectAgreeForm";
		});
	});
</script>
 
</head>	
<body>
	<!-- header 위치 -->
<%-- 	<jsp:include page="../inc/header.jsp"></jsp:include>	 --%>
	
	<div class="pro-step1-container">
		<div class="pro-step1-start">
			<c:if test="${not empty pro }">
				<div class="pro-step1-ing">
					<div class="ing-title">
						작성 중인 프로젝트가 있습니다
					</div>
					<div class="ing-content">
						<div class="ing-protitle">
							<span class="ing-proimg">
								<img>
							</span>
							<p>${pro.pro_title }</p>
						</div>
						<button class="ing-probtn">이어서 작성</button>
	<!-- 					<input type="button" value="이어서 작성 →" class="ing-probtn"> -->
					</div>
				</div>
			</c:if>
			<!--  -->
			<form action="projectAgreeForm" class="firstForm">
				<div>
					<div class="pro-step1-plan">
						<div class="plan-title">
							<h2>어떤 프로젝트를 계획 중이신가요?</h2>
							<p>나중에 변경 가능하니 너무 걱정하지 마세요</p>
						</div>
						<div class="plan-cartegories">
							<ul class="plan-selectCartegories">
								<li>
									<input type="radio" name="pro_categorie" value="아동·청소년" id="c_child" class="pro_categorie">
									<label class="ctRadio_label" for="c_child">아동·청소년</label>
								</li>
								<li>
									<input type="radio" name="pro_categorie" value="동물" id="c_animal" class="pro_categorie">
									<label class="ctRadio_label" for="c_animal">동물</label>
								</li>
								<li>
									<input type="radio" name="pro_categorie" value="환경" id="c_environ" class="pro_categorie">
									<label class="ctRadio_label" for="c_environ">환경</label>
								</li>
								<li>
									<input type="radio" name="pro_categorie" value="장애인" id="c_disabled" class="pro_categorie">
									<label class="ctRadio_label" for="c_disabled">장애인</label>
								</li>
								<li>
									<input type="radio" name="pro_categorie" value="가족·여성" id="c_female" class="pro_categorie">
									<label class="ctRadio_label" for="c_female">가족·여성</label>
								</li>
								<li>
									<input type="radio" name="pro_categorie" value="어르신" id="c_old" class="pro_categorie">
									<label class="ctRadio_label" for="c_old">어르신</label>
								</li>
								<li>
									<input type="radio" name="pro_categorie" value="기타" id="c_etc" class="pro_categorie">
									<label class="ctRadio_label" for="c_etc">기타</label>
								</li>
	<!-- 							<li><button>아이유</button></li> -->
	<!-- 							<li><button>BTS</button></li> -->
	<!-- 							<li><button>블랙핑크</button></li> -->
	<!-- 							스크립트로 버튼 클릭시 addclass - isActive -->
							</ul>
						</div>
					</div>
				</div>
				<div>
					<div class="pro-step1-plan" style="display: none;">
						<div class="plan-title">
							<h2>프로젝트를 간단하게 알려주세요</h2>
							<p>나중에 변경 가능하니 너무 걱정하지 마세요</p>
						</div>
						<div>
							<input type="text" class="input_detail" maxlength="32" placeholder="프로젝트제목을 입력해 주세요" name="pro_title" id="pro_title1">
<!-- 							<textarea class="plan-textarea" maxlength="50" placeholder="프로젝트요약을 입력해 주세요" name="pro_summary" id="pro_summary1"></textarea> -->
							<div class="varchar-count">
								<span class="alert-count"></span>
								<span><span class="count-length">0</span> / 32</span>
							</div>
						</div>
						<div class="plan-next">
							<button id="step1_next" disabled="disabled">다음</button>
						</div>
					</div>
				</div>
			</form>
			<!--  -->
		</div>
	</div>
	<!-- footer -->
<%-- 	<jsp:include page="../inc/footer.jsp"></jsp:include> --%>
</body>
</html>