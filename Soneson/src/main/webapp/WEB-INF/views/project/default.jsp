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
function defaultImg(this) {
	this.attr('src','' )
}



function updateProject(pro_code) {
// 	alert("저장버튼!");
	let user_id =  "${sessionScope.sId}";
	console.log("id: " + user_id + " pro_code: " + pro_code);
	var form = $('#uploadProjectForm')[0];
	var formData = new FormData(form);
// 	let data = $("#form-dataDiv").serialize();
// 	formData.append('user_id', user_id);
// 	formData.append('pro_code', pro_code);
	for (let key of formData.keys()) {
		console.log(key, ":", formData.get(key));
	}
// 	console.log("data: " + formData); //data: [object FormData]
	
	
	$.ajax({
		type: "POST",
// 		enctype: 'multipart/form-data', 
		url: "updateProject", //안넘어가고 계속 404 뜨는 중
// 		url: $("#uploadProjectForm").attr("action"),
// 		data: $("#form-dataDiv").serialize(), //"formData"
		data: formData,
		cache: false,
		processData: false,
		contentType: false,
		dataType: "json",
		success: function(result) {
			console.log(result);
// 			if(result == "forward") {
// 				alert("로그인 후 이용 가능 합니다.");
// 				location.href="login";
// 			}
			if(result) {
				alert("저장되었습니다.");
			} else {
				alert("잠시 후 다시 시도해주세요.");
			}
			
		},
		error:function(request, status, error){
			console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		}
	});
}


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
	
	
	
	//이미지 미리보기
	$('input[name="pro_thumb_multi"]').change(function(){
	    setImageFromFile(this, '#thumb_preview');
// 	    setImageFromFile(this, '#mainThumb_preview');
	});
	
	function setImageFromFile(input, expression) {
	    if (input.files && input.files[0]) {
	    var reader = new FileReader();
	    reader.onload = function (e) {
	    $(expression).attr('src', e.target.result);
	    $(".image-change").show();
	    $("#mainThunb_preview").attr('src', e.target.result);
	  }
	  reader.readAsDataURL(input.files[0]);
	    $(".image-change").hide();
	  }
	}
	
	// 제목 글자수 제한
	$("#pro_title + .varchar-count .count-length").text($("#pro_title").val().length);
	
	$("#pro_title").on("keyup", function() {
		let content = $(this).val();
		$("#pro_title + .varchar-count .count-length").text(content.length);
		if(content.length <= 0) {
// 			$(".alert-count").text("10자 이상 작성해 주세요");
			$("#pro_title + .varchar-count .alert-count").text("필수 항목 입니다.");
		} else {
// 			$(".alert-count").text("");
			$("#pro_title + .varchar-count .alert-count").text("");
		}
		
		if (content.length > 32) {
	        $(this).val($(this).val().substring(0, 32));
	        alert('글자수는 32자까지 입력 가능합니다.');
	    };
		
	});
	
	// 요약 글자수 제한
	
	$("#pro_summary + .varchar-count .count-length").text($("#pro_summary").val().length);
	$("#pro_summary").on("keyup", function() {
		let content = $(this).val();
		$("#pro_summary + .varchar-count .count-length").text(content.length);
		
		if(content.length < 10) {
// 			$(".alert-count").text("10자 이상 작성해 주세요");
			$("#pro_summary + .varchar-count .alert-count").text("10자 이상 작성해 주세요");
		} else {
			$("#pro_summary + .varchar-count .alert-count").text("");
// 			$(".alert-count").text("");
			
		}
		
		if (content.length > 50) {
	        $(this).val($(this).val().substring(0, 32));
	        alert('글자수는 50자까지 입력 가능합니다.');
	    };
		
	});
	
	
	$("#btnSubmit").click(function() {
		var url = $("#testProject").attr('action');
		var form = $('#testProject')[0];
		var formData = new FormData(form);
		
		$.ajax({
			type: "POST",
			url: url,
			data: formData,
			cache: false,
			processData: false,
			contentType: false,
			success: function(result) {
				console.log(result);
				
			},
			error:function(request,error){
				alert("message:"+request.responseText);
			}
		});
	});

});
	
	//onsubmit
	function checkNull() {
		debugger;
		let pro_categorie = $("#pro_categorie").val();
		let pro_title = $("#pro_title").val();
		let pro_summary = $("#pro_summary").val();
		let pro_thumb = $("#thumb_preview").attr("alt");
		
		let pro_goal = $("#pro_goal").val();
		let start_date = $("#start-funding").val();
		let start_time = $("#pro_start_time").val();
		let end_date = $("#end-funding").val();
		
		let pro_content = $("#info_preview").attr("alt");
		let pro_budget = $("#budget_preview").attr("alt");
		let pro_sch = $("#sch_preview").attr("alt");
		let pro_team = $("#team_preview").attr("alt");
		let pro_reward = $("#reward_preview").attr("alt");
		let pro_notice = $("#pro_notice").val();
		
		let pro_creator = $("#pro_creator").val();
		let pro_profile = $("#profile_preview").attr("alt");
		let pro_createrInfo = $("#pro_createrInfo").val();
		let pro_userAuth = $("input[type=radio][name=pro_userAuth]").val();
		
		let arr0 = [pro_categorie, pro_title, pro_summary, pro_thumb];
		let arr1 = [pro_goal, start_date, start_time, end_date];
		let arr2 = [pro_content, pro_budget, pro_sch, pro_team, pro_reward, pro_notice];
		let arr3 = [pro_creator, pro_profile, pro_createrInfo, pro_userAuth];
		
		let arr = [arr0, arr1, arr2, arr3];
		console.log(arr);
	
		for(let j = 0; j < arr.length; j++) {
			
			for(let i = 0; i < arr[j].length; i++) {
				console.log(arr[j][i]);
				if(arr[j][i] == "" || arr[j][i] == null) {
				
					alert("필수항목을 입력해주세요.");
					return false;
				}
				
			}
		}
		
		
		
		//마지막으로 확인하기
		let checkSubmit = confirm("등록 후 바로 심사가 진행되어 수정이 불가능합니다.\n등록하시겠습니까?");
		
		if(checkSubmit) {
			return true;
		} else {
			return false;
		}
		
	}
	
	
</script>

</head>
<body>
	<form method="post" enctype="multipart/form-data" action="submitProject" id="uploadProjectForm" onsubmit="return checkNull()">
		<input type="hidden" name="pro_code" value="${pro.pro_code }">
		<input type="hidden" name="user_id" value="${pro.user_id }">
		<div class="write-view-container">
			<div class="write-view-top">
				<div class="view-top-header">
					<div class="top-headerWarp">
						<a href="userProjectsCreated" class="top-headerWarp-left">
							<i class="bi bi-arrow-left"></i><span>내가 만든 프로젝트</span>	
						</a>
						<h1>
							<a href="./">
								<img src="${pageContext.request.contextPath }/resources/soneson/img/header/soneson2.jpg" class="package_img">
							</a>
						</h1>
						<div class="top-headerWarp-right">
							<span class="HeaderUserProfile_ellipsis__1iBvz"><a href="user?id=${sessionScope.sId }">${sessionScope.sId } 님</a></span>
						</div>
					</div>	
				</div>
				<div class="view-top-content">
					<div class="top-contentWarp">
						<div class="top-content-right">
	<!--					글 달성률 할 수 이쓰까...? -->
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
							<!-- 등록버튼 submit!! -->
							<button type="submit">등록하기</button>
						</div>
						<div class="top-content-center">
							<div class="top-content-img">
							<c:choose>
								<c:when test="${not empty pro.pro_thumbsnail }">
									<img src="${pageContext.request.contextPath }/resources/upload/${pro.pro_thumbsnail }" id="mainThumb_preview" width="200px" height="133px">
								</c:when>
								<c:otherwise>
									<img src="" id="mainThumb_preview" width="200px" height="133px" onerror="defaultImg(this)">
								</c:otherwise>
							</c:choose>
							</div>
							<div class="plan-title">
								<h2>${pro.pro_title }</h2>
								<p>${pro.pro_categorie}<c:if test="${not empty pro.pro_creator }"> · ${pro.pro_creator }</c:if></p>
								<P>${pro.user_id }(${pro.pro_code })</P>
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
<%-- 							<button formaction="updateProject" onclick="updateProject(${pro.pro_code})">저장하기</button> --%>
							<button type="button" onclick="updateProject(${pro.pro_code})">저장하기</button>
							<input type="hidden" name="isNewInsert" value="N">
						</div>
					</div>
				</div>
			</div>
			<!-- 카테고리에 따른 입력폼 -->
			<!-- default -->
			<div id="form-dataDiv">
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
									<select class="select_detail" name="pro_categorie" id="pro_categorie">
										<option value="아동·청소년" <c:if test="${pro.pro_categorie eq '아동·청소년' }">selected</c:if>>아동·청소년</option>
										<option value="동물" <c:if test="${pro.pro_categorie eq '동물' }">selected</c:if>>동물</option>
										<option value="환경" <c:if test="${pro.pro_categorie eq '환경' }">selected</c:if>>환경</option>
										<option value="장애인" <c:if test="${pro.pro_categorie eq '장애인' }">selected</c:if>>장애인</option>
										<option value="가족·여성" <c:if test="${pro.pro_categorie eq '가족·여성' }">selected</c:if>>가족·여성</option>
										<option value="어르신" <c:if test="${pro.pro_categorie eq '어르신' }">selected</c:if>>어르신</option>
										<option value="기타" <c:if test="${pro.pro_categorie eq '기타' }">selected</c:if>>기타</option>
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
									<div class="textDiv">
										<input type="text" class="input_detail" name="pro_title" id="pro_title" value="${pro.pro_title }">
										<div class="varchar-count">
											<span class="alert-count"></span>
											<span><span class="count-length">0</span> / 32</span>
										</div>
									</div>
		<%-- 							value="${pro.pro_title }" 추가하기 --%>
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
									<div>
										<textarea class="plan-textarea" placeholder="프로젝트요약을 입력해 주세요" name="pro_summary" id="pro_summary">${pro.pro_summary }</textarea>
										<div class="varchar-count">
											<span class="alert-count"></span>
											<span><span class="count-length">0</span> / 50</span>
										</div>
									</div>
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
											<input type="file" accept=".jpg, .jpeg, .png" name="pro_thumb_multi" id="pro_thumb">
										</div>
									</div>
									<div class="imagePreview">
										<div class="image-preview">
										<c:choose>
											<c:when test="${not empty pro.pro_thumbsnail }">
												<img src="${pageContext.request.contextPath }/resources/upload/${pro.pro_thumbsnail }" id="thumb_preview" width="180px" alt="${pro.pro_thumbsnail }">
											</c:when>
											<c:otherwise>
												<img src="" id="thumb_preview" width="180px">
											</c:otherwise>
										</c:choose>
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
		</div>
	</form>
<!-- 	<div> -->
<!-- 	<hr> -->
<!-- 		<form action="testProject" id="testProject"> -->
<!-- 			<input type="text" name="test"> -->
<!-- 			<input type="file" accept=".jpg, .jpeg, .png" name="pro_thumbsnail"> -->
<!-- 			<input type="button" id="btnSubmit" value="폼확인"> -->
<!-- 		</form> -->
<!-- 	</div> -->
</body>
</html>