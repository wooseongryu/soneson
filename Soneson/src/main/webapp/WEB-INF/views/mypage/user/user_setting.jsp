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
    	
    	function userProfile(id) {
    		$.ajax({
    			type: 'post',
    			url: 'settingUserProfile',
    			dataType: 'json',
    			success: function(resp) {
    				reset_screen(id);
    				
    				console.log(resp);
    				
					let info = resp.user_info;
    				if (info == "" || info == null) {
    					info = "등록된 소개가 없습니다.";
    				}

					$("#user_content").append(
						  ' <div class="anime__details__review">                                                                                    '
						+ '  	<div class="anime__review__item">                                                                                   '
                        + '  		<div class="user__setting__text" id="user_profile_pic">                                                                '
	                    + '      		<h6>프로필 사진</h6>                                                                                        '
	                    + '      		<div class="profileImgDiv">                                                                                 '
						+ ' 				<img alt="" src="${pageContext.request.contextPath }/resources/user/alarm.jpg" class="profileImg">      '
						+ ' 			</div>                                                                                                      '
	                    + '      		<div class="user_follow_btn">                                                                               '
	                    + '      			<a onclick="updateUserProfilePic()">변경</a>                                                                  '
	                    + '      		</div>                                                                                                      '
						+ '  		</div>                                                                                                          '
                    	+ '  	</div>                                                                                                              '
                	 	+ ' </div>                                                                                                                  '
							
						+  ' <div class="anime__details__review">                                     '
						+ '  	<div class="anime__review__item">                                    '
                        + '  		<div class="user__setting__text" id="user_name">                 '
	                    + '      		<h6>이름</h6>                                                '
	                    + '      		<p style="margin-top: 10px">' + resp.user_name + '</p>                       '
	                    + '      		<div class="user_follow_btn">                                '
	                    + '      			<a onclick="updateUserName(\'' + resp.user_name + '\')">변경</a>     '
	                    + '      		</div>                                                       '
						+ '  		</div>                                                           '
                    	+ '  	</div>                                                               '
                	 	+ ' </div>                                                                   '

                	 	+ ' <div class="anime__details__review">                                                        '
						+ '  	<div class="anime__review__item">                                                       '
	                    + '  		<div class="user__setting__text" id="user_intro">                                   '
	                    + '      		<h6>소개</h6>                                                                   '
	                    + '      		<p style="margin-top: 10px; width: 700px">' + info + '</p>           '
	                    + '      		<div class="user_follow_btn">                                                   '
	                    + '      			<a onclick="updateUserIntroduction(\'' + info + '\')">변경</a>                '
// 	                    + '      			<a onclick="updateUserIntroduction()">변경</a>                              '
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
    			type: 'post',
    			url: 'settingUpdateUserProfilePic',
    			dataType: 'json',
    			success: function(resp) {
    				$("#user_profile_pic").children().remove();
    				
    				$("#user_profile_pic").append(
   						  ' <h6>프로필 사진</h6>                                                                                                          '
	                    + '                                                                                                                               '
						+ ' <div class="profileImgDiv">                                                                                                   '
						+ ' 	<img alt="" src="${pageContext.request.contextPath }/resources/user/alarm.jpg" id="profileImg" class="profileImg">        '
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
   						+ ' 	<img alt="" src="${pageContext.request.contextPath }/resources/user/alarm.jpg" class="profileImg">      '
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
    	
    	function updateUserName(user_name) {
    		$.ajax({
    			type: 'post',
    			url: 'settingUpdateUserName',
    			dataType: 'json',
    			success: function(resp) {
    				$("#user_name").children().remove();
    				
    				$("#user_name").append(
                     		  ' <h6>이름</h6>                                                     '
                     		+ ' <input type="text" value="' + user_name + '" id="userName" style="margin-top: 10px">       '
                     		+ '                                                                   '
                     		+ ' <div class="user_follow_btn">                                     '
                     		+ ' 	<a id="updateUserNameSave">저장</a>                                          '
                     		+ ' </div>                                                            '
                     		+ ' <div class=user_cancel_btn>                                       '
                     		+ ' 	<a onclick="cancelUpdateUserName(\'' + user_name + '\')">취소</a>                  '
                     		+ ' </div>      	                                                      '
    				);
    				
    				$("#updateUserNameSave").on("click", updateUserNamePro);
    			},
    			error: function() {
    				alert("에러!");
    			}
    		});
    	}
    	
    	function updateUserNamePro() {
    		$.ajax({
    			type: 'post',
    			url: 'settingUpdateUserProfilePro',
    			data: {
    				user_name: $('#userName').val()
    			},
    			dataType: 'json',
    			success: function(resp) {
    				if (resp.isUpdated == "false") {
    					alert("이름 수정 실패!");
    					userProfile('topCateProfile');
    					return;
    				}
    				
    				let name = resp.user_name;
    				
    				$("#user_name").children().remove();
    				
    				$("#user_name").append(
   						  '<h6>이름</h6>                                                '
   	                    + '<p style="margin-top: 10px">' + name + '</p>                 '
   	                    + '<div class="user_follow_btn">                                '
   	                    + '    <a onclick="updateUserName(\'' + name + '\')">변경</a>   '
   	                    + '</div>                                                       '
    				);
    			},
    			error: function() {
    				alert("유저 이름 수정 실패");
    			}
    		});
    	}
    	
    	function cancelUpdateUserName(user_name) {
    		$.ajax({
    			type: 'post',
    			url: 'settingCancelUpdateUserName',
    			dataType: 'json',
    			success: function(resp) {
    				$("#user_name").children().remove();
    				
    				$("#user_name").append(
   						  '<h6>이름</h6>                                                '
   	                    + '<p style="margin-top: 10px">' + user_name + '</p>                       '
   	                    + '<div class="user_follow_btn">                                '
   	                    + '    <a onclick="updateUserName(\'' + user_name + '\')">변경</a>                   '
   	                    + '</div>                                                       '
    				);
    			},
    			error: function() {
    				alert("에러!");
    			}
    		});
    	}
    	
    	function updateUserIntroduction(info) {
    		$.ajax({
    			type: 'post',
    			url: 'settingUpdateUserIntro',
    			dataType: 'json',
    			success: function(resp) {
					$("#user_intro").children().remove();
					
    				$("#user_intro").append(
   						  ' <h6>소개</h6>                                                                                                                    '
                   		+ ' <textarea rows="10px" cols="70px" id="userInfo" placeholder="자기소개를 입력해주세요." maxlength="3000" style="margin-top: 10px">'
                   		+ 		info.replaceAll("<br>", "\n") 
                   		+ '</textarea>                                                                                                                           '
                   		+ ' <div class="user_follow_btn">                                                                                                         '
                   		+ ' 	<a id="updateUserIntroductionSave">저장</a>                                                                                       '
                   		+ ' </div>                                                                                                                                '
                   		+ ' <div class=user_cancel_btn>                                                                                                           '
                   		+ ' 	<a onclick="cancelUpdateUserIntroduction(\'' + info + '\')">취소</a>                                                              '
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
    		$.ajax({
    			type: 'post',
    			url: 'settingUpdateUserProfilePro',
    			data: {
    				user_info: $('#userInfo').val()
    			},
    			dataType: 'json',
    			success: function(resp) {
    				console.log(resp);
    				
    				if (resp.isUpdated == "false") {
    					alert("소개 수정 실패!");
    					userProfile('topCateProfile');
    					return;
    				}
    				
    				let info = resp.user_info;
    				
					$("#user_intro").children().remove();
    				
    				$("#user_intro").append(
   						  ' <h6>소개</h6>                                                        '
   	                    + ' <p style="margin-top: 10px; width: 700px">' + info + '</p>           '
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
    	
    	function cancelUpdateUserIntroduction(info) {
    		$.ajax({
    			type: 'post',
    			url: 'settingcCancelUpdateUserIntro',
    			dataType: 'json',
    			success: function(resp) {
					$("#user_intro").children().remove();
    				
    				$("#user_intro").append(
    						  ' <h6>소개</h6>                                                                   '
    	                    + ' <p style="margin-top: 10px; width: 700px">' + info + '</p>           '
    	                    + ' <div class="user_follow_btn">                                                   '
    	                    + ' 	<a onclick="updateUserIntroduction(\'' + info + '\')">변경</a>                              '
    	                    + ' </div>                                                                          '
    				);

    			},
    			error: function() {
    				alert("에러!");
    			}
    		});
    	}
    	
    	function userAccount(id) {
    		$.ajax({
    			type: 'post',
    			url: 'settingUserAccount',
    			dataType: 'json',
    			success: function(resp) {
    				reset_screen(id);

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
	                    + '      		<p style="margin-top: 10px">등록된 연락처가 없습니다.</p>          '
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
	                    + '      		<p style="margin-top: 10px">연동 중입니다.</p>                     '
	                    + '      		<div class="user_follow_btn">                                      '
	                    + '      			<a onclick="updateUserName()">연동 해제</a>                    '
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
                   		+ ' <input type="text" placeholder="현재 비밀번호" style="margin-top: 10px">              '
                   		+ '                                                                                       '
                   		+ ' <h6 style="margin-top: 15px">변경할 비밀번호</h6>                                     '           
                   		+ ' <input type="text" placeholder="변경할 비밀번호" style="margin-top: 10px">            '
                   		+ ' <br>                                                                                  '
                   		+ ' <input type="text" placeholder="변경할 비밀번호 확인" style="margin-top: 10px">       '
                   		+ '                                                                                       '
                   		+ ' <div class="user_follow_btn">                                                         '
                   		+ ' 	<a href="#">저장</a>                                                              '
                   		+ ' </div>                                                                                '
                   		+ ' <div class=user_cancel_btn>                                                           '
                   		+ ' 	<a onclick="cancelUpdateUserPassword()">취소</a>                                      '
                   		+ ' </div>                                                                                '
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
                   		+ ' <input type="text" placeholder="휴대폰 번호를 입력하세요." style="margin-top: 10px">'    
                   		+ '                                                                                     '
                   		+ ' <div class="user_follow_btn">                                                       '
                   		+ ' 	<a href="#">저장</a>                                                            '
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
    	
    	function cancelUpdateUserPhone() {
    		$.ajax({
    			type: 'post',
    			url: 'settingCancelUpdateUserPhone',
    			dataType: 'json',
    			success: function(resp) {
    				$("#user_phone").children().remove();

					$("#user_phone").append(
						  ' <h6>연락처</h6>                                                    '
	                    + ' <p style="margin-top: 10px">등록된 연락처가 없습니다.</p>          '
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
    	
    	function updateUserLeave() {
    		$.ajax({
    			type: 'post',
    			url: 'settingUpdateUserLeave',
    			dataType: 'json',
    			success: function(resp) {
    				$("#user_leave").children().remove();

					$("#user_leave").append(
                   		  ' <h6>회원탈퇴</h6>                                                                '
                		+ ' <input type="text" placeholder="비밀번호를 입력하세요." style="margin-top: 10px">'    
                		+ '                                                                                  '
                		+ ' <div class="user_follow_btn">                                                    '
                		+ ' 	<a href="#">탈퇴</a>                                                         '
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
    		userProfile('topCateProfile');
    		
    		$('input[name="profile_path"]').change(function(){
    		    setImageFromFile(this);
    		});
    		
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