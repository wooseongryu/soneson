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

					$("#user_content").append(
						  ' <div class="anime__details__review">                                     '
						+ '  	<div class="anime__review__item">                                    '
                        + '  		<div class="user__setting__text" id="user_name">                 '
	                    + '      		<h6>이름</h6>                                                '
	                    + '      		<p style="margin-top: 10px">홍길동</p>                       '
	                    + '      		<div class="user_follow_btn">                                '
// 	                    + '      			<a onclick="updateUserName(\'' + id + '\')">변경</a>     '
	                    + '      			<a onclick="updateUserName()">변경</a>                   '
	                    + '      		</div>                                                       '
						+ '  		</div>                                                           '
                    	+ '  	</div>                                                               '
                	 	+ ' </div>                                                                   '

                	 	+ ' <div class="anime__details__review">                                                        '
						+ '  	<div class="anime__review__item">                                                       '
	                    + '  		<div class="user__setting__text" id="user_intro">                                   '
	                    + '      		<h6>소개</h6>                                                                   '
	                    + '      		<p style="margin-top: 10px; width: 700px">등록된 소개가 없습니다.</p>           '
	                    + '      		<div class="user_follow_btn">                                                   '
// 	                    + '      			<a onclick="updateUserIntroduction(\'' + id + '\')">변경</a>                '
	                    + '      			<a onclick="updateUserIntroduction()">변경</a>                              '
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
    	
    	function updateUserName() {
    		$.ajax({
    			type: 'post',
    			url: 'settingUpdateUserName',
    			dataType: 'json',
    			success: function(resp) {
    				$("#user_name").children().remove();
    				
    				$("#user_name").append(
                     		  ' <h6>이름</h6>                                                     '
                     		+ ' <input type="text" value="홍길동" style="margin-top: 10px">       '
                     		+ '                                                                   '
                     		+ ' <div class="user_follow_btn">                                     '
                     		+ ' 	<a href="#">저장</a>                                          '
                     		+ ' </div>                                                            '
                     		+ ' <div class=user_cancel_btn>                                       '
                     		+ ' 	<a onclick="cancelUpdateUserName()">취소</a>                  '
                     		+ ' </div>                                                            '
    				);
    			},
    			error: function() {
    				alert("에러!");
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
   						  '<h6>이름</h6>                                                '
   	                    + '<p style="margin-top: 10px">홍길동</p>                       '
   	                    + '<div class="user_follow_btn">                                '
   	                    + '    <a onclick="updateUserName()">변경</a>                   '
   	                    + '</div>                                                       '
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
					$("#user_intro").children().remove();
    				
    				$("#user_intro").append(
   						  ' <h6>소개</h6>                                                                                                '
                   		+ ' <textarea rows="10px" cols="70px" placeholder="자기소개를 입력해주세요." style="margin-top: 10px"></textarea>'
                   		+ ' <div class="user_follow_btn">                                                                                '
                   		+ ' 	<a href="#">저장</a>                                                                                     '
                   		+ ' </div>                                                                                                       '
                   		+ ' <div class=user_cancel_btn>                                                                                  '
                   		+ ' 	<a onclick="cancelUpdateUserIntroduction()">취소</a>                                                     '
                   		+ ' </div>                                                                                                       '
    				);

    			},
    			error: function() {
    				alert("에러!");
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
    	                    + ' <p style="margin-top: 10px; width: 700px">등록된 소개가 없습니다.</p>           '
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
	                    + '      			<a onclick="updateUserName()">변경</a>                         '
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
	                    + '      			<a onclick="updateUserName()" style="bottom: 7px">탈퇴</a>     '
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
                   		+ ' 	<a onclick="cancelupdateUserPassword()">취소</a>                                      '
                   		+ ' </div>                                                                                '
					);
    			},
    			error: function() {
    				alert("에러!");
    			}
    		});
    	}
    	
    	function cancelupdateUserPassword() {
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

    	function reset_screen(id) {
    		$("#section-title h5").css("color", "black");
    		$("#user_content").children().remove();
    		$("#" + id + " h5").css("color", pointColor);
    	}
    
    	$(function() {
    		userProfile('topCateProfile');
    	});
    </script>
</head>

<body>

<%-- 	<jsp:include page="../../inc/header.jsp"></jsp:include> --%>

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
                        	
	                        <div class="anime__details__review">                       
							 	<div class="anime__review__item">                      
	                         		<div class="user__setting__text" id="user_name">   
		                         		<h6>비밀번호</h6>                                  
		                         		<div class="user_follow_btn">                  
		                         			<a onclick="updateUserName()" style="bottom: 7px">변경</a>     
		                         		</div>                                         
							 		</div>                                             
	                    	 	</div>                                                 
	                	 	</div>
	                	 	                                                    
	                	 	
	                	 	<div class="anime__details__review">                       
							 	<div class="anime__review__item">                      
	                         		<div class="user__setting__text" id="user_name">   
		                         		<h6>현재 비밀번호</h6>                                                
			                     		<input type="text" placeholder="현재 비밀번호" style="margin-top: 10px">
			                     		
			                     		<h6 style="margin-top: 15px">변경할 비밀번호</h6>                                                
			                     		<input type="text" placeholder="변경할 비밀번호" style="margin-top: 10px">
			                     		<br>
			                     		<input type="text" placeholder="변경할 비밀번호 확인" style="margin-top: 10px">
			                     		                                                           
			                     		<div class="user_follow_btn">                              
			                     			<a href="#">저장</a>                                   
			                     		</div>                                                     
			                     		<div class=user_cancel_btn>                                
			                     			<a onclick="cancelUpdateUserName()">취소</a>           
			                     		</div>                                          
							 		</div>                                             
	                    	 	</div>                                                 
	                	 	</div>
	                	 	
	                		<div class="anime__details__review">                           
							  	<div class="anime__review__item">                               
	                          		<div class="user__setting__text" id="user_phone">           
		                          		<h6>연락처</h6>                                         
		                          		<p style="margin-top: 10px">등록된 연락처가 없습니다.</p>
		                          		<div class="user_follow_btn">                           
		                          			<a onclick="updateUserName()">변경</a>              
		                          		</div>                                                  
							  		</div>                                                      
	                    	  	</div>                                                          
	                	 	 </div>  
	                	 	
	                	 	<div class="anime__details__review">                       
							 	<div class="anime__review__item">                      
	                         		<div class="user__setting__text" id="user_name">   
		                         		<h6>카카오 계정 연동</h6>                                  
		                         		<p style="margin-top: 10px">연동 중입니다.</p>         
		                         		<div class="user_follow_btn">                  
		                         			<a onclick="updateUserName()">연동 해제</a>     
		                         		</div>                                         
							 		</div>                                             
	                    	 	</div>                                                 
	                	 	</div>
	                	 	
	                	 	<div class="anime__details__review">                       
							 	<div class="anime__review__item">                      
	                         		<div class="user__setting__text" id="user_name">   
		                         		<h6>회원탈퇴</h6>                                  
		                         		<div class="user_follow_btn">                  
		                         			<a onclick="updateUserName()" style="bottom: 7px">탈퇴</a>     
		                         		</div>                                         
							 		</div>                                             
	                    	 	</div>                                                 
	                	 	</div>
	                	 	
						</div>
						
					</div>
                </div>
			</div>
		</div>
	</section>
	<!-- Product Section End -->
	
<%-- 	<jsp:include page="../../inc/footer.jsp"></jsp:include> --%>

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