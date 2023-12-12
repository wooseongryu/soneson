<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
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
<%-- <link href="${pageContext.request.contextPath }/resources/main/css/happy/global.css" rel="stylesheet"> --%>


<link href="${pageContext.request.contextPath }/resources/main/css/happy/header.css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/resources/main/css/happy/footer.css" rel="stylesheet">

<script>
	function logout() {
		let result = confirm("로그아웃하시겠습니까?");
		
		if(result) {
			location.href = "Logout";
		}
	}
</script>  

<style>

.Header_logo__3iS1b {
    float: left;
    margin-top: 21px;
}

ul {
	list-style: none;
}

.goKAXE {
	vertical-align: middle;
}

/* *, *:before, *:after { */
/*     box-sizing: border-box; */
/* } */

.hd_dropdown{
  position : relative;
  display : inline-block;
}

.hd_dropbtn_icon{
  font-family : 'Material Icons';
}
.hd_dropbtn{
  border : 2px solid rgba(0,0,0,0.1);
  border-radius : 4px;
  background-color: white;
  font-weight: 400;
  color : rgb(37, 37, 37);
  padding : 10px;
  width :100px;
  text-align: center;
  cursor : pointer;
  font-size : 12px;
}
.hd_dropdown-content{
  display : none;
  position : absolute;
  z-index : 1; /*다른 요소들보다 앞에 배치*/
  font-weight: 300;
  background-color: #f9f9f9;
  min-width : 100px;
}

.hd_dropdown-content a{
  display : block;
  text-decoration : none;
  color : rgb(37, 37, 37);
  font-size: 12px;
  padding : 12px 20px;
}

.hd_dropdown-content a:hover{
  background-color : #ececec
}

.hd_dropdown:hover .hd_dropdown-content {
  display: block;
}


</style>

</head>
<body>
	<div id="root">
<!-- 		<div class="u_skip" style=""> -->
<!-- 			<a href="#header"> -->
<!-- 				<span>메뉴 바로가기</span> -->
<!-- 			</a> -->
<!-- 			<a href="#content"> -->
<!-- 				<span>본문 바로가기</span> -->
<!-- 			</a> -->
<!-- 		</div> -->
		<div id="wrap" class="wrap" style="">
			<header id="headerSoneson" class="Header_header__3lTua">
				<div class="Header_gnb__122-B">
					<div class="Header_inner__3RznR">
						<h1 class="Header_logo__3iS1b">
							<a href="./">
								<%-- 	<img src="${pageContext.request.contextPath }/resources/soneson/img/header/sone.png" class="package_img" width="160px"> --%>
								<img src="${pageContext.request.contextPath }/resources/soneson/img/header/soneson2.jpg" class="package_img" width="160px">
							</a>
						</h1>
<!-- 						<a> -->
<!-- 							<span class="HeaderAdmin"> -->
<!-- 							<span class="HeaderAdminPage">관리자</span> -->
<!-- 								<span class="HeaderUserProfile_bar__1OPU2"></span> -->
<!-- 							</span> -->
<!-- 						</a> -->
						<div class="loginSearch">
						
							<div class="loginText">
								<c:if test="${sessionScope.sId eq 'admin' }">
									<a href="admin">
										<span class="">관리자페이지</span>
										<span class="HeaderUserProfile_bar__1OPU2"></span>
									</a>
								</c:if>
								<a href="projectStartForm">
									<span class="">
									<span class="">프로젝트 올리기</span>
										<span class="HeaderUserProfile_bar__1OPU2"></span>
									</span>
								</a>
								<!-- 박훈나 임시추가 -->
								<a href="fundingPaymentForm">
									<span class="">
									<span class="">임</span>
<!-- 									<span class="">임시 결제페이지</span> -->
										<span class="HeaderUserProfile_bar__1OPU2"></span>
									</span>
								</a>
								<a href="https://happybean.naver.com/my/home" class="HeaderUserProfile_wrap__3FD8V">
									<img loading="lazy" src="https://phinf.pstatic.net/contact/profile/blog/58/80/bom_bomi.jpg?type=s160" width="30" height="30" alt="유저 프로필 사진" class="HeaderUserProfile_img__fxGyI">
		<!-- 								<span class="HeaderUserProfile_id__3e8GE"> -->
		<!-- 									<span class="HeaderUserProfile_ellipsis__1iBvz"></span> -->
		<!-- 								</span> -->
								</a>
								<c:choose>
									<c:when test="${empty sessionScope.sId }">
										<a href="login" class="search-switch">
											<span>로그인</span>
										</a>
										<a href="join">
											<span class="HeaderUserProfile_bar__1OPU2"></span>
											<span>회원가입</span>
										</a>
									</c:when>
									<c:otherwise>
<%-- 										<span class="HeaderUserProfile_ellipsis__1iBvz"><a href="user?id=${sessionScope.sId }">${sessionScope.sId } 님</a></span> --%>
<!-- 										<span class="HeaderUserProfile_bar__1OPU2"></span> -->
<!-- 										<a href="javascript:logout()">로그아웃</a> -->
										 <div class="hd_dropdown">
											<button class="hd_dropbtn"> 
												${picture }
												<span class="hd_dropbtn_icon">${sessionScope.sId }</span>
											</button>
											<div class="hd_dropdown-content">
												<a href="user?id=${sessionScope.sId }">마이페이지</a>
												<a href="oneToOneQna">1:1문의</a>
												<a href="userSelectOTO">문의내역</a>
												<a href="javascript:logout()">로그아웃</a>
											</div>
										</div>
									</c:otherwise>
								</c:choose>
							</div>
							
							<div class="style__SearchInputWrapper-zxsodr-15 hbYMFx">
								<input placeholder="검색어를 입력해주세요." class="style__SearchInput-zxsodr-16 jPMsmJ">
								<div class="style__SearchButton-zxsodr-17 bolWec">
									<svg class="style__SearchIcon-zxsodr-34 dtngnQ" width="48" height="48" viewBox="0 0 48 48" fill="none" xmlns="http://www.w3.org/2000/svg">
										<path fill-rule="evenodd" clip-rule="evenodd" d="M29.9979 32.9819C27.3165 34.9694 23.9582 36.0788 20.3642 35.9089C12.0892 35.5176 5.69811 28.4922 6.08938 20.2171C6.48064 11.9421 13.5061 5.55107 21.7811 5.94234C30.0561 6.33361 36.4472 13.359 36.0559 21.6341C35.889 25.1636 34.5152 28.3505 32.3522 30.8144L39.4908 38.6856L37.1205 40.8353L29.9979 32.9819ZM32.6597 21.4735C32.3571 27.8728 26.9241 32.8152 20.5248 32.5127C14.1254 32.2101 9.183 26.7771 9.48558 20.3777C9.78816 13.9784 15.2212 9.03597 21.6205 9.33855C28.0199 9.64113 32.9623 15.0741 32.6597 21.4735Z" fill="black">
										</path>
									</svg>
								</div>
							</div>
						
						</div>
						
						
<!-- 						<span class="HeaderUserProfile_bar__1OPU2"></span> -->
<!-- 						<a href="https://nid.naver.com/nidlogin.logout?returl=https%3A%2F%2Fhappybean.naver.com%2F" class="HeaderUserProfile_btn_login__F6x9v">로그아웃</a> -->
<!-- 							<span class="HeaderUserProfile_bar__1OPU2"></span> -->
							
							
<!-- 							1202 주석 -->
<!-- 							<a class="Header_btn_search__2NxHd" href="/search"> -->
<!-- 								<span class="blind">검색</span> -->
<!-- 									<g fill="none" fill-rule="evenodd"> -->
<!-- 										<path fill="#333" fill-rule="nonzero" d="M15.205 17.161a9.209 9.209 0 0 1-5.49 1.804 9.25 9.25 0 1 1 6.52-2.687L21 21.044l-.956.956-4.84-4.839zm-5.49.304a7.75 7.75 0 1 0 0-15.5 7.75 7.75 0 0 0 0 15.5z"> -->
<!-- 										</path> -->
<!-- 									</g> -->
<!-- 								</svg> -->
<!-- 							</a> -->
							
							
							
							
						<div class="menuSearch">
							<div role="menubar" class="HeaderGnb_menu__1fvV3">
								<svg class="style__MenuIcon-sc-76u73h-29 goKAXE" width="25" height="25" viewBox="0 0 48 48" fill="none" xmlns="http://www.w3.org/2000/svg">
									<rect x="9" y="11" width="30" height="4" fill="#1C1C1C"></rect>
									<rect x="9" y="22" width="30" height="4" fill="#1C1C1C"></rect>
									<rect x="9" y="33" width="30" height="4" fill="#1C1C1C"></rect>
								</svg>
								<a href="javascript:void(0);" role="menuitem" class="HeaderGnb_item__wcfir category" aria-current="false">카테고리</a>
<!-- 								 TODO -->
<!-- 								<a class="HeaderGnb_item__wcfir eWDpEZ" role="menuitem" href="popular">인기</a> -->
<!-- 								<a class="HeaderGnb_item__wcfir eWDpEZ" role="menuitem" href="new">신규</a> -->
<!-- 								<a class="HeaderGnb_item__wcfir eWDpEZ" role="menuitem" href="closing">마감임박</a> -->
<!-- 								<a class="HeaderGnb_item__wcfir eWDpEZ" role="menuitem" href="upcoming">공개예정</a> -->
								
<!-- 								<a class="HeaderGnb_item__wcfir" role="menuitem" aria-current="false" href="popular">인기</a> -->
<!-- 								<a class="HeaderGnb_item__wcfir" role="menuitem" aria-current="false" href="new">신규</a> -->
<!-- 								<a class="HeaderGnb_item__wcfir" role="menuitem" aria-current="false" href="closing">마감임박</a> -->
<!-- 								<a class="HeaderGnb_item__wcfir" role="menuitem" aria-current="false" href="upcoming">공개예정</a> -->
<%-- 								<c:forEach var="tap" items="${tapList }"> --%>
<%-- 									<a class="HeaderGnb_item__wcfir" role="menuitem" aria-current="false" href="${tap.tap_Ename }">${tap.tap_Kname }</a> --%>
<%-- 								</c:forEach> --%>
<!-- 								<a href="https://happybean.naver.com/campaign/list" role="menuitem" class="HeaderGnb_item__wcfir worth" aria-current="false">가치</a> -->
								<a href="https://happybean.naver.com/campaign/list" role="menuitem" class="HeaderGnb_item__wcfir worth" aria-current="false"></a>
							</div>
		<!-- 					<div class="style__SearchInputWrapper-zxsodr-15 hbYMFx"> -->
		<!-- 						<input placeholder="검색어를 입력해주세요." class="style__SearchInput-zxsodr-16 jPMsmJ"> -->
		<!-- 						<div class="style__SearchButton-zxsodr-17 bolWec"> -->
		<!-- 							<svg class="style__SearchIcon-zxsodr-34 dtngnQ" width="48" height="48" viewBox="0 0 48 48" fill="none" xmlns="http://www.w3.org/2000/svg"> -->
		<!-- 								<path fill-rule="evenodd" clip-rule="evenodd" d="M29.9979 32.9819C27.3165 34.9694 23.9582 36.0788 20.3642 35.9089C12.0892 35.5176 5.69811 28.4922 6.08938 20.2171C6.48064 11.9421 13.5061 5.55107 21.7811 5.94234C30.0561 6.33361 36.4472 13.359 36.0559 21.6341C35.889 25.1636 34.5152 28.3505 32.3522 30.8144L39.4908 38.6856L37.1205 40.8353L29.9979 32.9819ZM32.6597 21.4735C32.3571 27.8728 26.9241 32.8152 20.5248 32.5127C14.1254 32.2101 9.183 26.7771 9.48558 20.3777C9.78816 13.9784 15.2212 9.03597 21.6205 9.33855C28.0199 9.64113 32.9623 15.0741 32.6597 21.4735Z" fill="black"> -->
		<!-- 								</path> -->
		<!-- 							</svg> -->
		<!-- 						</div> -->
		<!-- 					</div> -->
						</div>
					</div>
				</div>
				
				<!-- 1122 추가 -->
				<div class="DonationTodayCategory_wrap__k2rtu">
					<ul class="DonationTodayCategory_category_list__2WAdE">
						<li class="DonationTodayCategory_list_item__agFbi item_1" aria-current="true">
							<button type="button" class="DonationTodayCategory_button__1648s" onclick="location.href='all'">
								<span class="DonationTodayCategory_text__2oRHp">전체</span>
							</button>
<!-- 							<a class="DonationTodayCategory_button__1648s"> -->
<!-- 								<span class="DonationTodayCategory_text__2oRHp">전체</span> -->
<!-- 							</a> -->
						</li>
						<li class="DonationTodayCategory_list_item__agFbi item_2" aria-current="false">
							<button type="button" class="DonationTodayCategory_button__1648s" onclick="location.href='youth'">
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
							<button type="button" class="DonationTodayCategory_button__1648s" onclick="location.href='animal'">
								<span class="DonationTodayCategory_text__2oRHp">동물</span>
							</button>
						</li>
						<li class="DonationTodayCategory_list_item__agFbi item_4" aria-current="false">
							<button type="button" class="DonationTodayCategory_button__1648s" onclick="location.href='nature'">
								<span class="DonationTodayCategory_text__2oRHp">환경</span>
							</button>
						</li>
						<li class="DonationTodayCategory_list_item__agFbi item_5" aria-current="false">
							<button type="button" class="DonationTodayCategory_button__1648s" onclick="location.href='disabled'">
								<span class="DonationTodayCategory_text__2oRHp">장애인</span>
							</button>
						</li>
						<li class="DonationTodayCategory_list_item__agFbi item_6" aria-current="false">
							<button type="button" class="DonationTodayCategory_button__1648s" onclick="location.href='woman'">
								<span class="DonationTodayCategory_text__2oRHp">가족•여성</span>
							</button>
						</li>
						<li class="DonationTodayCategory_list_item__agFbi item_7" aria-current="false">
							<button type="button" class="DonationTodayCategory_button__1648s" onclick="location.href='eldery'">
								<span class="DonationTodayCategory_text__2oRHp">어르신</span>
							</button>
						</li>
<!-- 						<li class="DonationTodayCategory_list_item__agFbi item_8" aria-current="false"> -->
<!-- 							<button type="button" class="DonationTodayCategory_button__1648s"> -->
<!-- 								<span class="DonationTodayCategory_text__2oRHp">시민사회</span> -->
<!-- 							</button> -->
<!-- 						</li> -->
						<li class="DonationTodayCategory_list_item__agFbi item_9" aria-current="false">
							<button type="button" class="DonationTodayCategory_button__1648s" onclick="location.href='etc'">
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

        $j(".HeaderGnb_item__wcfir.category, .DonationTodayCategory_wrap__k2rtu").on({
        	
            mouseenter: function () {
                clearTimeout(timeout);
                $j(".DonationTodayCategory_wrap__k2rtu").show();
            },
            mouseleave: function () {
                timeout = setTimeout(function () {
                    $j(".DonationTodayCategory_wrap__k2rtu").hide();
                }, 200); // 0.2초 후에 숨김 처리
            }
        });
        
        $j(".DonationTodayCategory_list_item__agFbi").click(function() {
        	$j(".DonationTodayCategory_list_item__agFbi").attr("aria-current", "false");
        	$j(this).attr("aria-current", "true");
        });
        
        // HeaderGnb_menu__1fvV3
        $j.ajax({
            url: "header",  // 서버의 URL로 변경
            type: "GET",
            dataType: "json",
            success: function(response) {
//             	'<a class="HeaderGnb_item__wcfir eWDpEZ" role="menuitem" href="popular">인기</a>'
            	$j.each(response, function(i, e){
//             		debugger;
// 					$j('.category').after(
					$j('.worth').before(
							'<a class="HeaderGnb_item__wcfir eWDpEZ" role="menuitem" href="' + e.tab_Ename + '">' + e.tab_Kname + '</a>'		
					);
            	})
            	
            }
        });
        
        
//             				'<a class="HeaderGnb_item__wcfir eWDpEZ" role="menuitem" href="popular">' + + '</a>'
        
//         $("#step1_screen").children(".row").last().append(
// 					"<div class='col-4'><h6 data-hour='" 
// 					+ hour 
// 					+ "' data-movieCode='" 
// 					+ data.getAttribute("data-movieCode") 
// 					+ "' data-theaterIdx='" 
// 					+ data.getAttribute("data-theaterIdx") 
// 					+ "' data-date='" 
// 					+ data.getAttribute("data-date")
// 					+ "' data-screenName='" 
// 					+ time.screen_name 
// 					+ "' data-screen_idx='" 
// 					+ time.sche_screen_idx
// 					+ "' onclick='final(this)'>" + hour + " | " + time.remainSeatCount + "석" + "</h6></div>"
// 				);
// 	}
        
        
//         $j(".HeaderGnb_item__wcfir").click(function() {
//         	$j(".HeaderGnb_item__wcfir").attr("aria-current", "false");
//         	$j(this).attr("aria-current", "true");
//         });
        
//         $j(".HeaderGnb_item__wcfir").click(function() {
//         	$j(this).addClass("eWDpEZ");
//         });.
// 왜 안 되지?
        
        // 위는 전부 맞음
		
		
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