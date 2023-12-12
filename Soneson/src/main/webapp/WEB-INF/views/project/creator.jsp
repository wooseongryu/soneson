<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script>
// 	//본인인증
// 	function authInfo() {
// 		let requestUri = "https://openapi.openbanking.or.kr/v2.0/user/me?";
// 			+ "Authorization"
		
// 		window.open("RequestAuth", "authWindow", "width=600, height=800");
// 	}
	
	//계좌등록
	function authAccountCreator() {
		let requestUri = "https://testapi.openbanking.or.kr/oauth/2.0/authorize?"
			+ "response_type=code"
			+ "&client_id=4066d795-aa6e-4720-9383-931d1f60d1a9"
			+ "&redirect_uri=http://localhost:8081/soneson/callback"
// 			+ "&scope=login inquiry transfer oob"
			+ "&scope=login inquiry transfer"
			+ "&state=12345678901234567890123456789012"
			+ "&auth_type=0";
		window.open(requestUri, "authWindow", "width=600, height=800");	
		
		
		//등록을 하고 꺼지면 여기서 계속 이어나갈 수 가 있나??
		//controller에서 session에 저장되니까 그 값을 가지고 getAuthAccount(access_token, user_seq_no); 바로 호출하고싶음
		
	}
	
	//새로 만들 함수
	let access_token = "";
	let user_seq_no = "";
	function selectAuthInfo() {
		
		access_token = "${sessionScope.access_token}";
		user_seq_no = "${sessionScope.user_seq_no}";
		getAuthAccount(access_token, user_seq_no);
		
	}
	
	
	function getAuthAccount(access_token, user_seq_no) {
// 		debugger;
		console.log("access_token: " + access_token);
		console.log("user_seq_no: " + user_seq_no);
// 		console.log(access_token + ", " + user_seq_no);
		$.ajax({
			type: "GET",
			url: "selectAccountInfo",
			data: {
				"access_token": access_token,
				"user_seq_no": user_seq_no
			},
			dataType: "json",
			success: function(data) {
// 				console.log(data);
				let infoList = data.res_list;
				let str = "";
				$("#creator-authAccountInfo").empty();
				str += '<button class="authInfoBtn" type="button" onclick="authAccountCreator()">계좌 추가 등록</button>'
				str += '<input type="hidden" name="user_name" value=" ' + data.user_name + ' ">'
				
				for(info of infoList) {
					console.log(info);
					str += '<label for="accountVal' + info.fintech_use_num + '">'
					str += '<input type="radio" id="accountVal' + info.fintech_use_num + '" class="account-radioBtn" name="pro_userAuth" value="' + info.fintech_use_num + '">'
					str += 		'<div class="projectInfo-writeDIv">'
					str += 			'<div class="creator-info">'
					str += 				'<div class="creator-authInfo">'
					str += 					'<h5>'
					str += 						'<i class="bi bi-coin"></i>&emsp;'
					str += 						info.account_holder_name
					str += 					'</h5>'
					str += 				'</div>'
					str += 			'</div>'
					str += 			'<div>'
					str += 				'<p>'
					str += 					info.bank_name + '&emsp;' + info.account_num_masked
					str += 				'</p>'
					str += 			'</div>'
					str += 		  '</div>'
					str += '</label>'
				}
				
				$("#creator-authAccountInfo").append(str);
				
				
				
			},
			error:function(request, status, error){
				console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
			}
		});//ajax끝
		
		
	}
	
	//할라나...세금계산서발행
	function taxInfo() {
		window.open("RequestAuth", "authWindow", "width=600, height=800");
	}


	$(function() {
		$('input[name="pro_profile_multi"]').change(function(){
		    setImageFromFile(this, '#profile_preview');
		});

		function setImageFromFile(input, expression) {
		    if (input.files && input.files[0]) {
		    var reader = new FileReader();
		    reader.onload = function (e) {
		    $(expression).attr('src', e.target.result);
		    $(expression).attr('alt', "true");
//			    $(".image-change").show();
		  }
		  reader.readAsDataURL(input.files[0]);
//			    $(".image-change").hide();
		  }
		}
		
		// 창작자이름 글자수 제한
		$("#pro_creator + .varchar-count .count-length").text($("#pro_creator").val().length);
		
		$("#pro_creator").on("keyup keydown blur", function() {
			let content = $(this).val();
			$("#pro_creator + .varchar-count .count-length").text(content.length);
			if(content.length <= 0) {
//	 			$(".alert-count").text("10자 이상 작성해 주세요");
				$("#pro_creator + .varchar-count .alert-count").text("필수 항목 입니다.");
				$(this).css("border", "1px solid rgb(248, 100, 83)");
				$(this).focus();
			} else {
//	 			$(".alert-count").text("");
				$("#pro_creator + .varchar-count .alert-count").text("");
				$(this).css("border", "1px solid #d1d3e2");
			}
			
			if (content.length > 20) {
		        $(this).val($(this).val().substring(0, 20));
		        alert('글자수는 20자까지 입력 가능합니다.');
		    };
			
		});
		
		// 창작자소개 글자수 제한
		$("#pro_createrInfo + .varchar-count .count-length").text($("#pro_creator").val().length);
		
		$("#pro_createrInfo").on("keyup keydown blur", function() {
			let content = $(this).val();
			$("#pro_createrInfo + .varchar-count .count-length").text(content.length);
			if(content.length <= 0) {
				$("#pro_createrInfo + .varchar-count .alert-count").text("필수 항목 입니다.");
				$(this).css("border", "1px solid rgb(248, 100, 83)");
				$(this).focus();
			} else {
//	 			$(".alert-count").text("");
				$("#pro_createrInfo + .varchar-count .alert-count").text("");
				$(this).css("border", "1px solid #d1d3e2");
			}
			
			if (content.length > 100) {
		        $(this).val($(this).val().substring(0, 100));
		        alert('글자수는 100자까지 입력 가능합니다.');
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
						창작자 이름
						<div class="icon-asterisk"><i class="bi bi-asterisk"></i></div>
					</dt>
					<dd class="projectInfo-description">
						창작자 개인이나 팀을 대표할 수 있는 이름을 써주세요.<br>
					</dd>
				</dl>
				<div class="projectItem-form">
					<input type="text" class="input_detail" name="pro_creator" id="pro_creator" value="${pro.pro_creator }">
					<div class="varchar-count">
						<span class="alert-count"></span>
						<span><span class="count-length">0</span> / 20</span>
					</div>
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
									<c:choose>
										<c:when test="${not empty pro.pro_profile }">
											<img src="${pageContext.request.contextPath }/resources/upload/${pro.pro_profile }" id="profile_preview" width="630px" alt="${pro.pro_profile }" onerror="defaultImg(this)">
										</c:when>
										<c:otherwise>
											<img src="" id="profile_preview" width="180px">
										</c:otherwise>
									</c:choose>
								</div>
							</div>
						</div>
						<div class="profile-right">
							<div class="uploadDiv">
								<div class="uploadImage">
									<div>
										<span><i class="bi bi-upload"></i>이미지 업로드</span>
										<input type="file" accept=".jpg, .jpeg, .png" name="pro_profile_multi" id="pro_profile">
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
					<textarea class="plan-textarea" placeholder="간단한 소개를 써주세요" name="pro_createrInfo" id="pro_createrInfo">${pro.pro_createrInfo }</textarea>
					<div class="varchar-count">
						<span class="alert-count"></span>
						<span><span class="count-length">0</span> / 100</span>
					</div>
				</div>
			</div>	
		</div>
		<!--  -->
<!-- 		<div class="view-content-form"> -->
<!-- 			<div class="projectItemWarp"> -->
<!-- 				<dl class="projectInfo"> -->
<!-- 					<dt class="projectInfo-title"> -->
<!-- 						본인 인증 -->
<!-- 						<div class="icon-asterisk"><i class="bi bi-asterisk"></i></div> -->
<!-- 					</dt> -->
<!-- 					<dd class="projectInfo-description"> -->
<!-- 						창작자 본인 명의의 휴대폰 번호로 인증해주세요.<br> -->
<!-- 					</dd> -->
<!-- 				</dl> -->
<!-- 				<div class="projectItem-form"> -->
<!-- 					<div class="projectInfo-writeDIv"> -->
<!-- 						<div class="creator-info"> -->
<!-- 							<div class="creator-authInfo"> -->
<!-- 								<i class="bi bi-person-fill"></i>	 -->
<!-- 								<p>본인인증을 해주세요.</p> -->
<!-- 							</div> -->
<!-- 							<button class="authInfoBtn" type="button" onclick="authInfo()">인증하기</button> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 			</div>	 -->
<!-- 		</div> -->
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
				<div class="projectItem-form"  id="creator-authAccountInfo">
					<c:choose>
						<c:when test="${not empty fintechInfo.access_token }">
							<input type="hidden" name="user_name" value="${userInfo.user_name }">
							<button class="authInfoBtn" type="button" onclick="authAccountCreator()">계좌 추가 등록</button>
<%-- 									<button class="authInfoBtn" type="button" onclick="getAuthAccount('${fintechInfo.access_token}', '${fintechInfo.user_seq_no }')">계좌가져오기</button> --%>
							<c:forEach var="auth" items="${userInfo.res_list }">
								<label for="accountVal${auth.fintech_use_num }">
									<input type="radio" id="accountVal${auth.fintech_use_num }" class="account-radioBtn" name="pro_userAuth" value="${auth.fintech_use_num}"<c:if test="${pro.pro_userAuth eq auth.fintech_use_num }">checked</c:if>>
									<div class="projectInfo-writeDIv">
										<div class="creator-info">
											<div class="creator-authInfo">
												<h5>
													<i class="bi bi-coin"></i>&emsp;${auth.account_holder_name }
												</h5>
											</div>
										</div>
										<div>
											<p>
												${auth.bank_name }&emsp;${auth.account_num_masked }
											</p>
										</div>
									</div>
								</label>
							</c:forEach>	
						</c:when>
						<c:otherwise>
							<div class="projectInfo-writeDIv">
								<div class="creator-info">
									<div class="creator-authInfo">
										<i class="bi bi-coin"></i>
										<p>
											후원금을 수령할 계좌를 등록해주세요.<br>
											본인인증 후 계좌등록이 가능합니다.
										</p>
									</div>
											<button class="authInfoBtn" type="button" onclick="authAccountCreator()">등록하기</button>
								</div>
							</div>
						</c:otherwise>
					</c:choose>
				</div>
				<!-- 등록햇을 때 예시 -->
<!-- 				<div class="projectItem-form"> -->
<!-- 					<input type="radio" id="accountVal0"> -->
<!-- 					<label for="accountVal0"> -->
<!-- 						<div class="projectInfo-writeDIv"> -->
<!-- 							<div class="creator-info"> -->
<!-- 								<div class="creator-authInfo"> -->
<!-- 									<h5> -->
<!-- 										<i class="bi bi-coin"></i> -->
<!-- 										임진왜란 -->
<!-- 									</h5> -->
<!-- 								</div> -->
<!-- 							</div> -->
<!-- 							<div> -->
<!-- 								<p> -->
<!-- 									kb국민은행 95880201****** -->
<!-- 								</p> -->
<!-- 							</div> -->
<!-- 						</div> -->
<!-- 					</label> -->
<!-- 				</div> -->
				<!-- 나중에 append로 쓸 구역임 -->
			</div>	
		</div>
<!-- 		<div class="view-content-form"> -->
<!-- 			<div class="projectItemWarp"> -->
<!-- 				<dl class="projectInfo"> -->
<!-- 					<dt class="projectInfo-title"> -->
<!-- 						세금계산서 발행 -->
<!-- 						<div class="icon-asterisk"><i class="bi bi-asterisk"></i></div> -->
<!-- 					</dt> -->
<!-- 					<dd class="projectInfo-description"> -->
<!-- 						수수료 세금계산서 발행에 필요한 정보를 등록해주세요. -->
<!-- 					</dd> -->
<!-- 				</dl> -->
<!-- 				<div class="projectItem-form"> -->
<!-- 					<div class="projectInfo-writeDIv"> -->
<!-- 						<div class="creator-info"> -->
<!-- 							<div class="creator-authInfo"> -->
<!-- 								<i class="bi bi-cash"></i> -->
<!-- 								<p>세금계산서 발행을 위한 정보를 등록해주세요.</p> -->
<!-- 							</div> -->
<!-- 							<button class="authInfoBtn" type="button" onclick="taxInfo()">등록하기</button> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 			</div>	 -->
<!-- 		</div> -->
	</div>
</div>