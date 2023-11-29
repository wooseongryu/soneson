<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script>
	$(function() {
		$('input[name="pro_profile"]').change(function(){
		    setImageFromFile(this, '#profileImg');
		});

		function setImageFromFile(input, expression) {
		    if (input.files && input.files[0]) {
		    var reader = new FileReader();
		    reader.onload = function (e) {
		    $(expression).attr('src', e.target.result);
//			    $(".image-change").show();
		  }
		  reader.readAsDataURL(input.files[0]);
//			    $(".image-change").hide();
		  }
		}
	});
</script>
<!-- 카테고리에 따른 입력폼 -->
<div>
	<div class="write-view-content">
		<div class="view-content-form">
			<div class="projectItemWarp">
				<dl class="projectInfo">
					<dt class="projectInfo-title">
						창작자 이름
						<div class="icon-asterisk"><i class="bi bi-asterisk"></i></div>
					</dt>
					<dd class="projectInfo-description">
						창작자 개인이나 팀을 대표할 수 있는 이름을 써주세요.<br>
					</dd>
				</dl>
				<div class="projectItem-form">
					<input type="text" class="input_detail" name="pro_creator">
				</div>
			</div>	
		</div>
		<div class="view-content-form">
			<div class="projectItemWarp">
				<dl class="projectInfo">
					<dt class="projectInfo-title">
						프로필 이미지
						<div class="icon-asterisk"><i class="bi bi-asterisk"></i></div>
					</dt>
					<dd class="projectInfo-description">
						창작자 개인이나 팀을 대표할 수 있는 사진을 올려주세요.<br>
					</dd>
				</dl>
				<div class="projectItem-form">
					<div class="profile-upload">
						<div class="profile-left">
							<div class="profile-imageDiv">
								<div  class="profile-image">
<%-- 										<div class="profile-image" style="background-image: url('${pageContext.request.contextPath }/resources/soneson/img/project/sample.jpg')"> --%>
									<img src="${pageContext.request.contextPath }/resources/upload/${pro.pro_profile }" id="profileImg">
<%-- 											<img alt="" src="${pageContext.request.contextPath }/resources/soneson/img/project/sample.jpg"> --%>
								</div>
							</div>
						</div>
						<div class="profile-right">
							<div class="uploadDiv">
								<div class="uploadImage">
									<div>
										<span><i class="bi bi-upload"></i>이미지 업로드</span>
										<input type="file" accept=".jpg, .jpeg, .png" name="pro_profile_multi">
									</div>
								</div>
<!-- 										<input type="file" accept="jpg, .png, .gif, .jpeg" style="display: none;"> -->
<!-- 										<button type="button" class="profile-uploadBtn"> -->
<!-- 											<span><i class="bi bi-upload"></i>이미지 업로드</span> -->
<!-- 										</button> -->
							</div>
							<p>
								파일 형식은 jpg 또는 png 또는 gif로,<br>
								사이즈는 가로 200px, 세로 200px 이상으로 올려주세요.
							</p>
						</div>
					</div>
				</div>
			</div>	
		</div>
		<!--  -->
		<div class="view-content-form">
			<div class="projectItemWarp">
				<dl class="projectInfo">
					<dt class="projectInfo-title">
						창작자 소개
						<div class="icon-asterisk"><i class="bi bi-asterisk"></i></div>
					</dt>
					<dd class="projectInfo-description">
						2~3문장으로 창작자님의 이력과 간단한 소개를 써주세요.<br>
					</dd>
				</dl>
				<div class="projectItem-form">
					<textarea class="plan-textarea" placeholder="간단한 소개를 써주세요" name="pro_createrInfo"></textarea>
				</div>
			</div>	
		</div>
		<!--  -->
		<div class="view-content-form">
			<div class="projectItemWarp">
				<dl class="projectInfo">
					<dt class="projectInfo-title">
						본인 인증
						<div class="icon-asterisk"><i class="bi bi-asterisk"></i></div>
					</dt>
					<dd class="projectInfo-description">
						창작자 본인 명의의 휴대폰 번호로 인증해주세요.<br>
					</dd>
				</dl>
				<div class="projectItem-form">
					<div class="projectInfo-writeDIv">
						<div class="creator-info">
							<div class="creator-authInfo">
								<i class="bi bi-person-fill"></i>	
								<p>본인인증을 해주세요.</p>
							</div>
							<button class="authInfoBtn">인증하기</button>
						</div>
					</div>
				</div>
			</div>	
		</div>
		<div class="view-content-form">
			<div class="projectItemWarp">
				<dl class="projectInfo">
					<dt class="projectInfo-title">
						입금 계좌
						<div class="icon-asterisk"><i class="bi bi-asterisk"></i></div>
					</dt>
					<dd class="projectInfo-description">
						후원금을 전달받을 계좌를 등록해주세요.<br>
						법인사업자는 법인계좌로만 정산받을 수 있습니다.
					</dd>
				</dl>
				<div class="projectItem-form">
					<div class="projectInfo-writeDIv">
						<div class="creator-info">
							<div class="creator-authInfo">
								<i class="bi bi-coin"></i>
								<p>후원금을 수령할 계좌를 등록해주세요.</p>
							</div>
							<button class="authInfoBtn">등록하기</button>
						</div>
					</div>
				</div>
			</div>	
		</div>
		<div class="view-content-form">
			<div class="projectItemWarp">
				<dl class="projectInfo">
					<dt class="projectInfo-title">
						세금계산서 발행
						<div class="icon-asterisk"><i class="bi bi-asterisk"></i></div>
					</dt>
					<dd class="projectInfo-description">
						수수료 세금계산서 발행에 필요한 정보를 등록해주세요.
					</dd>
				</dl>
				<div class="projectItem-form">
					<div class="projectInfo-writeDIv">
						<div class="creator-info">
							<div class="creator-authInfo">
								<i class="bi bi-cash"></i>
								<p>세금계산서 발행을 위한 정보를 등록해주세요.</p>
							</div>
							<button class="authInfoBtn">등록하기</button>
						</div>
					</div>
				</div>
			</div>	
		</div>
	</div>
</div>