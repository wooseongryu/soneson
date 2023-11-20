<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/soneson/css/projectstyle.css" type="text/css">
<script src= "${pageContext.request.contextPath }/resources/soneson/js/jquery-3.7.0.js"></script>

</head>
<body>
	<div class="write-view-container">
		<div class="write-view-top">
			<div class="view-top-header">
				<div class="top-headerWarp">
					<a href="#" class="top-headerWarp-left">
						<i class="bi bi-arrow-left"></i><span>내가 만든 프로젝트</span>	
					</a>
					<h1>
						<img alt="손에손로고" src="">
					</h1>
					<div class="top-headerWarp-right">
						<button><span><i class="bi bi-person-circle"></i></span></button>
					</div>
				</div>	
			</div>
			<div class="view-top-content">
				<div class="top-contentWarp">
					<div class="top-content-right">
<!--					글 달성률 할 수 이쓰까...? -->
						<button>심사기준</button>
					</div>
					<div class="top-content-center">
						<div class="top-content-img"></div>
						<div class="plan-title">
							<h2>훈나의 프로젝트</h2>
							<p>아이유 · 훈나</p>
						</div>
					</div>
				</div>
			</div>
			<div class="view-top-menu">
				<div class="top-menu-content">
					<ul class="top-menu-list">
						<li class="write-list">
							<a href="">요금제 선택</a>
						</li>
						<li class="write-list">
							<a href="">기본 정보</a>
						</li>
						<li class="write-list">
							<a href="">펀딩 계획</a>
						</li>
						<li class="write-list">
							<a href="">리워드 구성</a>
						</li>
						<li class="write-list">
							<a href="">프로젝트 계획</a>
						</li>
						<li class="write-list">
							<a href="">창작자 정보</a>
						</li>
						<li class="write-list">
							<a href="">상품 고지</a>
						</li>
					</ul>
				</div>
			</div>
		</div>
		<!-- 카테고리에 따른 입력폼 -->
		<div>
			<div class="write-view-content">
				<div class="view-content-form">
				</div>
			</div>
		</div>
	</div>
</body>
</html>