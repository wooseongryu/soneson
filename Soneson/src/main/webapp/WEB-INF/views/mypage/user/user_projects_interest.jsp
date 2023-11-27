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
	
	<!-- 손에손 타이틀 아이콘 -->
	<link rel="shortcut icon" href="${pageContext.request.contextPath }/resources/soneson/img/header/son33.ico" type="image/x-icon">
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
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/mypage/css/admin_mypage.css" rel="stylesheet">
    <!-- 류우성 CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/user/style.css" type="text/css">
    
    <style>
    
    .contents {
    	font-size: 17px;
    	margin-bottom: 7px;
    }
    .sub__contents {
    	font-size: 15px;
    }
    
    .product__item__text ul {
    	margin-top: 15px;
    }
    
    .product__item__text ul li { 
     	font-size: 12px; 
     	background-color: #fff;
     	color: #F86453;
     }
     
     .alarm__signup {
     	color: #F86453;
     	margin-top: 15px;
     }
     

    </style>
    
    <script type="text/javascript">
    	let pointColor = "#F86453";
		
    	function userProjectsLiked(id) {
			$.ajax({
    			type: 'post',
    			url: 'userProjectsLiked',
    			dataType: 'json',
    			success: function(resp) {
    				reset_screen(id);

					$("#user_content").append(
						'<section class="product-page spad">                                                                                                                                         '
						+ '	<div class="container">                                                                                                                                                  '
					    + '     <div class="row">                                                                                                                                                 '
						+ '			<div class="col-lg-11">                                                                                                                                          '
						+ '				<div class="product__page__content">                                                                                                                         '
                        + '					<div class="row">                                                                                                                                        '
					    + '                     <div class="col-lg-4 col-md-6 col-sm-6" style="">                                                                                                 '
					    + '                         <div class="product__item">                                                                                                                   '
					    + '								<a href="${pageContext.request.contextPath }/popular">																																'
					    + '                                 <div class="product__item__pic set-bg" data-setbg="${pageContext.request.contextPath }/resources/user/like.jpg" 		 '
					    + '										style="background-image: url(\'${pageContext.request.contextPath }/resources/user/like.jpg\')"></div>			 '
					    + '								</a>																																		'
					    + '                             <div class="product__item__text">                                                                                                         '
					    + '                                 <ul>                                                                                                                                  '
					    + '                                     캐릭터 굿즈 |                                                                                                      '
					    + '                                     <a href="${pageContext.request.contextPath }/user" style="color:#000">미뉴</a>                                                                                                              '
					    + '                                 </ul>                                                                                                                                 '
					    + '                                 <div class="contents">                                                                                                      '
					    + '                                 <a href="${pageContext.request.contextPath }/popular" style="color:#000">                                                                                                                         '
					    + '                                 	<b>말랑하게 안아줄게! 나의 다정한 고양이들</b>                                                                                   '
					    + '                                 </a>                                                                                                                                 '
					    + '                                 </div>                                                                                                                                 '
					    + '                                 <div class="sub__contents">당신을 말랑하게 품어줄 고양이 인형</div>                                                    '
					    + '                                 <ul>                                                                                                         '
					    + '                                     <li style="font-color:#F86453;">181%</li>                                                                                                                    '
					    + '                                     1,819,600원                                                                                                              '
					    + '                                     <li style="float: right;">18일 남음</li>                                                                                           '
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
    	
    	function userProjectsAlarm(id) {
			$.ajax({
    			type: 'post',
    			url: 'userProjectsAlarm',
    			dataType: 'json',
    			success: function(resp) {
    				reset_screen(id);

					$("#user_content").append(
						'<section class="product-page spad">                                                                                                                                         '
						+ '	<div class="container">                                                                                                                                                  '
					    + '     <div class="row">                                                                                                                                                 '
						+ '			<div class="col-lg-11">                                                                                                                                          '
						+ '				<div class="product__page__content">                                                                                                                         '
                        + '					<div class="row">                                                                                                                                        '
					    + '                     <div class="col-lg-4 col-md-6 col-sm-6" style="">                                                                                                 '
					    + '                         <div class="product__item">                                                                                                                   '
					    + '								<a href="${pageContext.request.contextPath }/popular">																																'
					    + '                                 <div class="product__item__pic set-bg" data-setbg="${pageContext.request.contextPath }/resources/user/alarm.jpg" 		 '
					    + '										style="background-image: url(\'${pageContext.request.contextPath }/resources/user/alarm.jpg\')"></div>			 '
					    + '								</a>																																		'
					    + '                             <div class="product__item__text">                                                                                                         '
					    + '                                 <ul>                                                                                                                                  '
					    + '                                     캐릭터 굿즈 |                                                                                                      '
					    + '                                     <a href="${pageContext.request.contextPath }/user" style="color:#000">아이돌룩</a>                                                                                                              '
					    + '                                 </ul>                                                                                                                                 '
					    + '                                 <div class="contents">                                                                                                      '
					    + '                                 <a href="${pageContext.request.contextPath }/popular" style="color:#000">                                                                                                                         '
					    + '                                 	<b>포근한 귀여움 한스푼 <우이 인형 친구들></b>                                                                                   '
					    + '                                 </a>                                                                                                                                 '
					    + '                                 </div>                                                                                                                                 '
					    + '                                 <div class="sub__contents">우이작가님의 귀여운 첫번째 인형 펀딩!</div>                                                    '					   
					    + '                                     <div class=alarm__signup><b>3985명 알림신청 중</b></div>                                                                                                                    '
					    + '                                     <button type="button" class="btn btn-primary" onclick="location.href=" style="margin-top: 15px">알림신청 중</button>  '
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

		
    	function reset_screen(id) {
    		$("#section-title h5").css("color", "black");
    		$("#user_content").children().remove();
    		$("#" + id + " h5").css("color", pointColor);
    	}
		
		$(function() {
			userProjectsLiked('topCateLiked');
		});
		
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
				        <h3>
				        	<b>관심 프로젝트</b>
				        </h3>
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
										<div class="user_top_cate" id="topCateLiked">
										<h5 onclick="userProjectsLiked('topCateLiked')">좋아한 1</h5>
										</div>
										<div class="user_top_cate" id="topCateAlarm">
										<h5 onclick="userProjectsAlarm('topCateAlarm')">알림신청 1</h5>
										</div>
									</div>
								</div>
							</div>
						</div>
						<hr>
						
						<section class="category__details">
					        <div class="container">
							    <div class="category__details__comment">
									<div class="category__details__item">
									    <div class="category__details__item__text">
									    <br>
									        <h6>
 									        	<b>전체 / 진행중 / 종료된</b>  <!-- 셀렉트 박스로 변경 에정 -->
									        </h6>
									     <br>    
									    </div>
									</div>
								</div>
							</div>
						</section>
					                        
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