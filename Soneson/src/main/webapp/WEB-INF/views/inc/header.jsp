<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko" data-useragent="mozilla/5.0 (windows nt 10.0; win64; x64) applewebkit/537.36 (khtml, like gecko) chrome/119.0.0.0 safari/537.36">
<head>
<meta http-equiv="x-dns-prefetch-control" content="on">
<link rel="dns-prefetch" href="//shop-phinf.pstatic.net">
<link rel="dns-prefetch" href="//naverbooking-phinf.pstatic.net">
<link rel="preconnect" href="//happybean.naver.com">
<link rel="preconnect" href="//happybean-phinf.pstatic.net">
<link rel="preconnect" href="//ssl.pstatic.net">
<link rel="preconnect" href="//lcs.naver.com">
<meta charset="utf-8">
<%-- <link rel="shortcut icon" href="${pageContext.request.contextPath }/resources/soneson/img/header/son33.ico" type="image/x-icon"> --%>
<script src="${pageContext.request.contextPath }/resources/soneson/js/jquery-3.7.0.js"></script>
<link rel="shortcut icon" href="${pageContext.request.contextPath }/resources/soneson/img/header/favicon-16x16.png">

<title>손에손</title>


<!-- 엄 추가 -->
<link href="${pageContext.request.contextPath }/resources/main/css/happy/global.css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/resources/main/css/happy/header.css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/resources/main/css/happy/footer.css" rel="stylesheet">



</head>
<body>
	<div id="root">
		<div class="u_skip" style="">
			<a href="#header">
				<span>메뉴 바로가기</span>
			</a>
			<a href="#content">
				<span>본문 바로가기</span>
			</a>
		</div>
		<div id="wrap" class="wrap" style="">
			<header id="header" class="Header_header__3lTua">
				<div class="Header_gnb__122-B">
					<div class="Header_inner__3RznR">
						<h1 class="Header_logo__3iS1b">
							<a href="./">
								<%-- 	<img src="${pageContext.request.contextPath }/resources/soneson/img/header/sone.png" class="package_img" width="160px"> --%>
								<img src="${pageContext.request.contextPath }/resources/soneson/img/header/soneson2.jpg" class="package_img" width="160px">
							</a>
						</h1>
						<a href="https://happybean.naver.com/my/home" class="HeaderUserProfile_wrap__3FD8V">
							<img loading="lazy" src="https://phinf.pstatic.net/contact/profile/blog/58/80/bom_bomi.jpg?type=s160" width="30" height="30" alt="유저 프로필 사진" class="HeaderUserProfile_img__fxGyI">
							<span class="HeaderUserProfile_id__3e8GE">
								<span class="HeaderUserProfile_ellipsis__1iBvz">성윤</span>
							</span>
						</a>
						<span class="HeaderUserProfile_bar__1OPU2"></span>
						<a href="https://nid.naver.com/nidlogin.logout?returl=https%3A%2F%2Fhappybean.naver.com%2F" class="HeaderUserProfile_btn_login__F6x9v">로그아웃</a>
							<span class="HeaderUserProfile_bar__1OPU2"></span>
							<a class="Header_btn_search__2NxHd" href="/search">
								<span class="blind">검색</span>
								<svg width="21" height="22" viewBox="0 0 21 22" aria-hidden="true">
									<g fill="none" fill-rule="evenodd">
										<path fill="#333" fill-rule="nonzero" d="M15.205 17.161a9.209 9.209 0 0 1-5.49 1.804 9.25 9.25 0 1 1 6.52-2.687L21 21.044l-.956.956-4.84-4.839zm-5.49.304a7.75 7.75 0 1 0 0-15.5 7.75 7.75 0 0 0 0 15.5z">
										</path>
									</g>
								</svg>
							</a>
					</div>
				</div>
				<div role="menubar" class="HeaderGnb_menu__1fvV3">
					<svg class="style__MenuIcon-sc-76u73h-29 goKAXE" width="25" height="25" viewBox="0 0 48 48" fill="none" xmlns="http://www.w3.org/2000/svg">
						<rect x="9" y="11" width="30" height="4" fill="#1C1C1C"></rect>
						<rect x="9" y="22" width="30" height="4" fill="#1C1C1C"></rect>
						<rect x="9" y="33" width="30" height="4" fill="#1C1C1C"></rect>
					</svg>
					<a href="https://happybean.naver.com/donation" role="menuitem" class="HeaderGnb_item__wcfir category" aria-current="false">카테고리</a>
					<a class="HeaderGnb_item__wcfir" role="menuitem" aria-current="true" href="popular">인기</a>
					<a class="HeaderGnb_item__wcfir" role="menuitem" aria-current="true" href="/fundings/home">신규</a>
					<a class="HeaderGnb_item__wcfir" role="menuitem" aria-current="false" href="/flower/product">마감임박</a>
					<a class="HeaderGnb_item__wcfir" role="menuitem" aria-current="false" href="/volunteer">공개예정</a>
					<a href="https://happybean.naver.com/campaign/list" role="menuitem" class="HeaderGnb_item__wcfir" aria-current="false">가치</a>
				</div>
				
				<!-- 1122 추가 -->
				<div class="DonationTodayCategory_wrap__k2rtu">
					<ul class="DonationTodayCategory_category_list__2WAdE">
						<li class="DonationTodayCategory_list_item__agFbi item_1" aria-current="true">
							<button type="button" class="DonationTodayCategory_button__1648s">
								<span class="DonationTodayCategory_text__2oRHp">전체</span>
							</button>
						</li>
						<li class="DonationTodayCategory_list_item__agFbi item_2" aria-current="false">
							<button type="button" class="DonationTodayCategory_button__1648s">
								<span class="DonationTodayCategory_text__2oRHp">아동•청소년</span>
							</button>
						</li>
<!-- 						<li class="DonationTodayCategory_list_item__agFbi item_6" aria-current="false"> -->
<!-- 							<button type="button" class="DonationTodayCategory_button__1648s"> -->
<!-- 								<span class="DonationTodayCategory_text__2oRHp">지구촌</span> -->
<!-- 							</button> -->
<!-- 						</li> -->
<!-- 						<li class="DonationTodayCategory_list_item__agFbi item_5" aria-current="false"> -->
<!-- 							<button type="button" class="DonationTodayCategory_button__1648s"> -->
<!-- 								<span class="DonationTodayCategory_text__2oRHp">다문화</span> -->
<!-- 							</button> -->
<!-- 						</li> -->
						<li class="DonationTodayCategory_list_item__agFbi item_3" aria-current="false">
							<button type="button" class="DonationTodayCategory_button__1648s">
								<span class="DonationTodayCategory_text__2oRHp">동물</span>
							</button>
						</li>
						<li class="DonationTodayCategory_list_item__agFbi item_4" aria-current="false">
							<button type="button" class="DonationTodayCategory_button__1648s">
								<span class="DonationTodayCategory_text__2oRHp">환경</span>
							</button>
						</li>
						<li class="DonationTodayCategory_list_item__agFbi item_5" aria-current="false">
							<button type="button" class="DonationTodayCategory_button__1648s">
								<span class="DonationTodayCategory_text__2oRHp">장애인</span>
							</button>
						</li>
						<li class="DonationTodayCategory_list_item__agFbi item_6" aria-current="false">
							<button type="button" class="DonationTodayCategory_button__1648s">
								<span class="DonationTodayCategory_text__2oRHp">가족•여성</span>
							</button>
						</li>
						<li class="DonationTodayCategory_list_item__agFbi item_7" aria-current="false">
							<button type="button" class="DonationTodayCategory_button__1648s">
								<span class="DonationTodayCategory_text__2oRHp">어르신</span>
							</button>
						</li>
<!-- 						<li class="DonationTodayCategory_list_item__agFbi item_8" aria-current="false"> -->
<!-- 							<button type="button" class="DonationTodayCategory_button__1648s"> -->
<!-- 								<span class="DonationTodayCategory_text__2oRHp">시민사회</span> -->
<!-- 							</button> -->
<!-- 						</li> -->
						<li class="DonationTodayCategory_list_item__agFbi item_9" aria-current="false">
							<button type="button" class="DonationTodayCategory_button__1648s">
								<span class="DonationTodayCategory_text__2oRHp">기타</span>
							</button>
						</li>
					</ul>
				</div>
				
			</header>


	
		</div>
	</div>

<script>
	var $j = jQuery.noConflict();

	$j(function() {
		
		let timeout;

        $(".HeaderGnb_item__wcfir.category, .DonationTodayCategory_wrap__k2rtu").on({
            mouseenter: function () {
                clearTimeout(timeout);
                $(".DonationTodayCategory_wrap__k2rtu").show();
            },
            mouseleave: function () {
                timeout = setTimeout(function () {
                    $(".DonationTodayCategory_wrap__k2rtu").hide();
                }, 200); // 0.2초 후에 숨김 처리
            }
        });
        
        $(".DonationTodayCategory_list_item__agFbi").click(function() {
        	$(".DonationTodayCategory_list_item__agFbi").attr("aria-current", "false");
        	$(this).attr("aria-current", "true");
        });
		
		
// 		// "카테고리" 텍스트에 대한 마우스 이벤트 처리
//         $(".HeaderGnb_item__wcfir.category").on({
//             mouseenter: function () {
//                 // 마우스가 들어왔을 때
//                 $(".DonationTodayCategory_wrap__k2rtu").show();
//             },
//             mouseleave: function () {
//                 // 마우스가 나갔을 때
//                 $(".DonationTodayCategory_wrap__k2rtu").on("mouseleave", function () {
//                     // 추가 메뉴 안에서 마우스가 나갔을 때
//                     $(this).hide();
//                 });
//             }
//         });
		
		
// 		$j(".HeaderGnb_item__wcfir.category").mouseover(function() {
// 			$j(".DonationTodayCategory_wrap__k2rtu").css("display", "block");
// 		}); 
		
		
		
// 		$j(".HeaderGnb_item__wcfir.category").mouseover(function() {
// 			$j(".DonationTodayCategory_wrap__k2rtu").addClass("cateShow");
// 		}); 
		
// 		$j(".HeaderGnb_item__wcfir.category, .DonationTodayCategory_wrap__k2rtu").mouseover(function() {
// 			$j(".DonationTodayCategory_wrap__k2rtu").toggle();
// 		}); 
		
// 		$j(".DonationTodayCategory_wrap__k2rtu").mouseover(function() {
// 			$j(".DonationTodayCategory_wrap__k2rtu").css("display", "block");
// 		}); 
		
// 		$j(".DonationTodayCategory_wrap__k2rtu").mouseout(function() {
// 			$j(".DonationTodayCategory_wrap__k2rtu").css("display", "none");
// 		}); 
		

// 		$j(".HeaderGnb_item__wcfir.category").mouseout(function () {
// 		    // DonationTodayCategory_wrap__k2rtu에 마우스가 올라가 있을 때의 이벤트
// 		    $j(".DonationTodayCategory_wrap__k2rtu").mouseover(function () {
// 		        $j(".DonationTodayCategory_wrap__k2rtu").css("display", "block");
// 		    });

// 		    // DonationTodayCategory_wrap__k2rtu에 마우스가 올라가 있지 않을 때의 이벤트
// 		    $j(".DonationTodayCategory_wrap__k2rtu").mouseout(function () {
// 		        $j(".DonationTodayCategory_wrap__k2rtu").css("display", "none");
// 		    });
// 		});
		
		
// 		$j(".HeaderGnb_item__wcfir.category, .DonationTodayCategory_wrap__k2rtu").mouseout(function() {
// 			$j(".DonationTodayCategory_wrap__k2rtu").css("display", "none");
// 		}); 


	});
</script>

</body>
</html>