<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<script>
	$(function() {
		//프로젝트 소개
		$('input[name="pro_content_multi"]').change(function(){
		    setImageFromFile(this, '#info_preview');
		});

		function setImageFromFile(input, expression) {
		    if (input.files && input.files[0]) {
		    var reader = new FileReader();
		    reader.onload = function (e) {
		    $(expression).attr('src', e.target.result);
		    $(expression).attr('alt', "true");
		  }
		  reader.readAsDataURL(input.files[0]);
		  }
		}
		
		//예산
		$('input[name="pro_budget_multi"]').change(function(){
		    setImageFromFile(this, '#budget_preview');
		});

		function setImageFromFile(input, expression) {
		    if (input.files && input.files[0]) {
		    var reader = new FileReader();
		    reader.onload = function (e) {
		    $(expression).attr('src', e.target.result);
		    $(expression).attr('alt', "true");
		  }
		  reader.readAsDataURL(input.files[0]);
		  }
		}
		
		//일정
		$('input[name="pro_sch_multi"]').change(function(){
		    setImageFromFile(this, '#sch_preview');
		});

		function setImageFromFile(input, expression) {
		    if (input.files && input.files[0]) {
		    var reader = new FileReader();
		    reader.onload = function (e) {
		    $(expression).attr('src', e.target.result);
		    $(expression).attr('alt', "true");
		  }
		  reader.readAsDataURL(input.files[0]);
		  }
		}
		
		//팀소개
		$('input[name="pro_team_multi"]').change(function(){
		    setImageFromFile(this, '#team_preview');
		});

		function setImageFromFile(input, expression) {
		    if (input.files && input.files[0]) {
		    var reader = new FileReader();
		    reader.onload = function (e) {
		    $(expression).attr('src', e.target.result);
		    $(expression).attr('alt', "true");
		  }
		  reader.readAsDataURL(input.files[0]);
		  }
		}
		
		//리워드 설명
		$('input[name="pro_reward_multi"]').change(function(){
		    setImageFromFile(this, '#reward_preview');
		});

		function setImageFromFile(input, expression) {
		    if (input.files && input.files[0]) {
		    var reader = new FileReader();
		    reader.onload = function (e) {
		    $(expression).attr('src', e.target.result);
		    $(expression).attr('alt', "true");
		  }
		  reader.readAsDataURL(input.files[0]);
		  }
		}
		
		//프로젝트 정책 글자수 제한
		$("#pro_notice + .varchar-count .count-length").text($("#pro_notice").val().length);
		
		$("#pro_notice").on("keyup keydown blur", function() {
			let content = $(this).val();
			$("#pro_notice + .varchar-count .count-length").text(content.length);
			if(content.length <= 0) {
//	 			$(".alert-count").text("10자 이상 작성해 주세요");
				$("#pro_notice + .varchar-count .alert-count").text("필수 항목 입니다.");
				$(this).css("border", "1px solid rgb(248, 100, 83)");
				$(this).focus();
			} else {
//	 			$(".alert-count").text("");
				$("#pro_notice + .varchar-count .alert-count").text("");
				$(this).css("border", "1px solid #d1d3e2");
			}
			
			if (content.length > 1000) {
		        $(this).val($(this).val().substring(0, 1000));
		        alert('글자수는 1000자까지 입력 가능합니다.');
		        $(this).focus();
		    };
			
		});
		
		
	});
</script>
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
						프로젝트에 대해 자세히 설명해 주세요.<br>
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
				<div class="projectItem-form">
					<div class="uploadImage">
						<div>
							<span><i class="bi bi-upload"></i>소개 이미지 업로드</span>
							<input type="file" accept=".jpg, .jpeg, .png" name="pro_content_multi" id="pro_content">
						</div>
					</div>
					<div class="imagePreview">
						<div class="image-preview">
							<c:choose>
								<c:when test="${not empty pro.pro_content }">
									<img src="${pageContext.request.contextPath }/resources/upload/${pro.pro_content }" id="info_preview" width="630px" alt="${pro.pro_content }" onerror="defaultImg(this)">
								</c:when>
								<c:otherwise>
									<img src="" id="info_preview" width="180px">
								</c:otherwise>
							</c:choose>
						</div>
					</div>
				</div>
			</div>
			<!--  -->
			<div class="projectItemWarp">
				<dl class="projectInfo">
					<dt class="projectInfo-title">
						프로젝트 예산
						<div class="icon-asterisk"><i class="bi bi-asterisk"></i></div>
					</dt>
					<dd class="projectInfo-description">
						설정하신 목표 금액을 어디에 사용 예정이신지 구체적인 지출 항목으로 적어 주세요.<br>
					</dd>
					<div class="projectInfo-notice">
						<div class="funding-notice">
							다음 항목을 확인해주세요!
						</div>
						<div>
							<p>예산은 ‘제작비’가 아닌 구체적인 ‘항목’으로 적어 주세요.</p>
							<p>이번 프로젝트의 실행에 필요한 비용으로만 작성해 주세요.</p>
							<p>기부, 다음 프로젝트에 사용하기 등은 이번 프로젝트의 예산으로 볼 수 없어요.</p>
							<p>(예시)<br>
								목표 금액은 아래의 지출 항목으로 사용할 예정입니다.<br>
								인건비<br>
								배송비<br>
								발주비<br>
								디자인 의뢰비<br>
								수수료</p>
						</div>
					</div>
				</dl>
				<div class="projectItem-form">
					<div class="uploadImage">
						<div>
							<span><i class="bi bi-upload"></i>예산 이미지 업로드</span>
							<input type="file" accept=".jpg, .jpeg, .png" name="pro_budget_multi" id="pro_budget">
						</div>
					</div>
					<div class="imagePreview">
						<div class="image-preview">
							<c:choose>
								<c:when test="${not empty pro.pro_budget }">
									<img src="${pageContext.request.contextPath }/resources/upload/${pro.pro_budget }" id="budget_preview" width="630px" alt="${pro.pro_budget }" onerror="defaultImg(this)">
								</c:when>
								<c:otherwise>
									<img src="" id="budget_preview" width="180px">
								</c:otherwise>
							</c:choose>
						</div>
					</div>
				</div>
			</div>
			<!--  -->
			<div class="projectItemWarp">
				<dl class="projectInfo">
					<dt class="projectInfo-title">
						프로젝트 일정
						<div class="icon-asterisk"><i class="bi bi-asterisk"></i></div>
					</dt>
					<dd class="projectInfo-description">
						작업 일정을 구체적인 날짜와 함께 작성하세요.<br>
						후원자가 일정을 보면서 어떤 작업이 진행될지 알 수 있어야 합니다.<br>
						펀딩 종료 이후의 제작 일정을 반드시 포함하세요.
					</dd>
					<div class="projectInfo-notice">
						<div class="funding-notice">
							아래의 양식을 참고하여 작성해보세요.
						</div>
						<div>
							<p>(예시)<br>
								0월 0일: 현재 제품 시안 및 1차 샘플 제작<br>
								0월 0일: 펀딩 시작일<br>
								0월 0일: 펀딩 종료일<br>
								0월 0일: 제품 디테일 보완<br>
								0월 0일: 제품 발주 시작<br>
								0월 0일: 후가공 처리 및 포장 작업<br>
								0월 0일: 선물 예상 전달일</p>
						</div>
					</div>
				</dl>
				<div class="projectItem-form">
					<div class="uploadImage">
						<div>
							<span><i class="bi bi-upload"></i>일정 이미지 업로드</span>
							<input type="file" accept=".jpg, .jpeg, .png" name="pro_sch_multi" id="pro_sch">
						</div>
					</div>
					<div class="imagePreview">
						<div class="image-preview">
							<c:choose>
								<c:when test="${not empty pro.pro_sch }">
									<img src="${pageContext.request.contextPath }/resources/upload/${pro.pro_sch }" id="sch_preview" width="630px" alt="${pro.pro_sch }" onerror="defaultImg(this)">
								</c:when>
								<c:otherwise>
									<img src="" id="sch_preview" width="180px">
								</c:otherwise>
							</c:choose>
						</div>
					</div>
				</div>
			</div>
			<!--  -->
			<div class="projectItemWarp">
				<dl class="projectInfo">
					<dt class="projectInfo-title">
						프로젝트 팀 소개
						<div class="icon-asterisk"><i class="bi bi-asterisk"></i></div>
					</dt>
					<dd class="projectInfo-description">
						프로젝트를 진행하는 팀(혹은 개인)을 알려주세요.<br>
						이 프로젝트를 완수할 수 있다는 점을 후원자가 알 수 있어야 합니다.
					</dd>
				</dl>
				<div class="projectItem-form">
					<div class="uploadImage">
						<div>
							<span><i class="bi bi-upload"></i>팀소개 이미지 업로드</span>
							<input type="file" accept=".jpg, .jpeg, .png" name="pro_team_multi" id="pro_team">
						</div>
					</div>
					<div class="imagePreview">
						<div class="image-preview">
							<c:choose>
								<c:when test="${not empty pro.pro_team }">
									<img src="${pageContext.request.contextPath }/resources/upload/${pro.pro_team }" id="team_preview" width="630px" alt="${pro.pro_team }" onerror="defaultImg(this)">
								</c:when>
								<c:otherwise>
									<img src="" id="team_preview" width="180px">
								</c:otherwise>
							</c:choose>
						</div>
					</div>
				</div>
			</div>
			<!--  -->
			<div class="projectItemWarp">
				<dl class="projectInfo">
					<dt class="projectInfo-title">
						리워드 설명
						<div class="icon-asterisk"><i class="bi bi-asterisk"></i></div>
					</dt>
					<dd class="projectInfo-description">
						후원자가 후원 금액별로 받을 수 있는 선물을 상세하게 알려주세요.<br>
					</dd>
				</dl>
				<div class="projectItem-form">
					<div class="uploadImage">
						<div>
							<span><i class="bi bi-upload"></i>리워드설명 이미지 업로드</span>
							<input type="file" accept=".jpg, .jpeg, .png" name="pro_reward_multi" id="pro_reward">
						</div>
					</div>
					<div class="imagePreview">
						<div class="image-preview">
							<c:choose>
								<c:when test="${not empty pro.pro_reward }">
									<img src="${pageContext.request.contextPath }/resources/upload/${pro.pro_reward }" id="reward_preview" width="630px" alt="${pro.pro_reward }" onerror="defaultImg(this)">
								</c:when>
								<c:otherwise>
									<img src="" id="reward_preview" width="180px">
								</c:otherwise>
							</c:choose>
						</div>
					</div>
				</div>
			</div>
			<!--  -->
			<div class="projectItemWarp">
				<dl class="projectInfo">
					<dt class="projectInfo-title">
						프로젝트 정책
						<div class="icon-asterisk"><i class="bi bi-asterisk"></i></div>
					</dt>
					<dd class="projectInfo-description">
						펀딩 종료 후 후원자의 불만 또는 분쟁 발생 시 중요한 기준이 될 수 있습니다. 신중히 작성해주세요.<br>
					</dd>
				</dl>
				<div class="projectItem-form">
					<div class="projectInfo-writeDIv">
							<p class="tiny-title">프로젝트 정책</p>
							<p class="projectInfo-description">
								이 프로젝트의 정책을 기입해주세요.<br>
							</p>
							<section class="reward-section">
								<textarea rows="10" cols="" class="plan-textarea" style="height: 300px;" name="pro_notice" id="pro_notice">${pro.pro_notice }</textarea>
								<div class="varchar-count">
									<span class="alert-count"></span>
									<span><span class="count-length">0</span> / 1000</span>
								</div>
							</section>
						</div>
				</div>
			</div>
		</div>
	</div>
</div>