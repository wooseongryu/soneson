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
    <title>Anime | Template</title>

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
    	let pointColor = "rgb(248, 100, 83)";

		function userProfile() {
    		$.ajax({
    			type: 'post',
    			url: 'userProfile',
    			dataType: 'json',
    			success: function(resp) {
    				reset_screen();
    				$("#topCateProfile h4").css("color", pointColor);

					$("#user_content").append(
						'<div id="user_content">'
	                    +    '<section class="blog-details spad">'
						+		'<div class="container">'
	   					+			'<div class="blog__details__comment">'
						+				'<div class="blog__details__comment__item">'
						+		    		'<div class="blog__details__comment__item__text" id="profile_content">'
						+			    		'<p>표지 일러스트, 삽화 작업을 주로 하는 또롱입니다. 모든 분들께 예쁘고 행복한 그림을 그려드리는 게 꿈입니다.</p>'
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

		function userProjectReview() {
    		$.ajax({
    			type: 'post',
    			url: 'userProfileProjectReview',
    			dataType: 'json',
    			success: function(resp) {
    				reset_screen();
    				$("#topProjectReview h4").css("color", pointColor);
					
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
    	
    	function reset_screen() {
    		$("#section-title h4").css("color", "black");
    		$("#user_content").children().remove();
    	}
    
    	$(function() {
//     		userProfile();
    	});
    </script>
</head>

<body>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>
    
    <section class="blog-details spad">
        <div class="container">
		    <div class="blog__details__comment">
				<div class="blog__details__comment__item">
				    <div class="blog__details__comment__item__text">
				        <h5>또롱/Ttorong</h5>
				        <p>3년전 가입</p>
				        <a href="#">+ 팔로우</a>
				        <a href="chatting" onclick="window.open(this.href, '_blank', 'width=400, height=800'); return false;">창작자 문의</a>
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
											<h4 onclick="userProfile()">프로필</h4>
										</div>
										<div class="user_top_cate" id="topProjectReview">
											<h4 onclick="userProjectReview()">프로젝트후기</h4>
										</div>
										<div class="user_top_cate">
											<h4>올린프로젝트</h4>
										</div>
										<div class="user_top_cate">	
											<h4>팔로워</h4>
										</div>
										<div class="user_top_cate">
											<h4>팔로잉</h4>
										</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <hr>
                        
                        <div id="user_content">
                        	<!-- ajax -->
                        	<section class="product-page spad">
								<div class="container">
						            <div class="row">
										<div class="col-lg-12">
											<div class="product__page__content">
	                        					<div class="row">
						                            <div class="col-lg-4 col-md-6 col-sm-6">
						                                <div class="product__item">
						                                    <div class="product__item__pic set-bg" data-setbg="${pageContext.request.contextPath }/resources/soneson/img/popular/popular-1.jpg">
						                                        <div class="ep">18 / 18</div>
						                                        <div class="comment"><i class="fa fa-comments"></i> 11</div>
						                                        <div class="view"><i class="fa fa-eye"></i> 9141</div>
						                                    </div>
						                                    <div class="product__item__text">
						                                        <ul>
						                                            <li>Active</li>
						                                            <li>Movie</li>
						                                        </ul>
						                                        <h5><a href="#">Sen to Chihiro no Kamikakushi</a></h5>
						                                    </div>
						                                </div>
						                            </div>
						                            <div class="col-lg-4 col-md-6 col-sm-6">
						                                <div class="product__item">
						                                    <div class="product__item__pic set-bg" data-setbg="${pageContext.request.contextPath }/resources/soneson/img/popular/popular-1.jpg">
						                                        <div class="ep">18 / 18</div>
						                                        <div class="comment"><i class="fa fa-comments"></i> 11</div>
						                                        <div class="view"><i class="fa fa-eye"></i> 9141</div>
						                                    </div>
						                                    <div class="product__item__text">
						                                        <ul>
						                                            <li>Active</li>
						                                            <li>Movie</li>
						                                        </ul>
						                                        <h5><a href="#">Sen to Chihiro no Kamikakushi</a></h5>
						                                    </div>
						                                </div>
						                            </div>
						                            <div class="col-lg-4 col-md-6 col-sm-6">
						                                <div class="product__item">
						                                    <div class="product__item__pic set-bg" data-setbg="${pageContext.request.contextPath }/resources/soneson/img/popular/popular-1.jpg">
						                                        <div class="ep">18 / 18</div>
						                                        <div class="comment"><i class="fa fa-comments"></i> 11</div>
						                                        <div class="view"><i class="fa fa-eye"></i> 9141</div>
						                                    </div>
						                                    <div class="product__item__text">
						                                        <ul>
						                                            <li>Active</li>
						                                            <li>Movie</li>
						                                        </ul>
						                                        <h5><a href="#">Sen to Chihiro no Kamikakushi</a></h5>
						                                    </div>
						                                </div>
						                            </div>
						                            <div class="col-lg-4 col-md-6 col-sm-6">
						                                <div class="product__item">
						                                    <div class="product__item__pic set-bg" data-setbg="${pageContext.request.contextPath }/resources/soneson/img/popular/popular-1.jpg">
						                                        <div class="ep">18 / 18</div>
						                                        <div class="comment"><i class="fa fa-comments"></i> 11</div>
						                                        <div class="view"><i class="fa fa-eye"></i> 9141</div>
						                                    </div>
						                                    <div class="product__item__text">
						                                        <ul>
						                                            <li>Active</li>
						                                            <li>Movie</li>
						                                        </ul>
						                                        <h5><a href="#">Sen to Chihiro no Kamikakushi</a></h5>
						                                    </div>
						                                </div>
						                            </div>
						                            <div class="col-lg-4 col-md-6 col-sm-6">
						                                <div class="product__item">
						                                    <div class="product__item__pic set-bg" data-setbg="${pageContext.request.contextPath }/resources/soneson/img/popular/popular-1.jpg">
						                                        <div class="ep">18 / 18</div>
						                                        <div class="comment"><i class="fa fa-comments"></i> 11</div>
						                                        <div class="view"><i class="fa fa-eye"></i> 9141</div>
						                                    </div>
						                                    <div class="product__item__text">
						                                        <ul>
						                                            <li>Active</li>
						                                            <li>Movie</li>
						                                        </ul>
						                                        <h5><a href="#">Sen to Chihiro no Kamikakushi</a></h5>
						                                    </div>
						                                </div>
						                            </div>
						                        </div>
						                    </div>
						                </div>
									</div>
						        </div>
							</section>
						</div>
					</div>
                </div>
			</div>
		</div>
	</section>
	<!-- Product Section End -->

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