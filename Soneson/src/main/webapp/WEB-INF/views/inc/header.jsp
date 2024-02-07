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
	
	function profileDefault(tagId) {
		$("#" + tagId.id).attr('src','${pageContext.request.contextPath }/resources/soneson/img/header/son33.png');
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
  width :130px;
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
  min-width : 100%;
  text-align: center;
  padding: 10px;
/*   margin-top: 10px;  이거 넣으면 드롭다운이 순식간에 사라짐... */
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
		<div id="wrap" class="wrap" style="">
			<header id="headerSoneson" class="Header_header__3lTua">
				<div class="Header_gnb__122-B">
					<div class="Header_inner__3RznR">
						<h1 class="Header_logo__3iS1b">
<!-- 							<a href="./"> -->
							<a href="/soneson/">
								<%-- 	<img src="${pageContext.request.contextPath }/resources/soneson/img/header/sone.png" class="package_img" width="160px"> --%>
								<img src="${pageContext.request.contextPath }/resources/soneson/img/header/soneson2.jpg" class="package_img" width="160px">
							</a>
						</h1>
						<div class="loginSearch">
						
							<div class="loginText">
								<a href="projectStartForm">
									<span class="">
									<span class="">프로젝트 올리기</span>
										<span class="HeaderUserProfile_bar__1OPU2"></span>
									</span>
								</a>

								  <!-- 김주영 메세지 a 태그 추가 -->
		                        <a href="Chatting" onclick="window.open(this.href, '_blank', 'width=550, height=600'); return false;">
		                           <span class="">
		                           <span class="">메세지</span>
		                              <span class="HeaderUserProfile_bar__1OPU2"></span>
		                           </span>
		                        </a>
								
								<a href="userSetting" class="HeaderUserProfile_wrap__3FD8V">
									
<!-- 									<div class="profileImgDivHeader"> -->
										<c:choose>
										    <c:when test="${not empty sessionScope.sId and not empty sessionScope.profile }">
										    	<img loading="lazy" src="${pageContext.request.contextPath }/resources/upload/${sessionScope.profile }" id="profilePic" alt="유저 프로필 사진" class="HeaderUserProfile_img__fxGyI" onerror="profileDefault(this)">
	<!--									    	<img loading="lazy" src="${pageContext.request.contextPath }/resources/upload/${sessionScope.profile }" width="40" height="40" alt="유저 프로필 사진" class="HeaderUserProfile_img__fxGyI"> -->
	<!-- 									    	<img loading="lazy" src="https://phinf.pstatic.net/contact/profile/blog/58/80/bom_bomi.jpg?type=s160" width="30" height="30" alt="유저 프로필 사진" class="HeaderUserProfile_img__fxGyI"> -->
										    </c:when>
										    <c:otherwise>
										        <img loading="lazy" src="${pageContext.request.contextPath }/resources/soneson/img/header/son33.png" width="30" height="30" alt="유저 프로필 사진" class="HeaderUserProfile_img__fxGyI">
										    </c:otherwise>
										</c:choose>
<!-- 									</div> -->
									
									
									
<!-- 									<img loading="lazy" src="https://phinf.pstatic.net/contact/profile/blog/58/80/bom_bomi.jpg?type=s160" width="30" height="30" alt="유저 프로필 사진" class="HeaderUserProfile_img__fxGyI"> -->
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
										 <div class="hd_dropdown">
											<button class="hd_dropbtn"> 
												${picture }
												<span class="hd_dropbtn_icon">${sessionScope.sId }</span>
											</button>
											<div class="hd_dropdown-content">
												<c:if test="${sessionScope.sId eq 'admin' }">
													<a href="admin">관리자페이지</a>
												</c:if>
												<a href="user?id=${sessionScope.sId }">프로필</a>
												<a href="fundingList">후원현황</a>
												<a href="oneToOneQna">1:1 문의</a>
												<a href="userSelectOTO">문의내역</a>
												<a href="userProjectsCreated">내가 만든 <br> 프로젝트</a>
												<a href="userSetting">설정</a>
												<a href="javascript:logout()">로그아웃</a>
											</div>
										</div>
									</c:otherwise>
								</c:choose>
							</div>
							
							<div class="style__SearchInputWrapper-zxsodr-15 hbYMFx">
								<form id="searchForm" action="searchList" method="post">
							
									<input placeholder="검색어를 입력해주세요." class="style__SearchInput-zxsodr-16 jPMsmJ" name="searchKeyword" id="searchKeyword" value="${param.searchKeyword }">
									<div class="style__SearchButton-zxsodr-17 bolWec" onclick="submitForm()">
										<svg class="style__SearchIcon-zxsodr-34 dtngnQ" width="48" height="48" viewBox="0 0 48 48" fill="none" xmlns="http://www.w3.org/2000/svg">
											<path fill-rule="evenodd" clip-rule="evenodd" d="M29.9979 32.9819C27.3165 34.9694 23.9582 36.0788 20.3642 35.9089C12.0892 35.5176 5.69811 28.4922 6.08938 20.2171C6.48064 11.9421 13.5061 5.55107 21.7811 5.94234C30.0561 6.33361 36.4472 13.359 36.0559 21.6341C35.889 25.1636 34.5152 28.3505 32.3522 30.8144L39.4908 38.6856L37.1205 40.8353L29.9979 32.9819ZM32.6597 21.4735C32.3571 27.8728 26.9241 32.8152 20.5248 32.5127C14.1254 32.2101 9.183 26.7771 9.48558 20.3777C9.78816 13.9784 15.2212 9.03597 21.6205 9.33855C28.0199 9.64113 32.9623 15.0741 32.6597 21.4735Z" fill="black">
											</path>
										</svg>
									</div>
									
								</form>
							</div>
						
						</div>

							
						<div class="menuSearch">
							<div role="menubar" class="HeaderGnb_menu__1fvV3">
								<svg class="style__MenuIcon-sc-76u73h-29 goKAXE" width="25" height="25" viewBox="0 0 48 48" fill="none" xmlns="http://www.w3.org/2000/svg">
									<rect x="9" y="11" width="30" height="4" fill="#1C1C1C"></rect>
									<rect x="9" y="22" width="30" height="4" fill="#1C1C1C"></rect>
									<rect x="9" y="33" width="30" height="4" fill="#1C1C1C"></rect>
								</svg>
								<a href="javascript:void(0);" role="menuitem" class="HeaderGnb_item__wcfir category" aria-current="false">카테고리</a>
								<a href="https://happybean.naver.com/campaign/list" role="menuitem" class="HeaderGnb_item__wcfir worth" aria-current="false"></a>
							</div>
						</div>
					</div>
				</div>
				
				<!-- 1122 추가 -->
				<div class="DonationTodayCategory_wrap__k2rtu">
					<ul class="DonationTodayCategory_category_list__2WAdE">
<!-- 						<li class="DonationTodayCategory_list_item__agFbi item_1" aria-current="true"> -->
<!-- 							<button type="button" class="DonationTodayCategory_button__1648s" onclick="location.href='all.cat'"> -->
<!-- 								<span class="DonationTodayCategory_text__2oRHp">전체</span> -->
<!-- 							</button> -->
<!-- 						</li> -->
<!-- 						<li class="DonationTodayCategory_list_item__agFbi item_2" aria-current="false"> -->
<!-- 							<button type="button" class="DonationTodayCategory_button__1648s" onclick="location.href='youth.cat'"> -->
<!-- 								<span class="DonationTodayCategory_text__2oRHp">아동•청소년</span> -->
<!-- 							</button> -->
<!-- 						</li> -->
<!-- 						<li class="DonationTodayCategory_list_item__agFbi item_3" aria-current="false"> -->
<!-- 							<button type="button" class="DonationTodayCategory_button__1648s" onclick="location.href='animal.cat'"> -->
<!-- 								<span class="DonationTodayCategory_text__2oRHp">동물</span> -->
<!-- 							</button> -->
<!-- 						</li> -->
<!-- 						<li class="DonationTodayCategory_list_item__agFbi item_4" aria-current="false"> -->
<!-- 							<button type="button" class="DonationTodayCategory_button__1648s" onclick="location.href='nature.cat'"> -->
<!-- 								<span class="DonationTodayCategory_text__2oRHp">환경</span> -->
<!-- 							</button> -->
<!-- 						</li> -->
<!-- 						<li class="DonationTodayCategory_list_item__agFbi item_5" aria-current="false"> -->
<!-- 							<button type="button" class="DonationTodayCategory_button__1648s" onclick="location.href='disabled.cat'"> -->
<!-- 								<span class="DonationTodayCategory_text__2oRHp">장애인</span> -->
<!-- 							</button> -->
<!-- 						</li> -->
<!-- 						<li class="DonationTodayCategory_list_item__agFbi item_6" aria-current="false"> -->
<!-- 							<button type="button" class="DonationTodayCategory_button__1648s" onclick="location.href='woman.cat'"> -->
<!-- 								<span class="DonationTodayCategory_text__2oRHp">가족•여성</span> -->
<!-- 							</button> -->
<!-- 						</li> -->
<!-- 						<li class="DonationTodayCategory_list_item__agFbi item_7" aria-current="false"> -->
<!-- 							<button type="button" class="DonationTodayCategory_button__1648s" onclick="location.href='eldery.cat'"> -->
<!-- 								<span class="DonationTodayCategory_text__2oRHp">어르신</span> -->
<!-- 							</button> -->
<!-- 						</li> -->
<!-- 						<li class="DonationTodayCategory_list_item__agFbi item_9" aria-current="false"> -->
<!-- 							<button type="button" class="DonationTodayCategory_button__1648s" onclick="location.href='etc.cat'"> -->
<!-- 								<span class="DonationTodayCategory_text__2oRHp">기타</span> -->
<!-- 							</button> -->
<!-- 						</li> -->
						<li class="catHere">
						</li>
					</ul>
				</div>
				
			</header>
	
		</div>
	</div>

<script>
	var $j = jQuery.noConflict();
	
	function submitForm() {
        $j("#searchForm").submit();
        console.log("폼 감");
    }

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
        
        
        // HeaderGnb_menu__1fvV3
        $.ajax({
		    url: 'header',
		    type: 'GET',
		    dataType: 'json',
		    success: function(response) {
		        // 서버에서 받아온 JSON 데이터
		        console.log(response);
		
		        // 필요한 리스트 추출
		        let tabList = response.tabList;
		        let categoryList = response.categoryList;
		
		        // Tab 데이터 처리
		        $j.each(tabList, function(i, e) {
		            // Tab에 대한 반복 작업 수행
		            let typeClass = "";
		            if ("/" + e.tab_Ename + ".bo" == "${servletPath}") {
		                typeClass = "coloring";
		            }
		            $j('.worth').before(
		                '<a class="HeaderGnb_item__wcfir eWDpEZ ' + typeClass + '" role="menuitem" href="' + e.tab_Ename + '.bo">' + e.tab_Kname + '</a>'
		            );
		        });
		
		        // Category 데이터 처리
		        $j.each(categoryList, function(i, e) {
		            // Category에 대한 반복 작업 수행
		            
		            let aria = "false";
		            if ("/" + e.category_Ename + ".cat" == "${servletPath}") {
		                aria = "true";
		            }
		            
		            $j('.catHere').before(
		                '<li class="DonationTodayCategory_list_item__agFbi item_' + e.idx + '" aria-current="' + aria + '">'
		                + '<button type="button" class="DonationTodayCategory_button__1648s" onclick="location.href=\'' + e.category_Ename + '.cat\'"></a>'
						+		'<span class="DonationTodayCategory_text__2oRHp">' + e.category_Kname + '</span>'
						+	'</button>'
						+ '</li>'
		            );
		        });
		    },
		    error: function(error) {
		        console.error('Ajax 요청 실패: ', error);
		    }
		});

	});
</script>

</body>
</html>