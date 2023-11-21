<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/soneson/css/projectstyle.css" type="text/css">
<script src= "${pageContext.request.contextPath }/resources/soneson/js/jquery-3.7.0.js"></script>
<script>
	$(function() {
		$("#step1_next").on("click",function() {
			$(this).css({"background":"rgb(248, 100, 83)","color":"#ffffff"});
			location.href="projectAgreeForm";
		});
	});
</script>
 
</head>	
<body>
	<!-- header 위치 -->
<%-- 	<jsp:include page="../inc/header.jsp"></jsp:include>	 --%>
	
	<div class="pro-step1-container">
		<div class="pro-step1-start">
			<div class="pro-step1-ing">
				<div class="ing-title">
					작성 중인 프로젝트가 있습니다
				</div>
				<div class="ing-content">
					<div class="ing-protitle">
						<span class="ing-proimg">
							<img>
						</span>
						<p>프로젝트이름</p>
					</div>
					<button class="ing-probtn">이어서 작성</button>
<!-- 					<input type="button" value="이어서 작성 →" class="ing-probtn"> -->
				</div>
			</div>
			<div>
				<div class="pro-step1-plan">
					<div class="plan-title">
						<h2>어떤 프로젝트를 계획 중이신가요?</h2>
						<p>나중에 변경 가능하니 너무 걱정하지 마세요</p>
					</div>
					<div class="plan-cartegories">
						<ul class="plan-selectCartegories">
							<li><button>아이유</button></li>
							<li><button>BTS</button></li>
							<li><button>블랙핑크</button></li>
							<li><button>아이브</button></li>
							<li><button>에스파</button></li>
							<li><button>뉴진스</button></li>
							<li><button>스트레이키즈</button></li>
							<li><button>세븐틴</button></li>
							<li><button>라이즈</button></li>
							<li><button>플레이브</button></li>
							<li><button>김세정</button></li>
							<li><button>스테이씨</button></li>
							<li><button>르세라핌</button></li>
							<li><button>(여자)아이들</button></li>
							<li><button>비투비</button></li>
<!-- 							스크립트로 버튼 클릭시 addclass - isActive -->
						</ul>
					</div>
				</div>
			</div>
			<div>
				<div class="pro-step1-plan">
					<div class="plan-title">
						<h2>프로젝트를 간단하게 알려주세요</h2>
						<p>나중에 변경 가능하니 너무 걱정하지 마세요</p>
					</div>
					<div>
						<textarea class="plan-textarea" placeholder="프로젝트요약을 입력해 주세요"></textarea>
					</div>
					<div class="plan-next">
						<button id="step1_next">다음</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- footer -->
<%-- 	<jsp:include page="../inc/footer.jsp"></jsp:include> --%>
</body>
</html>