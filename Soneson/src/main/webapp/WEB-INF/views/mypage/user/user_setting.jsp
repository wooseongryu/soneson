<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Anime Template">
    <meta name="keywords" content="Anime, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>손에손</title>

	<script src="${pageContext.request.contextPath }/resources/soneson/js/jquery-3.7.0.js"></script>
    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Mulish:wght@300;400;500;600;700;800;900&display=swap"
    rel="stylesheet">

    <!-- Css Styles -->
   	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/soneson/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/soneson/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/soneson/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/soneson/css/plyr.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/soneson/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/soneson/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/soneson/css/slicknav.min.css" type="text/css">
    
<%--     <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/main/css/happy/global.css" rel="sytlesheet"> --%>
    
    <!-- 류우성 CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/user/style.css" type="text/css">
    
    <script type="text/javascript">
    	let pointColor = "#F86453";
    	
    	let picture = "";
    	let info = "";
    	let info_print = "";
    	let user_name = "";
    	
    	function userProfile(id) {
    		$.ajax({
    			type: 'post',
    			url: 'settingUserProfile',
    			dataType: 'json',
    			success: function(resp) {
    				reset_screen(id);
    				
					info = resp.user_info;
					info_print = resp.user_info;
    				if (info == "" || info == null) {
    					info_print = "등록된 소개가 없습니다.";
    				}
    				
    				picture = resp.user_picture;
    				if (picture == "" || picture == null) {
    					picture = "${pageContext.request.contextPath }/resources/user/prifile.png";
    				}
    				
    				user_name = resp.user_name;

					$("#user_content").append(
						  ' <div class="anime__details__review">                                                                                    '
						+ '  	<div class="anime__review__item">                                                                                   '
                        + '  		<div class="user__setting__text" id="user_profile_pic">                                                                '
	                    + '      		<h6>프로필 사진</h6>                                                                                        '
	                    + '      		<div class="profileImgDiv">                                                                                 '
// 						+ ' 				<img alt="" src="${pageContext.request.contextPath }/resources/user/alarm.jpg" class="profileImg">      '
						+ ' 				<img alt="" src="' + picture + '" class="profileImg">      '
						+ ' 			</div>                                                                                                      '
	                    + '      		<div class="user_follow_btn">                                                                               '
	                    + '      			<a onclick="updateUserProfilePic()">변경</a>                                                                  '
	                    + '      		</div>                                                                                                      '
						+ '  		</div>                                                                                                          '
                    	+ '  	</div>                                                                                                              '
                	 	+ ' </div>                                                                                                                  '
							
						+ ' <div class="anime__details__review">                                     '
						+ '  	<div class="anime__review__item">                                    '
                        + '  		<div class="user__setting__text" id="user_name">                 '
	                    + '      		<h6>이름</h6>                                                '
	                    + '      		<p style="margin-top: 10px">' + user_name + '</p>                       '
	                    + '      		<div class="user_follow_btn">                                '
	                    + '      			<a onclick="updateUserName()">변경</a>     '
	                    + '      		</div>                                                       '
						+ '  		</div>                                                           '
                    	+ '  	</div>                                                               '
                	 	+ ' </div>                                                                   '

                	 	+ ' <div class="anime__details__review">                                                        '
						+ '  	<div class="anime__review__item">                                                       '
	                    + '  		<div class="user__setting__text" id="user_intro">                                   '
	                    + '      		<h6>소개</h6>                                                                   '
	                    + '      		<p style="margin-top: 10px; width: 700px">' + info_print + '</p>           '
	                    + '      		<div class="user_follow_btn">                                                   '
	                    + '      			<a onclick="updateUserIntroduction()">변경</a>                '
	                    + '      		</div>                                                                          '
						+ '  		</div>                                                                              '
	                	+ '  	</div>                                                                                  '
	            	 	+ ' </div>                                                                                      '
					);
    			},
    			error: function() {
    				alert("에러!");
    			}
    		});
    	}
    	
    	function updateUserProfilePic() {
    		$.ajax({
//     			type: 'post',
//     			url: 'settingUpdateUserProfilePic',
//     			dataType: 'json',
    			success: function(resp) {
    				console.log(sessionStorage.getItem('sId'));
    				
    				$("#user_profile_pic").children().remove();
    				
    				$("#user_profile_pic").append(
   						  ' <h6>프로필 사진</h6>                                                                                                          '
	                    + '                                                                                                                               '
						+ ' <div class="profileImgDiv">                                                                                                   '
						+ ' 	<img alt="" src="' + picture + '" id="profileImg" class="profileImg">        '
						+ ' </div>                                                                                                                        '
                        + '                                                                                                                               '
						+ ' <div class="profile-right">                                                                                                   '
						+ ' 	<div class="uploadDiv">                                                                                                   '
						+ ' 		<div class="uploadImage">                                                                                             '
						+ ' 			<div>                                                                                                             '
						+ ' 				<span><i class="bi bi-upload"></i>이미지 업로드</span>                                                        '
						+ ' 				<input type="file" accept=".jpg, .jpeg, .png" name="profile_path">                                            '
						+ ' 			</div>                                                                                                            '
						+ ' 		</div>                                                                                                                '
						+ ' 	</div>                                                                                                                    '
						+ ' 	<p>                                                                                                                       '
						+ ' 		파일 형식은 jpg 또는 png 또는 gif로,<br>                                                                              '
						+ ' 		사이즈는 가로 200px, 세로 200px 이상으로 올려주세요.                                                                  '
						+ ' 	</p>                                                                                                                      '
						+ ' </div>                                                                                                                        '
						+ ' 	                                                                                                                          '
                		+ ' <div class=user_cancel_btn>                                                                                                   '
                		+ ' 	<a onclick="cancelUpdateUserProfilePic()">취소</a>                                                                                                    '
                		+ ' </div>                                                                                                                        '
	                    + '                                                                                                                               '
                    	+ ' 	<div class="user_follow_btn">                                                                                             '
                    	+ ' 		<a onclick="">변경</a>                                                                                                '
                    	+ ' 	</div>                                                                                                                    '
    				);
    				
    				$('input[name="profile_path"]').change(function(){
    	    		    setImageFromFile(this);
    	    		});
    			},
    			error: function() {
    				alert("에러!");
    			}
    		});
    	}
    	
    	function cancelUpdateUserProfilePic() {
    		$.ajax({
    			type: 'post',
    			url: 'settingCancelUpdateUserProfilePic',
    			dataType: 'json',
    			success: function(resp) {
    				console.log("test");
    				$("#user_profile_pic").children().remove();
    				
    				$("#user_profile_pic").append(
   						  ' <h6>프로필 사진</h6>                                                                                        '
   	                    + ' <div class="profileImgDiv">                                                                                 '
   						+ ' 	<img alt="" src="' + picture + '" class="profileImg">      '
   						+ ' </div>                                                                                                      '
   	                    + ' <div class="user_follow_btn">                                                                               '
   	                    + ' 	<a onclick="updateUserProfilePic()">변경</a>                                                            '
   	                    + ' </div>                                                                                                      '
    				);
    			},
    			error: function() {
    				alert("에러!");
    			}
    		});
    	}
    	
    	function updateUserName() {
    		$.ajax({
    			type: 'post',
    			url: 'settingUpdateUserName',
    			dataType: 'json',
    			success: function(resp) {
    				$("#user_name").children().remove();
    				
    				$("#user_name").append(
                     		  ' <h6>이름</h6>                                                                              '
                     		+ ' <input type="text" value="' + user_name + '" maxlength="10"  id="userName" style="margin-top: 10px">       '
                     		+ ' <div class="user_follow_btn">                                                              '
                     		+ ' 	<a id="updateUserNameSave">저장</a>                                                    '
                     		+ ' </div>                                                                                     '
                     		+ ' <div class=user_cancel_btn>                                                                '
                     		+ ' 	<a onclick="cancelUpdateUserName()">취소</a>                      '
                     		+ ' </div>      	                                                                           '
    				);
    				
    				$("#updateUserNameSave").on("click", function() {
    					if ($("#userName").val() == "") {
    						alert("1자 이상 입력 하세요.");
    						return;
    					}
    					
    					updateUserNamePro();
    				});
    			},
    			error: function() {
    				alert("에러!");
    			}
    		});
    	}
    	
    	function updateUserNamePro() {
    		if (!confirm("이름을 변경 하시겠습니까?")) {
    			return;
    		}
    		
    		$.ajax({
    			type: 'post',
    			url: 'settingUpdateUserProfilePro',
    			data: {
    				user_name: $('#userName').val()
    			},
    			dataType: 'json',
    			success: function(resp) {
    				if (!resp.isLogin) {
    					alert("로그인이 해제 되었습니다.\n다시 로그인 해주세요.");
    					location.href="login";
    					return;
    				}
    				
    				if (!resp.isUpdated) {
    					alert("이름 수정 실패!");
    					userProfile('topCateProfile');
    					return;
    				}
    				
    				alert("이름이 변경 되었습니다.");
    				
    				user_name = resp.user_name;
    				
    				$("#user_name").children().remove();
    				
    				$("#user_name").append(
   						  '<h6>이름</h6>                                                '
   	                    + '<p style="margin-top: 10px">' + user_name + '</p>                 '
   	                    + '<div class="user_follow_btn">                                '
   	                    + '    <a onclick="updateUserName()">변경</a>   '
   	                    + '</div>                                                       '
    				);
    			},
    			error: function() {
    				alert("유저 이름 수정 실패");
    			}
    		});
    	}
    	
    	function cancelUpdateUserName() {
    		$.ajax({
    			type: 'post',
    			url: 'settingCancelUpdateUserName',
    			dataType: 'json',
    			success: function(resp) {
    				$("#user_name").children().remove();
    				
    				$("#user_name").append(
   						  '<h6>이름</h6>                                                  '
   	                    + '<p style="margin-top: 10px">' + user_name + '</p>              '
   	                    + '<div class="user_follow_btn">                                  '
   	                    + '    <a onclick="updateUserName(\'' + user_name + '\')">변경</a>'
   	                    + '</div>                                                         '
    				);
    			},
    			error: function() {
    				alert("에러!");
    			}
    		});
    	}
    	
    	function updateUserIntroduction() {
    		$.ajax({
    			type: 'post',
    			url: 'settingUpdateUserIntro',
    			dataType: 'json',
    			success: function(resp) {
    				let tmp = "";
    				if (info != null) {
    					tmp = info.replaceAll("<br>", "\n");
    				}
    				
					$("#user_intro").children().remove();
					
    				$("#user_intro").append(
   						  ' <h6>소개</h6>                                                                                                                    '
                   		+ ' <textarea rows="10px" cols="70px" id="userInfo" placeholder="자기소개를 입력해주세요." maxlength="3000" style="margin-top: 10px">'
                   		+ 		tmp 
                   		+ '</textarea>                                                                                                                           '
                   		+ ' <div class="user_follow_btn">                                                                                                         '
                   		+ ' 	<a id="updateUserIntroductionSave">저장</a>                                                                                       '
                   		+ ' </div>                                                                                                                                '
                   		+ ' <div class=user_cancel_btn>                                                                                                           '
                   		+ ' 	<a onclick="cancelUpdateUserIntroduction()">취소</a>                                                              '
                   		+ ' </div>                                                                                                                                '
    				);

    				$("#updateUserIntroductionSave").on("click", function() {
    					if ($("#userInfo").val() == "") {
    						alert("1자 이상 입력하세요.");
    						return;
    					}
    					updateUserIntroductionPro();
    				});
    			},
    			error: function() {
    				alert("에러!");
    			}
    		});
    	}
    	
    	function updateUserIntroductionPro() {
    		if (!confirm("소개를 변경 하시겠습니까?")) {
    			return;
    		}
    		
    		$.ajax({
    			type: 'post',
    			url: 'settingUpdateUserProfilePro',
    			data: {
    				user_info: $('#userInfo').val()
    			},
    			dataType: 'json',
    			success: function(resp) {
    				if (!resp.isLogin) {
    					alert("로그인이 해제 되었습니다.\n다시 로그인 해주세요.");
    					location.href="login";
    					return;
    				}
    				
    				if (!resp.isUpdated) {
    					alert("소개 수정 실패!");
    					userProfile('topCateProfile');
    					return;
    				}
    				
    				alert("소개가 변경 되었습니다.");
    				
    				info = resp.user_info;
    				info_print = resp.user_info;
    				
					$("#user_intro").children().remove();
    				
    				$("#user_intro").append(
   						  ' <h6>소개</h6>                                                        '
   	                    + ' <p style="margin-top: 10px; width: 700px">' + info_print + '</p>           '
   	                    + ' <div class="user_follow_btn">                                        '
   	                    + ' 	<a onclick="updateUserIntroduction(\'' + info + '\')">변경</a>   '
   	                    + ' </div>                                                               '                                                     
    				);
    				
    			},
    			error: function() {
    				alert("에러! 유저 소개 업데이트 실패.");
    			}
    		});
    	}
    	
    	function cancelUpdateUserIntroduction() {
    		$.ajax({
    			type: 'post',
    			url: 'settingcCancelUpdateUserIntro',
    			dataType: 'json',
    			success: function(resp) {
					$("#user_intro").children().remove();
    				
    				$("#user_intro").append(
    						  ' <h6>소개</h6>                                                                   '
    	                    + ' <p style="margin-top: 10px; width: 700px">' + info_print + '</p>           '
    	                    + ' <div class="user_follow_btn">                                                   '
    	                    + ' 	<a onclick="updateUserIntroduction()">변경</a>                              '
    	                    + ' </div>                                                                          '
    				);

    			},
    			error: function() {
    				alert("에러!");
    			}
    		});
    	}
    	
    	let phone = "";
    	let phone_print = "";
    	let kakao_id = "연동 중입니다.";
    	let kakao_btn = "연동 해제";
    	let kakao_link = "onclick='disconnectKakao()'";
    	
    	function userAccount(id) {
    		$.ajax({
    			type: 'post',
    			url: 'settingUserAccount',
    			dataType: 'json',
    			success: function(resp) {
    				reset_screen(id);
    				
    				if (resp.kakao_id == null) {
    					kakao_id = "미연동 중입니다.";
    					kakao_btn = "연동"
   						kakao_link = 'href="https://kauth.kakao.com/oauth/authorize?response_type=code&client_id=436a131f08ff59d92a8725d7841cd063&redirect_uri=http://localhost:8081/soneson/kakao/callback"';
    				}
    				
    				phone = resp.user_phone;
    				phone_print = resp.user_phone;
    				if (phone == null || phone == "") {
    					phone_print = "등록된 연락처가 없습니다.";
    				}

					$("#user_content").append(
						  ' <div class="anime__details__review">                                           '
						+ '  	<div class="anime__review__item">                                          '
                        + '  		<div class="user__setting__text" id="user_password">                   '
	                    + '      		<h6>비밀번호</h6>                                                  '
	                    + '      		<div class="user_follow_btn">                                      '
	                    + '      			<a onclick="updateUserPassword()" style="bottom: 7px">변경</a> '
	                    + '      		</div>                                                             '
						+ '  		</div>                                                                 '
                    	+ '  	</div>                                                                     '
                	 	+ ' </div>                                                                         '
                	 	+ '                                                                                '
                	 	+ ' <div class="anime__details__review">                                           '
						+ '  	<div class="anime__review__item">                                          '
                        + '  		<div class="user__setting__text" id="user_phone">                      '
	                    + '      		<h6>연락처</h6>                                                    '
	                    + '      		<p style="margin-top: 10px">' + phone_print + '</p>          '
	                    + '      		<div class="user_follow_btn">                                      '
	                    + '      			<a onclick="updateUserPhone()">변경</a>                         '
	                    + '      		</div>                                                             '
						+ '  		</div>                                                                 '
                    	+ '  	</div>                                                                     '
                	 	+ ' </div>                                                                         '
                	 	+ '                                                                                '
                	 	+ ' <div class="anime__details__review">                                           '
						+ '  	<div class="anime__review__item">                                          '
                        + '  		<div class="user__setting__text" id="user_kakao">                      '
	                    + '      		<h6>카카오 계정 연동</h6>                                          '
	                    + '      		<p style="margin-top: 10px">' + kakao_id + '</p>                     '
	                    + '      		<div class="user_follow_btn">                                      '
	                    + '      			<a ' + kakao_link + '>' + kakao_btn + '</a>                    '
	                    + '      		</div>                                                             '
						+ '  		</div>                                                                 '
                    	+ '  	</div>                                                                     '
                	 	+ ' </div>                                                                         '
                	 	+ '                                                                                '
                	 	+ ' <div class="anime__details__review">                                           '
						+ '  	<div class="anime__review__item">                                          '
                        + '  		<div class="user__setting__text" id="user_leave">                      '
	                    + '      		<h6>회원탈퇴</h6>                                                  '
	                    + '      		<div class="user_follow_btn">                                      '
	                    + '      			<a onclick="updateUserLeave()" style="bottom: 7px">탈퇴</a>     '
	                    + '      		</div>                                                             '
						+ '  		</div>                                                                 '
                    	+ '  	</div>                                                                     '
                	 	+ ' </div>                                                                         '
					);
    			},
    			error: function() {
    				alert("에러!");
    			}
    		});
    	}
    	
    	function updateUserPassword() {
    		$.ajax({
    			type: 'post',
    			url: 'settingUpdateUserPassword',
    			dataType: 'json',
    			success: function(resp) {
    				$("#user_password").children().remove();

					$("#user_password").append(
                      	  ' <h6>현재 비밀번호</h6>                                                                '
                   		+ ' <input type="password" id="nowPass" placeholder="현재 비밀번호" style="margin-top: 10px">              '
                   		
                   		+ ' <h6 style="margin-top: 15px">변경할 비밀번호</h6>                                     '           
                   		
                   		+ ' <input type="password" id="changePass" placeholder="변경할 비밀번호" maxlength="16" style="margin-top: 10px">            '
                   		+ ' <span id = "checkPasswdResult"></span>'
                   		+ ' <br>                                                                                  '
                   		+ ' <input type="password" id="changePassCheck" placeholder="변경할 비밀번호 확인" maxlength="16" style="margin-top: 10px">       '
                   		+ ' <span id = "checkPasswdResult2"></span>'
                   		
                   		+ ' <div class="user_follow_btn">                                                         '
                   		+ ' 	<a onclick="checkValid()">저장</a>                                                              '
                   		+ ' </div>                                                                                '
                   		+ ' <div class=user_cancel_btn>                                                           '
                   		+ ' 	<a onclick="cancelUpdateUserPassword()">취소</a>                                      '
                   		+ ' </div>                                                                                '
					);
					
					$("#changePass").on("blur", function() {
						isPassSafe();
						isPassEqual();
					});
					
					$("#changePassCheck").on("blur", isPassEqual);
    			},
    			error: function() {
    				alert("에러!");
    			}
    		});
    	}
    	
    	function isPassSafe() {
    		let isSafe = false;
    		
    		let passwd = $("#changePass").val();
			
			let msg = "";
			let color = "";
			
			let lengthRegex = /^[A-Za-z0-9!@#$%]{8,16}$/;
			
			if(passwd == "") {
				msg = "비밀번호 입력 필수!";
				color = "red";
			} else if(!lengthRegex.exec(passwd)) {
				msg = "비밀번호 길이 8 ~ 16글자 필수!";
				color = "red";
			} else {
				let engUpperRegex = /[A-Z]/;
				let engLowerRegex = /[a-z]/;
				let numRegex = /[\d]/;
				let specRegex = /[!@#$%]/;
				
				let count = 0;
				
				if(engUpperRegex.exec(passwd)) {  // 대문자가 포함되어 있을 경우
					count++; 
				}
				if(engLowerRegex.exec(passwd)) {  // 소문자가 포함되어 있을 경우
					count++; 
				}
				if(numRegex.exec(passwd)) {  // 숫자가 포함되어 있을 경우
					count++; 
				}
				if(specRegex.exec(passwd)) {  // 특수문자가 포함되어 있을 경우
					count++; 
				}
				
				switch(count) {
					case 4 : 
						msg = "안전";
						color = "green";
						isSafe = true;
						break;
					case 3 : 
						msg = "보통";
						color = "blue";
						isSafe = true;
						break;
					case 2 : 
						msg = "위험";
						color = "orange";
						isSafe = true;
						break;
					case 1 :
					case 0 :
						msg = "사용 불가능한 패스워드!";
						color = "red";
				}
				
			}
			
			$("#checkPasswdResult").html(msg);
			$("#checkPasswdResult").css("color", color);
			
			return isSafe;
    	}
    	
    	function isPassEqual() {
    		let isEqual = false;
    		
    		let passwd = $("#changePass").val();
			let passwd2 = $("#changePassCheck").val();
			
			let msg = "";
			let color = "";
			
			if(passwd2 == "") {
				msg = "비밀번호 확인 입력 필수!";
				color = "red";
			} else if(passwd != passwd2) {
				msg = "비밀번호 불일치!";
				color = "red";
			} else {
				msg = "비밀번호 일치!";
				color = "green";
				isEqual = true;
			}
			
			$("#checkPasswdResult2").html(msg);
			$("#checkPasswdResult2").css("color", color);
			
			return isEqual;
    	}
    	
    	function checkValid() {
    		if (!confirm("비밀번호를 변경 하시겠습니까?")) {
    			return;
    		}
    		
    		let isEqual = isPassEqual();
    		let isSafe = isPassSafe();
    		
			if (!isEqual) {
				alert("비밀번호가 일치하지 않습니다.");
				return;
			}
			
			if (!isSafe) {
				alert("안전하지 않은 비밀번호입니다.");
				return;
			}
			
			$.ajax({
    			type: 'post',
    			url: 'isPassEqual',
    			dataType: 'json',
    			data: {
    				user_passwd: $("#nowPass").val()
    			},
    			success: function(resp) {
    				if (!resp.isLogin) {
       					alert("로그인이 해제 되었습니다.\n다시 로그인 해주세요.");
       					location.href="login";
       					return;
    				}
    				
    				if (!resp.isPassEqual) {
    					alert("현재 비밀번호 불일치!");
    					return;
    				}
    				
   					changePass();
    			},
    			error: function() {
    				alert("에러!");
    			}
    		});
    	}
    	
    	function changePass() {
    		$.ajax({
    			type: 'post',
    			url: 'settingUpdateUserPasswordPro',
    			dataType: 'json',
    			data: {
    				user_passwd: $("#changePass").val()
    			},
    			success: function(isSuccessChangePass) {
    				if (!isSuccessChangePass) {
    					alert("비밀번호 변경 실패.");
    					return;
    				}
   					alert("비밀번호가 변경 되었습니다.");
   					
   					$("#user_password").children().remove();
   					
   					$("#user_password").append(
						  ' <h6>비밀번호</h6>                                                 '
		                + ' <div class="user_follow_btn">                                     '
		                + ' <a onclick="updateUserPassword()" style="bottom: 7px">변경</a>    '
		                + ' </div>		                                                      '
   					);
    				
    			},
    			error: function() {
    				alert("에러!");
    			}
    		});
    	}
    	
    	function cancelUpdateUserPassword() {
    		$.ajax({
    			type: 'post',
    			url: 'settingCancelUpdateUserPassword',
    			dataType: 'json',
    			success: function(resp) {
    				$("#user_password").children().remove();

					$("#user_password").append(
						  ' <h6>비밀번호</h6>                                                  '
	                    + ' <div class="user_follow_btn">                                      '
	                    + ' 	<a onclick="updateUserPassword()" style="bottom: 7px">변경</a> '
	                    + ' </div>                                                             '
					);
    			},
    			error: function() {
    				alert("에러!");
    			}
    		});
    	}
    	
    	function updateUserPhone() {
    		$.ajax({
    			type: 'post',
    			url: 'settingUpdateUserPhone',
    			dataType: 'json',
    			success: function(resp) {
    				$("#user_phone").children().remove();

					$("#user_phone").append(
						  ' <h6>연락처</h6>                                                                     '
                   		+ ' <input type="text" id="userPhone" value="' + phone + '" placeholder="휴대폰 번호를 입력하세요." maxlength="11" style="margin-top: 10px">'    
                   		+ '                                                                                     '
                   		+ ' <div class="user_follow_btn">                                                       '
                   		+ ' 	<a onclick="updateUserPhonePro()">저장</a>                                                            '
                   		+ ' </div>                                                                              '
                   		+ ' <div class=user_cancel_btn>                                                         '
                   		+ ' 	<a onclick="cancelUpdateUserPhone()">취소</a>                                    '
                   		+ ' </div>                                                                              '
					);
    			},
    			error: function() {
    				alert("에러!");
    			}
    		});
    	}
    	
    	function updateUserPhonePro() {
    		if (!confirm("전화번호를 변경 하시겠습니까?")) {
    			return;
    		}
    		
    		$.ajax({
    			type: 'post',
    			url: 'settingUpdateUserPhonePro',
    			dataType: 'json',
    			data: {
    				user_phone: $("#userPhone").val()
    			},
    			success: function(resp) {
    				if (!resp.isLogin) {
       					alert("로그인이 해제 되었습니다.\n다시 로그인 해주세요.");
       					location.href="login";
       					return;
    				}
    				
    				if (!resp.isSuccess) {
    					alert("전화번호 변경 실패.");
    					return;
    				}
    				
    				alert("전화번호가 변경 되었습니다.");
    				
    				phone_print = resp.user_phone;
    				phone = resp.user_phone;
    				
    				$("#user_phone").children().remove();

					$("#user_phone").append(
						  ' <h6>연락처</h6>                                                    '
	                    + ' <p style="margin-top: 10px">' + phone_print + '</p>          '
	                    + ' <div class="user_follow_btn">                                      '
	                    + ' 	<a onclick="updateUserPhone()">변경</a>                         '
	                    + ' </div>                                                             '
					);
    			},
    			error: function() {
    				alert("에러!");
    			}
    		});
    	}
    	
    	function cancelUpdateUserPhone() {
    		$.ajax({
    			type: 'post',
    			url: 'settingCancelUpdateUserPhone',
    			dataType: 'json',
    			success: function(resp) {
    				$("#user_phone").children().remove();

					$("#user_phone").append(
						  ' <h6>연락처</h6>                                                    '
	                    + ' <p style="margin-top: 10px">' + phone_print + '</p>          '
	                    + ' <div class="user_follow_btn">                                      '
	                    + ' 	<a onclick="updateUserPhone()">변경</a>                        '
	                    + ' </div>                                                             '
					);
    			},
    			error: function() {
    				alert("에러!");
    			}
    		});
    	}
    	
    	function disconnectKakao() {
    		if (!confirm("카카오 연동을 해제 하시겠습니까?")) {
    			return;
    		}
    		
    		$.ajax({
    			type: 'post',
    			url: 'settingDisconnectKakao',
    			dataType: 'json',
    			success: function(resp) {
    				if (!resp.isLogin) {
    					alert("로그인이 해제 되었습니다.\n다시 로그인 해주세요.");
    					location.href="login";
    					return;
    				}
    				
    				if (!resp.isSuccess) {
    					alert("카카오 연동해제에 실패 하였습니다.");
    					return;
    				}
    				
    				alert("카카오 연동을 해제 하였습니다.");
    				
    				kakao_id = "미연동 중입니다.";
    				kakao_link = 'href="https://kauth.kakao.com/oauth/authorize?response_type=code&client_id=436a131f08ff59d92a8725d7841cd063&redirect_uri=http://localhost:8081/soneson/kakao/callback"';
    				kakao_btn = "연동";
    				
    				$("#user_kakao").children().remove();

					$("#user_kakao").append(
						   ' <h6>카카오 계정 연동</h6>                                          '
		                 + ' <p style="margin-top: 10px">' + kakao_id + '</p>                   '
		                 + ' <div class="user_follow_btn">                                      '
		                 + ' 	<a ' + kakao_link + '>' + kakao_btn + '</a>                     '
		                 + ' </div>                                                             '
					);
    			},
    			error: function() {
    				alert("에러!");
    			}
    		});
    	}
    	
    	function updateUserLeave() {
    		$.ajax({
    			type: 'post',
    			url: 'settingUpdateUserLeave',
    			dataType: 'json',
    			success: function(resp) {
    				$("#user_leave").children().remove();

					$("#user_leave").append(
                   		  ' <h6>회원탈퇴</h6>                                                                '
                		+ ' <input type="password" id="leavePass" placeholder="비밀번호를 입력하세요." maxlength="16" style="margin-top: 10px">'    
                		+ '                                                                                  '
                		+ ' <div class="user_follow_btn">                                                    '
                		+ ' 	<a onclick="checkPasswdEqual()">탈퇴</a>                                                         '
                		+ ' </div>                                                                           '
                		+ ' <div class=user_cancel_btn>                                                      '
                		+ ' 	<a onclick="cancelUpdateUserLeave()">취소</a>                                '
                		+ ' </div>                                                                           '
					);
    			},
    			error: function() {
    				alert("에러!");
    			}
    		});
    	}
    	
    	function checkPasswdEqual() {
    		if (!confirm("회원탈퇴를 하시겠습니까?")) {
    			return;
    		}
    		
    		$.ajax({
    			type: 'post',
    			url: 'isPassEqual',
    			dataType: 'json',
    			data: {
    				user_passwd: $("#leavePass").val()
    			},
    			success: function(resp) {
    				if (!resp.isLogin) {
    					alert("로그인이 해제 되었습니다.\n다시 로그인 해주세요.");
    					location.href="login";
    					return;
    				}
    				
    				if (!resp.isPassEqual) {
    					alert("현재 비밀번호 불일치!");
    					return;
    				}
    				
   					leaveUser();
    			},
    			error: function() {
    				alert("에러!");
    			}
    		});
    	}
    	
    	function leaveUser() {
    		$.ajax({
    			type: 'post',
    			url: 'settingLeaveUser',
    			dataType: 'json',
    			success: function(resp) {
    				if (!resp.isSuccess) {
    					alert("회원탈퇴 실패");
    					return;
    				}
    				
   					alert("회원탈퇴가 완료 되었습니다.");
   					location.href="main";
    			},
    			error: function() {
    				alert("에러!");
    			}
    		});
    	}
    	
    	function cancelUpdateUserLeave() {
    		$.ajax({
    			type: 'post',
    			url: 'settingCancelUpdateUserLeave',
    			dataType: 'json',
    			success: function(resp) {
    				$("#user_leave").children().remove();

					$("#user_leave").append(
						  ' <h6>회원탈퇴</h6>                                                  '
	                    + ' <div class="user_follow_btn">                                      '
	                    + ' 	<a onclick="updateUserLeave()" style="bottom: 7px">탈퇴</a>    '
	                    + ' </div>                                                             '
					);
    			},
    			error: function() {
    				alert("에러!");
    			}
    		});
    	}
    	
    	function userPayment(id) {
    		$.ajax({
    			type: 'post',
    			url: 'settingUserPayment',
    			dataType: 'json',
    			success: function(resp) {
    				reset_screen(id);

					$("#user_content").append(
						  ' <div class="anime__details__review">                                                   '
						+ '  	<div class="anime__review__item">                                                  '
                        + '  		<div class="user__setting__head">                                              '
	                    + '      		<h6>등록된 결제수단</h6>                                                   '
	                    + '      		<div class="user_follow_btn">                                              '
	                    + '      			<a onclick="" style="bottom: 7px">+ 추가</a>                           '
	                    + '      		</div>                                                                     '
						+ '  		</div>                                                                         '
                    	+ '  	</div>                                                                             '
                	 	+ ' </div>                                                                                 '
                	 	+ '                                                                                        '
                	 	+ ' <div class="anime__details__review">                                                   '
						+ '  	<div class="anime__review__item">                                                  '
                        + '  		<div class="user__setting__text">                                              '
	                    + '      		<h6>비씨카드</h6>                                                          '
	                    + '      		<div class="user_follow_btn">                                              '
	                    + '      			<a onclick="">삭제</a>                                                 '
	                    + '      			<p style="margin-top: 10px">************ 4776</p>                      '
	                    + '      		</div>                                                                     '
						+ '  		</div>                                                                         '
                    	+ '  	</div>                                                                             '
                	 	+ ' </div>                                                                                 '
					);
    			},
    			error: function() {
    				alert("에러!");
    			}
    		});
    	}
    	
    	function userAddress(id) {
    		$.ajax({
    			type: 'post',
    			url: 'settingUserAddress',
    			dataType: 'json',
    			success: function(resp) {
    				reset_screen(id);

					$("#user_content").append(
						  ' <div class="anime__details__review">                                                                    '
						+ '  	<div class="anime__review__item">                                                                   '
                        + '  		<div class="user__setting__head">                                                               '
	                    + '      		<h6>배송지</h6>                                                                             '
	                    + '      		<div class="user_follow_btn">                                                               '
	                    + '      			<a onclick="updateUserPassword()" style="bottom: 7px">+ 추가</a>                        '
	                    + '      		</div>                                                                                      '
						+ '  		</div>                                                                                          '
                    	+ '  	</div>                                                                                              '
                	 	+ ' </div>                                                                                                  '
                	 	+ '                                                                                                         '
                	 	+ ' <div class="anime__details__review">                                                                    '
						+ '  	<div class="anime__review__item">                                                                   '
                        + '  		<div class="user__setting__text">                                                               '
	                    + '      		<h6>홍길동</h6>                                                                             '
	                    + '      		<div class="user_follow_btn">                                                               '
	                    + '      			<a onclick="updateUserPassword()">삭제</a>                                              '
	                    + '      			<p>[46259] 부산 금정구 동천로 1 (회동동) 테스트123</p>         '
	                    + '      			<p>010-1111-2222</p>                                                                    '
	                    + '      		</div>                                                                                      '
						+ '  		</div>                                                                                          '
                    	+ '  	</div>                                                                                              '
                	 	+ ' </div>                                                                                                  '
					);
    			},
    			error: function() {
    				alert("에러!");
    			}
    		});
    	}

    	function reset_screen(id) {
    		$("#section-title h5").css("color", "black");
    		$("#user_content").children().remove();
    		$("#" + id + " h5").css("color", pointColor);
    	}
    
    	$(function() {
    		let urlParams = new URLSearchParams(window.location.search);
    		
    		if (urlParams.has('kakao')) {
    			userAccount('topUserAccount');
	    		history.replaceState({}, null, location.pathname);
    			return;
    		}
    		
    		userProfile('topCateProfile');
    	});
    	
    	function setImageFromFile(input) {
		    if (input.files && input.files[0]) {
    		    var reader = new FileReader();
    		    
    		    reader.onload = function (e) {
    		    	$('#profileImg').attr('src', e.target.result);
    		  	}
    		    
    		  	reader.readAsDataURL(input.files[0]);
		  	}
		}
    </script>
</head>

<body>
	<jsp:include page="../../inc/header.jsp"></jsp:include>

    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>
    
    <section class="blog-details spad">
        <div class="container">
		    <div class="blog__details__comment">
				<div class="blog__details__comment__item">
				    <div class="blog__details__comment__item__text">
				        <h3>설정</h3>
				    </div>
				</div>
			</div>
		</div>
	</section>

    <!-- Product Section Begin -->
    <section class="product-page spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-11">
                    <div class="product__page__content">
                        <div class="product__page__title">
                            <div class="row">
                                <div class="col-lg-12 col-md-8 col-sm-6">
                                    <div class="section-title" id="section-title">
                                        <div class="user_top_cate" id="topCateProfile">
											<h5 onclick="userProfile('topCateProfile')">프로필</h5>
										</div>
										<div class="user_top_cate" id="topUserAccount">
											<h5 onclick="userAccount('topUserAccount')">계정</h5>
										</div>
										<div class="user_top_cate" id="topUserPayment">
											<h5 onclick="userPayment('topUserPayment')">결제수단</h5>
										</div>
										<div class="user_top_cate" id="topUserAddress">	
											<h5 onclick="userAddress('topUserAddress')">배송지</h5>
										</div>
										<div class="user_top_cate" id="topUserAlarm">	
											<h5 onclick="userAlarm('topUserAlarm')">알림</h5>
										</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <hr>
                        
                        <div id="user_content">
                        	<!-- ajax -->
						</div>
						
					</div>
                </div>
			</div>
		</div>
	</section>
	<!-- Product Section End -->
	
	<jsp:include page="../../inc/footer.jsp"></jsp:include>

	<!-- Search model Begin -->
	<div class="search-model">
		<div class="h-100 d-flex align-items-center justify-content-center">
			<div class="search-close-switch"><i class="icon_close"></i></div>
			<form class="search-model-form">
				<input type="text" id="search-input" placeholder="Search here.....">
			</form>
		</div>
	</div>
	<!-- Search model end -->

	<!-- Js Plugins -->
	<script src="${pageContext.request.contextPath }/resources/soneson/js/jquery-3.3.1.min.js"></script>
	<script src="${pageContext.request.contextPath }/resources/soneson/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath }/resources/soneson/js/player.js"></script>
	<script src="${pageContext.request.contextPath }/resources/soneson/js/jquery.nice-select.min.js"></script>
	<script src="${pageContext.request.contextPath }/resources/soneson/js/mixitup.min.js"></script>
	<script src="${pageContext.request.contextPath }/resources/soneson/js/jquery.slicknav.js"></script>
	<script src="${pageContext.request.contextPath }/resources/soneson/js/owl.carousel.min.js"></script>
	<script src="${pageContext.request.contextPath }/resources/soneson/js/main.js"></script>

</body>

</html>