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
<script>
// 	let now = Date.now();
// 	let timeOff = new Date().getTimezoneOffset()*60000;
// 	let today = new Date(now-timeOff).toISOString().substring(0, 16);
	let now = new Date();
	now.setDate(now.getDate() + 1);
	let tommorrow = String(now.toISOString().slice(0,10));
	console.log(tommorrow);
	
	$(function() {
		$("#start-funding").attr("min", tommorrow);
		
	});
</script>
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
			<div class="view-top-menu">
				<div class="top-menu-content">
					<ul class="top-menu-list">
<!-- 						<li class="write-list"> -->
<!-- 							<a href="">요금제 선택</a> -->
<!-- 						</li> -->
						<li class="write-list">
							<a href="projectInsertForm">기본 정보</a>
						</li>
						<li class="write-list on">
							<a href="projectFunding">펀딩 계획</a>
						</li>
						<li class="write-list">
							<a href="projectReward">리워드 구성</a>
						</li>
						<li class="write-list">
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
		<!-- 카테고리에 따른 입력폼 -->
		<div>
			<div class="write-view-content">
				<div class="view-content-form">
					<div class="projectItemWarp">
						<dl class="projectInfo">
							<dt class="projectInfo-title">
								목표 금액
								<div class="icon-asterisk"><i class="bi bi-asterisk"></i></div>
							</dt>
							<dd class="projectInfo-description">
								프로젝트 성공을 위해 필요한 금액을 설정해 주세요.<br>
							</dd>
							<div class="projectInfo-notice">
								<div class="funding-notice">
									목표금액 설정 시 꼭 알아두세요!
								</div>
								<div>
									<p>종료일까지 목표금액을 달성하지 못하면 후원자 결제가 진행되지 않습니다.</p>
									<p>후원 취소 및 결제 누락을 대비해 10% 이상 초과 달성을 목표로 해주세요.</p>
									<p>제작비, 선물 배송비, 인건비, 예비 비용 등을 함께 고려해주세요.</p>
								</div>
							</div>
						</dl>
						<div class="projectItem-form">
							<div class="style-projectFunding">
								<p class="tiny-title">목표금액</p>
								<div>
									<div class="input-fundingCost">
										<span class="fundingInputCost">
											<input type="text" class="InputTextFunding" inputmode="numeric">
											원
										</span>
									</div>
									<div class="alert-cost">
										<p></p>
									</div>
								</div>
								<div class="projectFunding-cal">
									<div class="totalAmount">
										<span>목표금액 달성 시 예상 수령액</span>
										<span>원</span>
									</div>
									<div class="feeWarp">
										총 수수료
										<span>원</span>
									</div>
									<div class="feeWarp">
										결제대행 수수료(총 결제 성공금액의 3% + VAT)
										<span>원</span>
									</div>
									<div class="feeWarp">
										손에손 수수료(총 결제 성공금액의 5% + VAT)
										<span>원</span>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="projectItemWarp">
						<dl class="projectInfo">
							<dt class="projectInfo-title">
								펀딩 일정
								<div class="icon-asterisk"><i class="bi bi-asterisk"></i></div>
							</dt>
							<dd class="projectInfo-description">
								시작일 오전 9시 부터 펀딩이 자동 시작됩니다.<br>
								펀딩 시작 전까지 날짜를 변경할 수 있습니다.
							</dd>
							<div class="projectInfo-notice">
								<div class="funding-notice">
									펀딩기간 설정 시 꼭 알아두세요!
								</div>
								<div>
									<p>선택하신 종료일 다음 날 0시에 펀딩이 종료됩니다.</p>
									<p>프로젝트가 성공하면 펀딩 종료 다음 날 후원금이 결제됩니다. 결제가 이루어지지 않은 경우 24시간 간격으로 7일 동안 결제를 시도합니다.</p>
									<p>모금액은 후원자 결제 종료 다음 날부터 영업일 기준(주말 및 공휴일 제외) 7일째 되는 날 입금됩니다.</p>
								</div>
							</div>
						</dl>
						<div class="projectItem-form">
							<div>
								<ol>
									<li class="project-date">
										<div class="projectForm-date">
											<div class="projectFormHalf-date">
												<p class="tiny-title">시작일</p>
												<input type="date" class="input-date" id="start-funding">
											</div>
											<div class="projectFormHalf-date">
												<p class="tiny-title">종료일</p>
												<input type="date" class="input-date">
											</div>
										</div>
										<div class="projectFormHalf-date">
											<p class="tiny-title">펀딩기간</p>
											일
										</div>
									</li>
									<li class="project-date">
										<div class="projectForm-date">
											<div class="projectFormHalf-date">
												<p class="tiny-title">후원자 결제종료</p>
												2023.10.23
											</div>
										</div>
									</li>
									<li class="project-date">
										<div class="projectForm-date">
											<div class="projectFormHalf-date">
												<p class="tiny-title">정산일</p>
												2023.10.30	
											</div>
										</div>
									</li>
									
								</ol>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>