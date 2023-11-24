<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>손에손</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/soneson/css/projectstyle.css" type="text/css">
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
<script src= "${pageContext.request.contextPath }/resources/soneson/js/jquery-3.7.0.js"></script>
<script>
let now = new Date();
now.setDate(now.getDate() + 1);
let tommorrow = String(now.toISOString().slice(0,10));
console.log(tommorrow);

$(function() {
	//div 영역
	 $(".content-form").eq(0).show(0);
	  $(".top-menu-list li").click(function () {
	    var idx = $(this).index();
	    console.log(idx);
	    $(".content-form").hide();
	    $(".content-form").eq(idx).show();
	    $(".top-menu-list li").removeClass("on");
	    $(this).addClass("on");
	  });
	
	
	
	$('input[name="file_path"]').change(function(){
	    setImageFromFile(this, '#preview');
	});

	function setImageFromFile(input, expression) {
	    if (input.files && input.files[0]) {
	    var reader = new FileReader();
	    reader.onload = function (e) {
	    $(expression).attr('src', e.target.result);
	    $(".image-change").show();
	  }
	  reader.readAsDataURL(input.files[0]);
	    $(".image-change").hide();
	  }
	}
	
	//funding 시작날짜선택
	$("#start-funding").attr("min", tommorrow);
	
	//아이템 옵션
	$("input[type=radio][name=rewardItemOption]").on("click", function() {
		
		let ckv = $(this).val();
		$.each($('.reward-section2').children(), function (index, el) {
//				debugger;
			var attr = ckv == index ? 'block' : 'none';
			$(el).css('display', attr);
			
		});
		
	});
	
	
	//리워드수량옵션
	$("input[type=radio][name=rewardItem_total]").on("click", function() {
		
//				debugger;
		let ckv = $(this).val();
		$.each($('.totalItemDiv').children(), function (index, el) {
			var attr = ckv == index ? 'block' : 'none';
			$(el).css('display', attr);
			
		});
		
	});
	
	//객관식 옵션추가
	$("#add-rewardItemOption").click(function() {
//			debugger;
		console.log("왜안돼");
		$("#radio-value2").append(
			'<div class="projectItem-form">'
			+ '<input type="text" class="input_detail">'
			+ '</div>'
		);
	});
	
	//프로젝트 소개
	$('input[name="info_path"]').change(function(){
	    setImageFromFile(this, '#info_preview');
	});

	function setImageFromFile(input, expression) {
	    if (input.files && input.files[0]) {
	    var reader = new FileReader();
	    reader.onload = function (e) {
	    $(expression).attr('src', e.target.result);
	  }
	  reader.readAsDataURL(input.files[0]);
	  }
	}
	
	//예산
	$('input[name="budget_path"]').change(function(){
	    setImageFromFile(this, '#budget_preview');
	});

	function setImageFromFile(input, expression) {
	    if (input.files && input.files[0]) {
	    var reader = new FileReader();
	    reader.onload = function (e) {
	    $(expression).attr('src', e.target.result);
	  }
	  reader.readAsDataURL(input.files[0]);
	  }
	}
	
	//일정
	$('input[name="sch_path"]').change(function(){
	    setImageFromFile(this, '#sch_preview');
	});

	function setImageFromFile(input, expression) {
	    if (input.files && input.files[0]) {
	    var reader = new FileReader();
	    reader.onload = function (e) {
	    $(expression).attr('src', e.target.result);
	  }
	  reader.readAsDataURL(input.files[0]);
	  }
	}
	
	//팀소개
	$('input[name="team_path"]').change(function(){
	    setImageFromFile(this, '#team_preview');
	});

	function setImageFromFile(input, expression) {
	    if (input.files && input.files[0]) {
	    var reader = new FileReader();
	    reader.onload = function (e) {
	    $(expression).attr('src', e.target.result);
	  }
	  reader.readAsDataURL(input.files[0]);
	  }
	}
	
	//리워드 설명
	$('input[name="reward_path"]').change(function(){
	    setImageFromFile(this, '#reward_preview');
	});

	function setImageFromFile(input, expression) {
	    if (input.files && input.files[0]) {
	    var reader = new FileReader();
	    reader.onload = function (e) {
	    $(expression).attr('src', e.target.result);
	  }
	  reader.readAsDataURL(input.files[0]);
	  }
	}
	
	$('input[name="profile_path"]').change(function(){
	    setImageFromFile(this, '#profileImg');
	});

	function setImageFromFile(input, expression) {
	    if (input.files && input.files[0]) {
	    var reader = new FileReader();
	    reader.onload = function (e) {
	    $(expression).attr('src', e.target.result);
//		    $(".image-change").show();
	  }
	  reader.readAsDataURL(input.files[0]);
//		    $(".image-change").hide();
	  }
	}
	
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
<!-- 						<button>심사기준</button> -->
						<button>등록하기</button>
						<!-- Button trigger modal -->
						<button type="button" data-bs-toggle="modal" data-bs-target="#exampleModal">
						  심사기준
						</button>
						
						<!-- Modal -->
						<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
							<div class="modal-dialog modal-lg">
						    	<div class="modal-content">
						      		<div class="modal-header">
						        		<h5 class="modal-title" id="exampleModalLabel">심사기준을 확인해주세요.</h5>
						        		<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
						      		</div>
						      		<div class="modal-body" style="display: flex;">
						        		<div class="standard-notice">
											<div class="funding-notice" style="color: green;">
												<i class="bi bi-check-circle-fill" style="color: green;"></i> 승인 가능 프로젝트
											</div>
											<div>
												<p>기존에 없던 새로운 시도</p>
												<p>기존에 없던 작품, 제품, 디지털 콘텐츠, 활동, 행사</p>
												<p>창작자의 이전 제품 및 콘텐츠는 새로운 선물에 부수적으로 제공 가능</p>
											</div>
										</div>
						        		<div class="standard-notice">
											<div class="funding-notice">
												<i class="bi bi-dash-circle-fill"></i> 반려 대상 프로젝트
											</div>
											<div>
												<p>기존 상품· 콘텐츠의 판매 및 홍보</p>
												<p>제3자에 후원금 또는 물품 기부</p>
												<p>시중에 판매 및 유통되었던 제품·콘텐츠 제공</p>
												<p>현금, 주식, 지분, 복권, 사이버머니, 상품권 등 수익성 상품 제공</p>
												<p>추첨을 통해서만 제공되는 선물</p>
												<p>무기, 군용장비, 라이터 등 위험 품목</p>
											</div>
										</div>
						      		</div>
						      		<div class="modal-footer">
						        		<button type="button" data-bs-dismiss="modal">Close</button>
						      		</div>
						    	</div>
							</div>
						</div>
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
						<li class="write-list on">
							<span>기본 정보</span>
						</li>
						<li class="write-list">
							<span>펀딩 계획</span>
						</li>
						<li class="write-list">
							<span>리워드 구성</span>
						</li>
						<li class="write-list">
							<span>프로젝트 계획</span>
						</li>
						<li class="write-list">
							<span>창작자 정보</span>
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
		<!-- default -->
		<div class="content-form">
			<div class="write-view-content">
				<div class="view-content-form">
					<div class="projectItemWarp">
						<dl class="projectInfo">
							<dt class="projectInfo-title">
								프로젝트 카테고리
								<div class="icon-asterisk"><i class="bi bi-asterisk"></i></div>
							</dt>
							<dd class="projectInfo-description">
								프로젝트 성격과 가장 일치하는 카테고리를 선택해 주세요.<br>
								적합하지 않을 경우 운영자에 의해 조정될 수 있습니다.
							</dd>
						</dl>
						<div class="projectItem-form">
							<select class="select_detail">
								<option>아동·청소년</option>
								<option>동물</option>
								<option>환경</option>
								<option>장애인</option>
								<option>가족·여성</option>
								<option>어르신</option>
								<option>기타</option>
							</select>
						</div>
					</div>
					<div class="projectItemWarp">
						<dl class="projectInfo">
							<dt class="projectInfo-title">
								프로젝트 제목
								<div class="icon-asterisk"><i class="bi bi-asterisk"></i></div>
							</dt>
							<dd class="projectInfo-description">
								프로젝트 제목을 작성해 주세요.<br>
							</dd>
						</dl>
						<div class="projectItem-form">
							<input type="text" class="input_detail">
						</div>
					</div>
					<!--  -->
					<div class="projectItemWarp">
						<dl class="projectInfo">
							<dt class="projectInfo-title">
								프로젝트 요약
								<div class="icon-asterisk"><i class="bi bi-asterisk"></i></div>
							</dt>
							<dd class="projectInfo-description">
								후원자 분들이 프로젝트를 빠르게 이해할 수 있도록 명확하고 간략하게 소개해주세요.<br>
							</dd>
							<div class="projectInfo-notice">
								<div class="funding-notice">
									프로젝트 요약은 어디 표시되나요?
								</div>
								<div>
									<p>프로젝트 카드형 목록에서 프로젝트 제목 하단에 표시됩니다.</p>
								</div>
							</div>
						</dl>
						<div class="projectItem-form">
							<textarea class="plan-textarea" placeholder="프로젝트요약을 입력해 주세요"></textarea>
						</div>
					</div>
					<div class="projectItemWarp">
						<dl class="projectInfo">
							<dt class="projectInfo-title">
								프로젝트 대표이미지
								<div class="icon-asterisk"><i class="bi bi-asterisk"></i></div>
							</dt>
							<dd class="projectInfo-description">
								프로젝트를 나타낼 이미지를 등록해 주세요.<br>
							</dd>
						</dl>
						<div class="projectItem-form">
							<div class="uploadImage">
								<div>
									<span><i class="bi bi-upload"></i>이미지 업로드</span>
									<input type="file" accept=".jpg, .jpeg, .png" name="file_path">
								</div>
							</div>
							<div class="imagePreview">
								<div class="image-preview">
									<img src="" id="preview" width="180px">
								</div>
<!-- 								<div class="image-change" style="display: none;"> -->
<!-- 									<button id="changeBtn"><i class="bi bi-upload"></i>변경</button> -->
<!-- 								</div> -->
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- funding -->
		<div class="content-form">
			<jsp:include page="./funding.jsp"></jsp:include>
		</div>
		<!-- reward -->
		<div class="content-form">
			<jsp:include page="./reward.jsp"></jsp:include>
		</div>
		<!-- story -->
		<div class="content-form">
			<jsp:include page="./story.jsp"></jsp:include>
		</div>
		<!-- creator -->
		<div class="content-form">
			<jsp:include page="./creator.jsp"></jsp:include>
		</div>
	</div>
</body>
</html>