<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
				<div class="Discover__FilterOptions-a92tdn-3 gIFvgV">
				
					<div class="wrap">
						<span class="Button__ButtonWrapper-sc-10w4uz1-1 kgdDuE">
<!-- 							<button class="Button__StyledButton-sc-10w4uz1-2 kUUqmZ goalRateBtn"> -->
							<button class="Button__StyledButton-sc-10w4uz1-2 kUUqmZ goalRateBtn modalOff">
								<span class="title-wrapper">달성률</span>
								<span class="Button__ActionIcon-sc-10w4uz1-5 jdZYPW icon-down">
									<div name="arrow1-down" class="Icon__SVGICON-sc-1nac45c-0 hOKVVV Button__StyledSVGIcon-sc-10w4uz1-0 jZDukg">
										<svg viewBox="0 0 48 48">
											<path fill-rule="evenodd" clip-rule="evenodd" d="M45.4003 15.1217L23.9125 36L2.5247 15.1217C1.8251 14.4225 1.8251 13.2237 2.5247 12.5245C3.2243 11.8252 4.42362 11.8252 5.22317 12.5245L23.9125 30.8054L42.7019 12.5245C43.4015 11.8252 44.6008 11.8252 45.4003 12.5245C45.8001 12.8241 46 13.3236 46 13.8231C45.9001 14.3226 45.7002 14.8221 45.4003 15.1217Z">
											</path>
										</svg>
									</div>
								</span>
								<span class="Button__ActionIcon-sc-10w4uz1-5 jdZYPW icon-up">
									<div name="arrow1-up" class="Icon__SVGICON-sc-1nac45c-0 hOKVVV Button__StyledSVGIcon-sc-10w4uz1-0 jZDukg">
										<svg viewBox="0 0 48 48">
											<path fill-rule="evenodd" clip-rule="evenodd" d="M46 34.1769C46 34.6764 45.8001 35.1759 45.4003 35.4755C44.7007 36.1748 43.5014 36.1748 42.7019 35.4755L24.0125 17.1946L5.22317 35.4755C4.52357 36.1748 3.32425 36.1748 2.5247 35.4755C1.8251 34.7763 1.8251 33.5765 2.5247 32.8783L24.0125 12L45.5003 32.8783C45.8001 33.1779 46 33.6774 46 34.1769Z">
											</path>
										</svg>
									</div>
								</span>
							</button>
						</span>
						<span class="Button__ButtonWrapper-sc-10w4uz1-1 kgdDuE">
							<button class="Button__StyledButton-sc-10w4uz1-2 ieWwZH">
								<span class="title-wrapper">에디터 추천</span>
								<span class="Button__ActionIcon-sc-10w4uz1-5 jdZYPW icon-down">
									<div name="arrow1-down" class="Icon__SVGICON-sc-1nac45c-0 hOKVVV Button__StyledSVGIcon-sc-10w4uz1-0 jZDukg">
										<svg viewBox="0 0 48 48">
											<path fill-rule="evenodd" clip-rule="evenodd" d="M45.4003 15.1217L23.9125 36L2.5247 15.1217C1.8251 14.4225 1.8251 13.2237 2.5247 12.5245C3.2243 11.8252 4.42362 11.8252 5.22317 12.5245L23.9125 30.8054L42.7019 12.5245C43.4015 11.8252 44.6008 11.8252 45.4003 12.5245C45.8001 12.8241 46 13.3236 46 13.8231C45.9001 14.3226 45.7002 14.8221 45.4003 15.1217Z">
											</path>
										</svg>
									</div>
								</span>
								<span class="Button__ActionIcon-sc-10w4uz1-5 jdZYPW icon-up">
									<div name="arrow1-up" class="Icon__SVGICON-sc-1nac45c-0 hOKVVV Button__StyledSVGIcon-sc-10w4uz1-0 jZDukg">
										<svg viewBox="0 0 48 48">
											<path fill-rule="evenodd" clip-rule="evenodd" d="M46 34.1769C46 34.6764 45.8001 35.1759 45.4003 35.4755C44.7007 36.1748 43.5014 36.1748 42.7019 35.4755L24.0125 17.1946L5.22317 35.4755C4.52357 36.1748 3.32425 36.1748 2.5247 35.4755C1.8251 34.7763 1.8251 33.5765 2.5247 32.8783L24.0125 12L45.5003 32.8783C45.8001 33.1779 46 33.6774 46 34.1769Z">
											</path>
										</svg>
									</div>
								</span>
							</button>
						</span>
					</div>
				
				</div>
			</div>
		</div>
	</div>
	
	<div class="Container-gci8y7-0 InfinityList__InfinityContainer-sc-19jay7c-0 cXaiVs dykamL">
	<div class="InfinityList__ResultWrapper-sc-19jay7c-1 ffcngd">
	<div class="InfinityList__ResultCounter-sc-19jay7c-2 dsEGnR">
	<span>${projectCount}</span>개의 프로젝트가 있습니다.</div>
	
	
	
	<div class="InfinityList__ListWrapper-sc-19jay7c-3 fZWVhg tbb-if-list-wrapper">
	
	<c:forEach var="project" items="${projectList }">
		<div class="InfinityList__ProjectCardWrapper-sc-19jay7c-4 jfWeNA">
			<div></div>
			<div class="ProjectCard__Wrapper-opxl0a-13 klQtEn project-card">
				<div></div>
				<div class="ProjectCard__Card-opxl0a-7 dPhtaB link-wrapper">
					<div class="ProjectCard__StyledImageBox-opxl0a-2 dNCkN">
						<div class="image-wrapper">
							<a target="_self" href="projectDetail?project_code=${project.project_code }">
								<img src="${project.img_main }" style="width:100%; height:100%">
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
						<div class="ProjectCard__FundingStatus-opxl0a-10 hjCxPX">
							<div>
								<span class="ProjectCard__StyledFundingProgressState-opxl0a-12 ivYcvj">${project.goal_rate }%</span>
								<span class="funding-amount">
									<em>${project.now_amount }</em>원
<!-- 									<em>6,584,799</em>원 -->
								</span>
							</div>
<!-- 							<span class="rest-day">20일 남음</span> -->
<!-- 							<span class="rest-day">20일 남음</span> -->
							<strong class="roboto dday rest-day" data-end_date="${project.end_date}" data-goal_rate="${project.goal_rate}"></strong>
						</div>
						<div class="ProjectCard__PercentageBar-opxl0a-11 lcwTLC">
							<div class="ProjectCard__PercentageBar-opxl0a-11 goalRate" data-goal_rate="${project.goal_rate}"></div>
						</div>
<%-- 						<div class="ProjectCard__PercentageBar-opxl0a-11 goalRate" data-goal_rate="${project.goal_rate}"></div> --%>
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
									<input type="number" pattern="[0-9]*" min="0" max="9999" placeholder="" maxlength="5" class="FilterUIInput__InputComponent-sc-1g1rwo7-1 fHjjDc" value="">
<!-- 									<input type="text" pattern="[0-9]*" min="0" max="9999" placeholder="" maxlength="5" class="FilterUIInput__InputComponent-sc-1g1rwo7-1 fHjjDc" value=""> -->
									<span class="FilterUIInput__UnitComponent-sc-1g1rwo7-2 fMQjmL">%</span>
								</span>
								-
								<span class="FilterUIInput__InputWrapper-sc-1g1rwo7-0 hoDSPq" style="margin-left: 7px; flex: 1 1 0%;">
									<input type="text" pattern="[0-9]*" min="0" max="9999" placeholder="" maxlength="5" class="FilterUIInput__InputComponent-sc-1g1rwo7-1 fHjjDc" value="">
									<span class="FilterUIInput__UnitComponent-sc-1g1rwo7-2 fMQjmL">%</span>
								</span>
							</div>
							<button disabled="" class="FilterUIPresetWithRange__FilterUIRangeConfirmButton-sc-187gsyo-4 fHumWM">
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