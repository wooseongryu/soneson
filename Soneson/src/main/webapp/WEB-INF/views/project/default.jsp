<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/soneson/css/projectstyle.css" type="text/css">
<script src= "${pageContext.request.contextPath }/resources/soneson/js/jquery-3.7.0.js"></script>
<script>
$(function() {
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
						<li class="write-list on">
							<a href="projectInsertForm">기본 정보</a>
						</li>
						<li class="write-list">
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
								<option>아이유</option>
								<option>BTS</option>
								<option>블랙핑크</option>
								<option>아이브</option>
								<option>까지만 적을래</option>
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
	</div>
</body>
</html>