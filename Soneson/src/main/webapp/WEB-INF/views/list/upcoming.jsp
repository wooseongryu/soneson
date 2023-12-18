<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%-- <link href="${pageContext.request.contextPath }/resources/main/css/tumble/app.81892d40d14a84165880.css" rel="stylesheet"> --%>
<!--     개인 css 엄성윤 -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
<script src="${pageContext.request.contextPath }/resources/soneson/js/jquery-3.7.0.js"></script>
<%-- <script src="${pageContext.request.contextPath }/resources/soneson/js/jquery-3.3.1.min.js"></script> --%>
<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script> 

<!--     개인 css 엄성윤 -->

<link href="${pageContext.request.contextPath }/resources/main/css/happy/global.css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/resources/soneson/css/main/nogada.css" rel="stylesheet">
 
<link rel="shortcut icon" href="${pageContext.request.contextPath }/resources/soneson/img/header/son33.ico" type="image/x-icon">
<title>손에손</title>


</head>
<body>

<jsp:include page="../inc/header.jsp"></jsp:include>

<div id="react-view" class="tbb-only-ff">
	<div class="style__Container-sc-1bojtns-0 dLDRoD">
	<div class="Discover__DiscoverWrapper-sc-16itaa3-0 djIxnq tbb">
	
	<div class="Discover__FilterWrapper-a92tdn-0 hRsKsV">
		<div class="Container-gci8y7-0 Discover__FilterContainer-a92tdn-1 QBCRz bNvMNw">
			<div class="Discover__FilterLayout-a92tdn-2 boizim">
			
			
			
			
			
			
			
			
			</div>
		</div>
	</div>
	
	<div class="Container-gci8y7-0 InfinityList__InfinityContainer-sc-19jay7c-0 cXaiVs dykamL">
	<div class="InfinityList__ResultWrapper-sc-19jay7c-1 ffcngd">
	<div class="InfinityList__ResultCounter-sc-19jay7c-2 dsEGnR">
	<span id="projectCount">${projectCount}</span>개의 프로젝트가 있습니다.</div>
	
	
	
	<div class="InfinityList__ListWrapper-sc-19jay7c-3 fZWVhg tbb-if-list-wrapper">
	
	<c:forEach var="project" items="${projectList }">
		<div class="InfinityList__ProjectCardWrapper-sc-19jay7c-4 jfWeNA listCard">
			<div></div>
			<div class="ProjectCard__Wrapper-opxl0a-13 klQtEn project-card">
				<div></div>
				<div class="ProjectCard__Card-opxl0a-7 dPhtaB link-wrapper">
					<div class="ProjectCard__StyledImageBox-opxl0a-2 dNCkN">
						<div class="image-wrapper">
							<a target="_self" href="projectDetail?project_code=${project.project_code }">
								<c:choose>
								    <c:when test="${fn:contains(project.img_main, 'https')}">
								        <img src="${project.img_main}" alt="프로젝트 커버 이미지" style="width:100%; height:100%">
								    </c:when>
								    <c:otherwise>
								        <img src="${pageContext.request.contextPath }/resources/upload/${project.img_main }" alt="프로젝트 커버 이미지 DB" style="width:100%; height:100%">
								    </c:otherwise>
								</c:choose>
							</a>
							<div class="LikeButton__Wrapper-whittq-0 kiaOkh ProjectCard__StyledLikeButton-opxl0a-8 hfSMxY">
								<button type="button" class="LikeButton__LikedBtn-whittq-1 gylNpn">
									<span>좋아요</span>
								</button>
							</div>
						</div>
					</div>
					<div class="ProjectCard__StyledInfoBox-opxl0a-3 kfeTrp">
						<dl>
							<dd class="project-sub-info">
								<span>
									<a href="/discover?tab=category&amp;category=board-games">${project.category }</a>
								</span>
<!-- 								1129 추가 -->
								<span class="barBefore">
									<a href="/u/delight">${project.creator }</a>
								</span>
							</dd>
							<dt>
								<a target="_self" href="projectDetail?project_code=${project.project_code }">${project.title }</a>
							</dt>
							<dd class="project-desc">${project.subtitle }</dd>
						</dl>
						
						<div class="ProjectCard__StyledPrelaunchedInfo-opxl0a-0 hQetpI">
<!-- 							<p>201명 알림신청 중</p> -->
							<div class="LikeButton__Wrapper-whittq-0 jcXdKY ProjectCard__StyledPrelaunedLiked-opxl0a-4 oFogy">
								<button class="CardPrelaunchButton__WrapperButton-sc-1lkgvs7-0 fAYvWN">
									<div name="notification-line" class="Icon__SVGICON-sc-1nac45c-0 hOKVVV CardPrelaunchButton__UnCheckedIcon-sc-1lkgvs7-2 jSelzS">
										<svg viewBox="0 0 12 15" xmlns="http://www.w3.org/2000/svg">
											<path fill-rule="evenodd" clip-rule="evenodd" d="M4.85203 0.9375C4.85203 0.833947 4.93598 0.75 5.03953 0.75H6.91453C7.01808 0.75 7.10203 0.833947 7.10203 0.9375V1.24582C9.46092 1.76082 11.227 3.86166 11.227 6.375V9.14062L11.5778 12.1659C11.5907 12.2773 11.5036 12.375 11.3915 12.375H0.562525C0.450415 12.375 0.36336 12.2773 0.376272 12.1659L0.727029 9.14062V6.375C0.727029 3.86166 2.49314 1.76082 4.85203 1.24582V0.9375ZM1.92703 9.20996L1.6992 11.175H10.2549L10.027 9.20996V6.375C10.027 4.13825 8.21378 2.325 5.97703 2.325C3.74028 2.325 1.92703 4.13825 1.92703 6.375V9.20996Z">
											</path>
											<path d="M7.85203 13.125H4.47703C4.47703 13.7463 4.98071 14.4375 5.60203 14.4375H6.72703C7.34835 14.4375 7.85203 13.7463 7.85203 13.125Z">
											</path>
										</svg>
									</div>
									<span>알림신청</span>
								</button>
								</div>
							</div>
					
					</div>
				</div>
			</div>
		</div>
	</c:forEach>
	
	
	
	
	
	
	
	
	
	
	
	</div>
	<span style="font-size: 0px;">
	</span>
	</div>
	</div>
	</div>


</div>



<!-- <div class="common-Layer tbb"><div class="Layer__LayerWrapper-sc-19y4mvy-0 kUAEdo"><div class="FilterUIModal__ModalContainer-sc-95h3ir-0 faghXt"><div class="FilterUIModal__ModalWraper-sc-95h3ir-1 kEGcVu"><header class="FilterUIModal__Header-sc-95h3ir-2 fouCi modal-header"><div class="FilterUIModal__HeaderWrapper-sc-95h3ir-3 fpLQRU"><button class="FilterUIModal__HeaderNavButton-sc-95h3ir-4 cZOMhL"><i class="FilterUIModal__NestedIcon-sc-95h3ir-5 dDiFKg _1QY7TzdLHKX3-BKPDNNYKF _1XlDYEGI6NQt_YZkSA5u6N _36JoJH6uhmIKdE1bWDYUlM"></i></button>달성률</div></header><div class="FilterUIModal__ModalContent-sc-95h3ir-6 cnzAHQ"><div class="FilterUIPresetWithRange__FilterPresetWithRange-sc-187gsyo-0 hxceuH"><div class="FilterComboList__ComboListWrapper-sc-1dy5cz7-0 kTJhRo FilterUIPresetWithRange__FilterComboListWrapper-sc-187gsyo-1 jKGUjM"><div class="FilterComboList__SelectItem-sc-1dy5cz7-1 cuuQUM">전체보기</div><div class="FilterComboList__SelectItem-sc-1dy5cz7-1 cJCVrl">75% 이하</div><div class="FilterComboList__SelectItem-sc-1dy5cz7-1 cJCVrl">75% ~ 100%</div><div class="FilterComboList__SelectItem-sc-1dy5cz7-1 cJCVrl">100% 이상</div></div><div class="FilterUIPresetWithRange__FilterUIRangeWrapper-sc-187gsyo-2 bpkXxy"><div class="FilterUIPresetWithRange__Title-sc-187gsyo-5 exgiXp">직접 입력</div><div class="FilterUIPresetWithRange__RangeWrapper-sc-187gsyo-3 liLMij"><span class="FilterUIInput__InputWrapper-sc-1g1rwo7-0 hoDSPq" style="margin-right: 7px; flex: 1 1 0%;"><input type="text" pattern="[0-9]*" min="0" max="9999" placeholder="" maxlength="5" class="FilterUIInput__InputComponent-sc-1g1rwo7-1 fHjjDc" value=""><span class="FilterUIInput__UnitComponent-sc-1g1rwo7-2 fMQjmL">%</span></span>-<span class="FilterUIInput__InputWrapper-sc-1g1rwo7-0 hoDSPq" style="margin-left: 7px; flex: 1 1 0%;"><input type="text" pattern="[0-9]*" min="0" max="9999" placeholder="" maxlength="5" class="FilterUIInput__InputComponent-sc-1g1rwo7-1 fHjjDc" value=""><span class="FilterUIInput__UnitComponent-sc-1g1rwo7-2 fMQjmL">%</span></span></div><button disabled="" class="FilterUIPresetWithRange__FilterUIRangeConfirmButton-sc-187gsyo-4 fHumWM"><span>입력값 적용</span></button></div></div></div></div></div></div></div> -->

<div class="common-Layer tbb">
	<div class="Layer__LayerWrapper-sc-19y4mvy-0 kUAEdo">
		<div class="FilterUIModal__ModalContainer-sc-95h3ir-0 faghXt">
			<div class="FilterUIModal__ModalWraper-sc-95h3ir-1 kEGcVu">
				<header class="FilterUIModal__Header-sc-95h3ir-2 fouCi modal-header">
					<div class="FilterUIModal__HeaderWrapper-sc-95h3ir-3 fpLQRU">
						<button class="FilterUIModal__HeaderNavButton-sc-95h3ir-4 cZOMhL">
							<i class="FilterUIModal__NestedIcon-sc-95h3ir-5 dDiFKg _1QY7TzdLHKX3-BKPDNNYKF _1XlDYEGI6NQt_YZkSA5u6N _36JoJH6uhmIKdE1bWDYUlM">
							</i>
						</button>
						달성률
					</div>
				</header>
				<div class="FilterUIModal__ModalContent-sc-95h3ir-6 cnzAHQ">
					<div class="FilterUIPresetWithRange__FilterPresetWithRange-sc-187gsyo-0 hxceuH">
						<div class="FilterComboList__ComboListWrapper-sc-1dy5cz7-0 kTJhRo FilterUIPresetWithRange__FilterComboListWrapper-sc-187gsyo-1 jKGUjM grChoice">
							<div class="FilterComboList__SelectItem-sc-1dy5cz7-1 cuuQUM grAll">전체보기</div>
							<div class="FilterComboList__SelectItem-sc-1dy5cz7-1 cJCVrl grUnder75">75% 이하</div>
							<div class="FilterComboList__SelectItem-sc-1dy5cz7-1 cJCVrl gr75to100">75% ~ 100%</div>
							<div class="FilterComboList__SelectItem-sc-1dy5cz7-1 cJCVrl grOver100">100% 이상</div>
						</div>
						<div class="FilterUIPresetWithRange__FilterUIRangeWrapper-sc-187gsyo-2 bpkXxy">
							<div class="FilterUIPresetWithRange__Title-sc-187gsyo-5 exgiXp">직접 입력</div>
							<div class="FilterUIPresetWithRange__RangeWrapper-sc-187gsyo-3 liLMij">
								<span class="FilterUIInput__InputWrapper-sc-1g1rwo7-0 hoDSPq" style="margin-right: 7px; flex: 1 1 0%;">
									<input id="start" type="number" pattern="[0-9]*" min="0" max="9999" placeholder="" maxlength="5" class="FilterUIInput__InputComponent-sc-1g1rwo7-1 fHjjDc" value="">
<!-- 									<input type="text" pattern="[0-9]*" min="0" max="9999" placeholder="" maxlength="5" class="FilterUIInput__InputComponent-sc-1g1rwo7-1 fHjjDc" value=""> -->
									<span class="FilterUIInput__UnitComponent-sc-1g1rwo7-2 fMQjmL">%</span>
								</span>
								-
								<span class="FilterUIInput__InputWrapper-sc-1g1rwo7-0 hoDSPq" style="margin-left: 7px; flex: 1 1 0%;">
									<input id="end" type="text" pattern="[0-9]*" min="0" max="9999" placeholder="" maxlength="5" class="FilterUIInput__InputComponent-sc-1g1rwo7-1 fHjjDc" value="">
									<span class="FilterUIInput__UnitComponent-sc-1g1rwo7-2 fMQjmL">%</span>
								</span>
							</div>
							<button id="btnInputScope" class="FilterUIPresetWithRange__FilterUIRangeConfirmButton-sc-187gsyo-4 fHumWM">
								<span>입력값 적용</span>
							</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>



</div>
<!-- 1201 일단 주석 -->
    
  
<div id="ch-plugin" class="notranslate">
	<div id="ch-plugin-entry">
		<div style="display: block !important;">
		</div>
	</div>
	<div id="ch-plugin-script" style="display:none;">
		<iframe id="ch-plugin-script-iframe" title="Channel chat" style="position:relative!important;height:100%!important;width:100%!important;border:none!important;">
		</iframe>
	</div>
	<!-- <style data-styled="active" data-styled-version="5.3.9"> -->
	<!-- </style> -->
</div>
<div id="criteo-tags-div" style="display: none;"></div>

<jsp:include page="../inc/footer.jsp"></jsp:include>

<script src="${pageContext.request.contextPath }/resources/soneson/js/list/popular.js"></script>

<script>

//$(".grChoice > div").click(function() {
// $(".grChoice > div").click(function() {
// // 	debugger;
// 	let grChoice = $(this).text();
// 	$(".goalRateBtn .title-wrapper").text(grChoice);
// 	$(".goalRateBtn").addClass("modalOff");
// 	$(".goalRateBtn").removeClass("modalOn");
// 	$(".faghXt").hide();
// });



    

</script>

</body>
</html>