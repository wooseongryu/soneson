<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
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
    	let user_id = "";

		function userProfile(id) {
    		$.ajax({
    			type: 'post',
    			url: 'userProfile',
    			data: {
    				user_id : user_id
    			},
    			dataType: 'json',
    			success: function(user_info) {
    				reset_screen(id);
    				
    				if (user_info == null || user_info == "") {
   						user_info = "등록된 소개가 없습니다.";
    				}

					$("#user_content").append(
						'<div id="user_content">'
	                    +    '<section class="blog-details spad">'
						+		'<div class="container">'
	   					+			'<div class="blog__details__comment">'
						+				'<div class="blog__details__comment__item">'
						+		    		'<div class="blog__details__comment__item__text" id="profile_content">'
						+			    		'<p>' + user_info + '</p>'
						+		    		'</div>'
						+				'</div>'
						+			'</div>'
						+		'</div>'
						+	'</section>'
                        +'</div>'
					);
    			},
    			error: function() {
    				alert("에러!");
    			}
    		});
    	}

		function userProjectReview(id) {
    		$.ajax({
    			type: 'post',
    			url: 'userProfileProjectReview',
    			dataType: 'json',
    			success: function(resp) {
    				reset_screen(id);
					
					$("#user_content").append(
						'<div class="row">'
						+ 	'<div class="col-lg-4 col-md-4 col-sm-6" style="margin-bottom: 10px">'
						+ 	    '<div class="product__page__filter">'
						+ 	        '<select>'
						+ 				'<option value="">모든 프로젝트</option>'
						+ 				'<option value="">웹툰, 일러스트를 위한 [화려한 꽃 브러쉬Set]</option>'
						+ 				'<option value="">10-501</option>'
						+ 	        '</select>'
						+ 	    '</div>'
						+ 	'</div>'
						+ '</div>'
						
						+ '<div class="anime__details__review">'
						+ 	'<div class="anime__review__item">'
                        + 		'<div class="anime__review__item__text" id="project_review_content">'
	                    +     		'<h6>Chris Curry</h6>'
	        			+ 			'<p>whachikan Just noticed that someone categorized this as belonging to the genre demons" LOL</p>'
	        			+ 			'<div class="review_product_title">'
	        			+ 				'<p>웹툰, 일러스트를 위한 [화려한 꽃 브러쉬Set]</p>'
	        			+ 			'</div>'
	        			+ 			'<p>2022.05.25<p>'
						+ 		'</div>'
                    	+ 	'</div>'
                    	+ '</div>'
    				);		
    				
    			},
    			error: function() {
    				alert("에러!");
    			}
    		});
    	}
		
		function userUploadProject(id) {
			$.ajax({
    			type: 'post',
    			url: 'userUploadProject',
    			dataType: 'json',
    			success: function(resp) {
    				reset_screen(id);

					$("#user_content").append(
						'<section class="product-page spad">                                                                                                                                         '
						+ '	<div class="container">                                                                                                                                                  '
					    + '     <div class="row">                                                                                                                                                 '
						+ '			<div class="col-lg-12">                                                                                                                                          '
						+ '				<div class="product__page__content">                                                                                                                         '
                        + '					<div class="row">                                                                                                                                        '
					    + '                     <div class="col-lg-4 col-md-6 col-sm-6" style="">                                                                                                 '
					    + '                         <div class="product__item">                                                                                                                   '
					    + '								<a href="#">																																'
					    + '                                 <div class="product__item__pic set-bg" data-setbg="${pageContext.request.contextPath }/resources/soneson/img/popular/popular-1.jpg" 		 '
					    + '										style="background-image: url(\'${pageContext.request.contextPath }/resources/soneson/img/popular/popular-1.jpg\')"></div>			 '
					    + '								</a>																																		'
					    + '                             <div class="product__item__text">                                                                                                         '
					    + '                                 <ul>                                                                                                                                  '
					    + '                                     <li>디자인 문구</li>                                                                                                              '
					    + '                                 </ul>                                                                                                                                 '
					    + '                                 <h5 style="margin-bottom: 7px;">                                                                                                      '
					    + '                                 <a href="#">                                                                                                                         '
					    + '                                 	2023년을 기록하는 100가지 질문 연말정산 9주년                                                                                    '
					    + '                                 </a>                                                                                                                                 '
					    + '                                 </h5>                                                                                                                                 '
					    + '                                 <h6>벌써 9년째- 우리의 소중한 한 해를 기록하는 시간, 연말정산이 돌아왔습니다.</h6>                                                    '
					    + '                                 <ul style="margin-top: 15px">                                                                                                         '
					    + '                                     <li>3500%</li>                                                                                                                    '
					    + '                                     <li>1,000,000원</li>                                                                                                              '
					    + '                                     <li style="float: right">10일 남음</li>                                                                                           '
					    + '                                 </ul>                                                                                                                                 '
					    + '                               </div>                                                                                                                                    '
					    + '                            </div>                                                                                                                                        '
					    + '                        </div>                                                                                                                                            '
					    + '                    </div>                                                                                                                                                '
					    + '                </div>                                                                                                                                                    '
					    + '            </div>                                                                                                                                                        '
						+ '		   </div>                                                                                                                                                               '
					    + '    </div>                                                                                                                                                                '
						+ '</section>                                                                                                                                                                '
					);                                                                                                                                                                             
    			},
    			error: function() {
    				alert("에러!");
    			}
    		});
		}
		
		function userFollower(id) {
			let btnString = '';
			
			
			$.ajax({
    			type: 'post',
    			url: 'userFollower',
    			data: {
    				user_id : user_id
    			},
    			dataType: 'json',
    			success: function(resp) {
    				reset_screen(id);
    				
    				btnString = '<a onclick="insertFollow(\'' + resp.uId + '\')">+ 팔로우</a>';
    				
					if (isFollowing(resp.uId)) {
						btnString = '<a onclick="removeFollow(\'' + resp.uId + '\')">팔로잉</a>';
					}
    				
					$("#user_content").append(
						  '<div class="anime__details__review">'
						+ ' 	<div class="anime__review__item">'
                        + ' 		<div class="anime__review__item__text" id="project_review_content">'
	                    + '     		<h6>' + resp.user_name + '</h6>'
	                    + '     		<p>' + resp.user_info + '</p>'
	                    + '     		<p style="margin-top: 10px">팔로워 ' + resp.count + ' · 후원한 프로젝트 11</p>'
	                    + '     		<div class="user_follow_btn">'
	                    + btnString
	                    + '     		</div>'
						+ ' 		</div>'
                    	+ ' 	</div>'
                	 	+ '</div>'
					);                                                                                                                                                                             
    			},
    			error: function() {
    				alert("에러!123");
    			}
    		});
		}
		
		// TODO
		function insertFollow(uId) {
			$.ajax({
    			type: 'post',
    			url: 'insertFollow',
    			data: {
    				user_id : uId
    			},
    			dataType: 'json',
    			success: function(resp) {
    				console.log(resp);
    			},
    			error: function(error) {
    				alert("팔로우 에러!");
    			}
    		});
		}
		
		// TODO
		function removeFollow(uId) {
			$.ajax({
    			type: 'post',
    			url: 'removeFollow',
    			data: {
    				user_id : uId
    			},
    			dataType: 'json',
    			success: function(resp) {
    				console.log(resp);
    			},
    			error: function(error) {
    				alert("팔로우 해제 에러!");
    			}
    		});
		}
		
		function isFollowing(id) {
			let isFollowing = false;
			
			$.ajax({
    			type: 'post',
    			url: 'isFollowing',
    			async: false,
    			data: {
    				user_id : id
    			},
    			dataType: 'json',
    			success: function(resp) {
    				isFollowing = resp.isFollowing;
    			},
    			error: function() {
    				alert("에러!");
    			}
    		});
			
			return isFollowing;
		}
    	
    	function reset_screen(id) {
    		$("#section-title h5").css("color", "black");
    		$("#user_content").children().remove();
    		$("#" + id + " h5").css("color", pointColor);
    	}
    
    	$(function() {
    		user_id = "${param.id}";
    		userProfile('topCateProfile');
    	});
    	
    	function deleteFollow(user_id) {
    		if(confirm("팔로우를 해제 하시겠습니까?")) {
    			location.href="deleteFollow?follow_id=" + user_id;
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
				    	
				    	<!-- TODO -->
				    	<div>
					    	<div class="profileImgDiv">                                                                             
					    		<c:choose>
					    			<c:when test="${empty user.user_picture}">
		   								<img alt="" src="${pageContext.request.contextPath }/resources/user/profile.png" class="profileImg">  
					    			</c:when>
					    			<c:otherwise>
			   							<img alt="" src="${pageContext.request.contextPath }/resources/upload/${user.user_picture}" class="profileImg">  
					    			</c:otherwise>
					    		</c:choose>
	   						</div>
   						</div>
				    
				        <h5>
				        	${user.user_name } / ${user.user_id }&nbsp;&nbsp;
				        	<c:if test="${not empty user.isOwn }">
					        	<i class="fa fa-cog" onclick="location.href='userSetting'" style="cursor: pointer;"></i>
				        	</c:if>
				        </h5>
				        <p>${user.hire_year }년전 가입</p>
				        <c:if test="${empty user.isOwn }">
				        	<c:choose>
				        		<c:when test="${user.followCnt eq 0 }">
						        	<a href="follow?follow_id=${user.user_id }">+ 팔로우</a>
				        		</c:when>
				        		<c:otherwise>
						        	<a onclick="deleteFollow('${user.user_id }')">팔로잉</a>
				        		</c:otherwise>
				        	</c:choose>
					        <a href="chatting" onclick="window.open(this.href, '_blank', 'width=400, height=800'); return false;">창작자 문의</a>
				        </c:if>
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
										<div class="user_top_cate" id="topProjectReview">
											<h5 onclick="userProjectReview('topProjectReview')">프로젝트후기 11</h5>
										</div>
										<div class="user_top_cate" id="topUploadProject">
											<h5 onclick="userUploadProject('topUploadProject')">올린프로젝트 5</h5>
										</div>
										<div class="user_top_cate">	
											<h5>후원한프로젝트 50</h5>
										</div>
										<div class="user_top_cate" id="topFollower">	
											<h5 onclick="userFollower('topFollower')">팔로워 120</h5>
										</div>
										<div class="user_top_cate">
											<h5>팔로잉 100</h5>
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