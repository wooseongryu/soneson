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
    	function userProfile() {
    		$("#container").children().remove();
    		$.ajax({
    			type: 'post',
    			url: 'userProfile',
    			dataType: 'json',
    			success: function(resp) {
    				$("#topCateProfile h4").css("color", "red");
    				$("#container").append(
   						'<div class="blog__details__comment">'
							+ '<div class="blog__details__comment__item">'
							    + '<div class="blog__details__comment__item__text">'
							        + '<p>표지 일러스트, 삽화 작업을 주로 하는 또롱입니다. 모든 분들께 예쁘고 행복한 그림을 그려드리는 게 꿈입니다.</p>'
							    + '</div>'
							+ '</div>'
						+ '</div>'		
    				);
    			},
    			error: function() {
    				alert("에러!");
    			}
    		});
    	}
    
    	$(function() {
    		userProfile();
    	});
    </script>
</head>

<body>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

    <!-- Header Section Begin -->
    <header class="header">
        <div class="container">
            <div class="row">
                <div class="col-lg-2">
                    <div class="header__logo">
                        <a href="./index.html">
<!--                             <img src="img/logo.png" alt=""> -->
                        </a>
                    </div>
                </div>
                <div class="col-lg-8">
                    <div class="header__nav">
                        <nav class="header__menu mobile-menu">
                            <ul>
                                <li class="active"><a href="./index.html">Homepage</a></li>
                                <li><a href="./categories.html">Categories <span class="arrow_carrot-down"></span></a>
                                    <ul class="dropdown">
                                        <li><a href="./categories.html">Categories</a></li>
                                        <li><a href="./anime-details.html">Anime Details</a></li>
                                        <li><a href="./anime-watching.html">Anime Watching</a></li>
                                        <li><a href="./blog-details.html">Blog Details</a></li>
                                        <li><a href="./signup.html">Sign Up</a></li>
                                        <li><a href="./login.html">Login</a></li>
                                    </ul>
                                </li>
                                <li><a href="./blog.html">Our Blog</a></li>
                                <li><a href="#">Contacts</a></li>
                            </ul>
                        </nav>
                    </div>
                </div>
                <div class="col-lg-2">
                    <div class="header__right">
                        <a href="#" class="search-switch"><span class="icon_search"></span></a>
                        <a href="./login.html"><span class="icon_profile"></span></a>
                    </div>
                </div>
            </div>
            <div id="mobile-menu-wrap"></div>
        </div>
    </header>
    <!-- Header End -->
    
    <section class="blog-details spad">
        <div class="container">
		    <div class="blog__details__comment">
				<div class="blog__details__comment__item">
				    <div class="blog__details__comment__item__text">
				        <h5>또롱/Ttorong</h5>
				        <p>3년전 가입</p>
				        <a href="#">+ 팔로우</a>
				        <a href="#">창작자 문의</a>
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
                                    <div class="section-title">
                                        <div class="user_top_cate" id="topCateProfile">
											<h4 onclick="userProfile()">프로필</h4>
										</div>
										<div class="user_top_cate">
											<h4>프로젝트후기</h4>
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
                        
                        <section class="blog-details spad">
					        <div class="container" id="container">

								<!-- ajax -->	
								
														    
							    
							</div>
						</section>
                        
                    </div>
                </div>
			</div>
		</div>
</section>
<!-- Product Section End -->

<!-- Footer Section Begin -->
<footer class="footer">
    <div class="page-up">
        <a href="#" id="scrollToTopButton"><span class="arrow_carrot-up"></span></a>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-lg-3">
                <div class="footer__logo">
<!--                     <a href="./index.html"><img src="img/logo.png" alt=""></a> -->
                </div>
            </div>
            <div class="col-lg-6">
                <div class="footer__nav">
                    <ul>
                        <li class="active"><a href="./index.html">Homepage</a></li>
                        <li><a href="./categories.html">Categories</a></li>
                        <li><a href="./blog.html">Our Blog</a></li>
                        <li><a href="#">Contacts</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-3">
                <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
                  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>

              </div>
          </div>
      </div>
  </footer>
  <!-- Footer Section End -->

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