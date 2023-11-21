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
						<a href="./">
							<img src="${pageContext.request.contextPath }/resources/soneson/img/header/soneson2.jpg" class="package_img">
						</a>
<%-- 						<img src="${pageContext.request.contextPath }/resources/soneson/img/header/soneson2.jpg"> --%>
					</h1>
					<div class="top-headerWarp-right">
						<a href="./"><span><i class="bi bi-person-circle"></i></span></a>
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
			<div>
				<div class="view-top-menu">
					<div class="top-menu-content">
						<ul class="top-menu-list">
	<!-- 						<li class="write-list"> -->
	<!-- 							<a href="">요금제 선택</a> -->
	<!-- 						</li> -->
							<li class="write-list">
								<a href="projectInsertForm">기본 정보</a>
							</li>
							<li class="write-list">
								<a href="projectFunding">펀딩 계획</a>
							</li>
							<li class="write-list">
								<a href="projectReward">리워드 구성</a>
							</li>
							<li class="write-list on">
								<a href="projectStory">프로젝트 계획</a>
							</li>
							<li class="write-list">
								<a href="projectCreateor">창작자 정보</a>
							</li>
	<!-- 						<li class="write-list"> -->
	<!-- 							<a href="">상품 고지</a> -->
	<!-- 						</li> -->
						</ul>
						<div class="top-menu-btn">
							<button>저장하기</button>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- 카테고리에 따른 입력폼 -->
		<div>
			<div class="write-view-content">
				<div class="view-content-form">
					<div class="projectItemWarp">
						<dl class="projectInfo">
							<dt class="projectInfo-title">
								프로젝트 소개
								<div class="icon-asterisk"><i class="bi bi-asterisk"></i></div>
							</dt>
							<dd class="projectInfo-description">
								프로젝트 성공을 위해 필요한 금액을 설정해 주세요.<br>
							</dd>
							<div class="projectInfo-notice">
								<div class="funding-notice">
									다음 내용이 포함되도록 작성해 주세요!
								</div>
								<div>
									<p>Q. 무엇을 만들기 위한 프로젝트인가요?</p>
									<p>Q. 프로젝트를 간단히 소개한다면?</p>
									<p>Q. 이 프로젝트가 왜 의미있나요?</p>
									<p>Q. 이 프로젝트를 시작하게 된 배경이 무엇인가요?</p>
								</div>
							</div>
						</dl>
						<form action="" name="project-item">
							<div class="projectItem-form">
								<div class="style-projectFunding">
									<p class="tiny-title">프로젝트 소개</p>
									<p class="projectInfo-description">
										프로젝트에 대해 자세히 알려주세요<br>
									</p>
									<div class="margindiv">
										<div>
											<p class="tiny-title">아이템 이름</p>
										</div>
										<div class="projectItem-form">
											<input type="text" class="input_detail">
										</div>
										<div class="alert-title">
											<p></p>
										</div>
									</div>
									<section class="reward-section">
										<div class="reward-optiondiv">
											<p class="tiny-title">옵션조건</p>
											<p class="projectInfo-description">
												후원자가 옵션 목록에서 선택이 필요하다면 객관식을, 
												후원자의 직접 응답을 받으셔야 한다면 주관식을, 
												옵션이 필요 없다면 없음을 선택하세요.
											</p>
										</div>
										<div class="select-rewardoptionWarp">
											<div class="select-radioWarp">
												<input type="radio" class="radioBtn-rewardItem" name="rewardItemOption" id="reward-option0" value="0">
												<div class="radio-inner">
													<div class="radio-label">
														<label for="reward-option0">없음</label>
													</div>
												</div>
											</div>
											<div class="select-radioWarp">
												<input type="radio" class="radioBtn-rewardItem" name="rewardItemOption" id="reward-option1" value="1">
												<div class="radio-inner">
													<div class="radio-label">
														<label for="reward-option1">주관식</label>
													</div>
												</div>
											</div>
											<div class="select-radioWarp">
												<input type="radio" class="radioBtn-rewardItem" name="rewardItemOption"  id="reward-option2" value="2">
												<div class="radio-inner">
													<div class="radio-label">
														<label for="reward-option2">객관식</label>
													</div>
												</div>
											</div>
										</div>
									</section>
									<div class="formBtnDiv">
										<input class="formBtn" type="reset" value="초기화">
										<input class="formBtn" type="submit" value="등록" id="itemFormSubmitBtn">
									</div>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>