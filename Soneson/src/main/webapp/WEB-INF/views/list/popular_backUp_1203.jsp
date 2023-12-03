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
	<span>1,039</span>개의 프로젝트가 있습니다.</div>
	
	
	
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
	
	
	
	
	
	
	
	
	
	
	
	
	
<!-- 	<div class="InfinityList__ProjectCardWrapper-sc-19jay7c-4 jfWeNA"> -->
<!-- 	<div> -->
<!-- 	</div> -->
<!-- 	<div class="ProjectCard__Wrapper-opxl0a-13 klQtEn project-card"> -->
<!-- 	<div> -->
<!-- 	</div> -->
<!-- 	<div class="ProjectCard__Card-opxl0a-7 dPhtaB link-wrapper"> -->
<!-- 	<div class="ProjectCard__StyledImageBox-opxl0a-2 dXSYgm"> -->
<!-- 	<div class="image-wrapper"> -->
<!-- 	<a target="_self" href="/effect_3d?ref=GNB%2F%EC%9D%B8%EA%B8%B0"> -->
<!-- 	</a> -->
<!-- 	<div class="LikeButton__Wrapper-whittq-0 kiaOkh ProjectCard__StyledLikeButton-opxl0a-8 hfSMxY"> -->
<!-- 	<button type="button" class="LikeButton__LikedBtn-whittq-1 gylNpn"> -->
<!-- 	<span>좋아요</span> -->
<!-- 	</button> -->
<!-- 	</div> -->
<!-- 	</div> -->
<!-- 	</div> -->
<!-- 	<div class="ProjectCard__StyledInfoBox-opxl0a-3 kfeTrp"> -->
<!-- 	<dl> -->
<!-- 	<dd class="project-sub-info"> -->
<!-- 	<span> -->
<!-- 	<a href="/discover?tab=category&amp;category=comic-resources">만화 · 웹툰 리소스</a> -->
<!-- 	</span> -->
<!-- 	<span> -->
<!-- 	<a href="/u/jjh">장영</a> -->
<!-- 	</span> -->
<!-- 	</dd> -->
<!-- 	<dt> -->
<!-- 	<a target="_self" href="/effect_3d?ref=GNB%2F%EC%9D%B8%EA%B8%B0">SSS급 웹툰 액션을! [3D 이펙트&amp;Brush]</a> -->
<!-- 	</dt> -->
<!-- 	<dd class="project-desc">이펙트 효과로 작품을 화려하고 생동감 있게 연출할 수 있습니다.</dd> -->
<!-- 	</dl> -->
<!-- 	<div class="ProjectCard__FundingStatus-opxl0a-10 hjCxPX"> -->
<!-- 	<div> -->
<!-- 	<span class="ProjectCard__StyledFundingProgressState-opxl0a-12 ivYcvj">451%</span> -->
<!-- 	<span class="funding-amount"> -->
<!-- 	<em>4,512,000</em>원</span> -->
<!-- 	</div> -->
<!-- 	<span class="rest-day">30일 남음</span> -->
<!-- 	</div> -->
<!-- 	<div class="ProjectCard__PercentageBar-opxl0a-11 jJeMPg"> -->
<!-- 	</div> -->
<!-- 	</div> -->
<!-- 	</div> -->
<!-- 	</div> -->
<!-- 	</div> -->
<!-- 	<div class="InfinityList__ProjectCardWrapper-sc-19jay7c-4 jfWeNA"> -->
<!-- 	<div> -->
<!-- 	</div> -->
<!-- 	<div class="ProjectCard__Wrapper-opxl0a-13 klQtEn project-card"> -->
<!-- 	<div> -->
<!-- 	</div> -->
<!-- 	<div class="ProjectCard__Card-opxl0a-7 dPhtaB link-wrapper"> -->
<!-- 	<div class="ProjectCard__StyledImageBox-opxl0a-2 esrSTz"> -->
<!-- 	<div class="image-wrapper"> -->
<!-- 	<a target="_self" href="/akongkorea?ref=GNB%2F%EC%9D%B8%EA%B8%B0"> -->
<!-- 	</a> -->
<!-- 	<div class="LikeButton__Wrapper-whittq-0 kiaOkh ProjectCard__StyledLikeButton-opxl0a-8 hfSMxY"> -->
<!-- 	<button type="button" class="LikeButton__LikedBtn-whittq-1 gylNpn isLiked"> -->
<!-- 	<span>좋아요</span> -->
<!-- 	</button> -->
<!-- 	</div> -->
<!-- 	</div> -->
<!-- 	</div> -->
<!-- 	<div class="ProjectCard__StyledInfoBox-opxl0a-3 kfeTrp"> -->
<!-- 	<dl> -->
<!-- 	<dd class="project-sub-info"> -->
<!-- 	<span> -->
<!-- 	<a href="/discover?tab=category&amp;category=sub-character-and-goods">캐릭터 · 굿즈</a> -->
<!-- 	</span> -->
<!-- 	<span> -->
<!-- 	<a href="/u/deuoumovfocplhar">아콩코리아</a> -->
<!-- 	</span> -->
<!-- 	</dd> -->
<!-- 	<dt> -->
<!-- 	<a target="_self" href="/akongkorea?ref=GNB%2F%EC%9D%B8%EA%B8%B0">[먼작귀 무드등] 엉덩이, 볼따구 톡 쳐서 키세요. </a> -->
<!-- 	</dt> -->
<!-- 	<dd class="project-desc">귀여운 끝판왕 먼작귀 친구들이 국내 최초 무드등으로 탄생. </dd> -->
<!-- 	</dl> -->
<!-- 	<div class="ProjectCard__FundingStatus-opxl0a-10 hjCxPX"> -->
<!-- 	<div> -->
<!-- 	<span class="ProjectCard__StyledFundingProgressState-opxl0a-12 ivYcvj">288%</span> -->
<!-- 	<span class="funding-amount"> -->
<!-- 	<em>28,869,800</em>원</span> -->
<!-- 	</div> -->
<!-- 	<span class="rest-day">24일 남음</span> -->
<!-- 	</div> -->
<!-- 	<div class="ProjectCard__PercentageBar-opxl0a-11 cVFDoW"> -->
<!-- 	</div> -->
<!-- 	</div> -->
<!-- 	</div> -->
<!-- 	</div> -->
<!-- 	</div> -->
<!-- 	<div class="InfinityList__ProjectCardWrapper-sc-19jay7c-4 jfWeNA"> -->
<!-- 	<div> -->
<!-- 	</div> -->
<!-- 	<div class="ProjectCard__Wrapper-opxl0a-13 klQtEn project-card"> -->
<!-- 	<div> -->
<!-- 	</div> -->
<!-- 	<div class="ProjectCard__Card-opxl0a-7 dPhtaB link-wrapper"> -->
<!-- 	<div class="ProjectCard__StyledImageBox-opxl0a-2 hIQvlT"> -->
<!-- 	<div class="image-wrapper"> -->
<!-- 	<a target="_self" href="/dj_road?ref=GNB%2F%EC%9D%B8%EA%B8%B0"> -->
<!-- 	</a> -->
<!-- 	<div class="LikeButton__Wrapper-whittq-0 kiaOkh ProjectCard__StyledLikeButton-opxl0a-8 hfSMxY"> -->
<!-- 	<button type="button" class="LikeButton__LikedBtn-whittq-1 gylNpn"> -->
<!-- 	<span>좋아요</span> -->
<!-- 	</button> -->
<!-- 	</div> -->
<!-- 	</div> -->
<!-- 	</div> -->
<!-- 	<div class="ProjectCard__StyledInfoBox-opxl0a-3 kfeTrp"> -->
<!-- 	<dl> -->
<!-- 	<dd class="project-sub-info"> -->
<!-- 	<span> -->
<!-- 	<a href="/discover?tab=category&amp;category=documentary">다큐멘터리</a> -->
<!-- 	</span> -->
<!-- 	<span> -->
<!-- 	<a href="/u/bxxcdlieahbjyeyu">&lt;길위에 김대중&gt; 상영위원회</a> -->
<!-- 	</span> -->
<!-- 	</dd> -->
<!-- 	<dt> -->
<!-- 	<a target="_self" href="/dj_road?ref=GNB%2F%EC%9D%B8%EA%B8%B0">김대중 대통령 탄생 100주년 기념영화 &lt;길위에 김대중&gt;</a> -->
<!-- 	</dt> -->
<!-- 	<dd class="project-desc">영화 &lt;길위에 김대중&gt;이 더 많은 관객과 만날 수 있도록 힘을 모아주세요!</dd> -->
<!-- 	</dl> -->
<!-- 	<div class="ProjectCard__FundingStatus-opxl0a-10 hjCxPX"> -->
<!-- 	<div> -->
<!-- 	<span class="ProjectCard__StyledFundingProgressState-opxl0a-12 ivYcvj">612%</span> -->
<!-- 	<span class="funding-amount"> -->
<!-- 	<em>306,271,279</em>원</span> -->
<!-- 	</div> -->
<!-- 	<span class="rest-day">6일 남음</span> -->
<!-- 	</div> -->
<!-- 	<div class="ProjectCard__PercentageBar-opxl0a-11 botpVJ"> -->
<!-- 	</div> -->
<!-- 	</div> -->
<!-- 	</div> -->
<!-- 	</div> -->
<!-- 	</div> -->
<!-- 	<div class="InfinityList__ProjectCardWrapper-sc-19jay7c-4 jfWeNA"> -->
<!-- 	<div> -->
<!-- 	</div> -->
<!-- 	<div class="ProjectCard__Wrapper-opxl0a-13 klQtEn project-card"> -->
<!-- 	<div> -->
<!-- 	</div> -->
<!-- 	<div class="ProjectCard__Card-opxl0a-7 dPhtaB link-wrapper"> -->
<!-- 	<div class="ProjectCard__StyledImageBox-opxl0a-2 qDpZh"> -->
<!-- 	<div class="image-wrapper"> -->
<!-- 	<a target="_self" href="projectDetail"> -->
<!-- 	<!-- <a target="_self" href="/excel_escape2?ref=GNB%2F%EC%9D%B8%EA%B8%B0"> -->
<!-- 	</a> -->
<!-- 	<div class="LikeButton__Wrapper-whittq-0 kiaOkh ProjectCard__StyledLikeButton-opxl0a-8 hfSMxY"> -->
<!-- 	<button type="button" class="LikeButton__LikedBtn-whittq-1 gylNpn"> -->
<!-- 	<span>좋아요</span> -->
<!-- 	</button> -->
<!-- 	</div> -->
<!-- 	</div> -->
<!-- 	</div> -->
<!-- 	<div class="ProjectCard__StyledInfoBox-opxl0a-3 kfeTrp"> -->
<!-- 	<dl> -->
<!-- 	<dd class="project-sub-info"> -->
<!-- 	<span> -->
<!-- 	<a href="/discover?tab=category&amp;category=board-games">보드게임</a> -->
<!-- 	</span> -->
<!-- 	<span> -->
<!-- 	<a href="/u/nandynwoody">Nandy &amp; Woody</a> -->
<!-- 	</span> -->
<!-- 	</dd> -->
<!-- 	<dt> -->
<!-- 	<a target="_self" href="/excel_escape2?ref=GNB%2F%EC%9D%B8%EA%B8%B0">직장에서도 즐기는 엑셀 방탈출, 세 번째 에피소드 &lt;악몽&gt;</a> -->
<!-- 	</dt> -->
<!-- 	<dd class="project-desc">엑셀의 다양한 기능을 이용하여 제작한 누구나 손쉽게 즐길 수 있는 온라인 방탈출입니다.</dd> -->
<!-- 	</dl> -->
<!-- 	<div class="ProjectCard__FundingStatus-opxl0a-10 hjCxPX"> -->
<!-- 	<div> -->
<!-- 	<span class="ProjectCard__StyledFundingProgressState-opxl0a-12 ivYcvj">5596%</span> -->
<!-- 	<span class="funding-amount"> -->
<!-- 	<em>27,980,000</em>원</span> -->
<!-- 	</div> -->
<!-- 	<span class="rest-day">37일 남음</span> -->
<!-- 	</div> -->
<!-- 	<div class="ProjectCard__PercentageBar-opxl0a-11 bpoYmv"> -->
<!-- 	</div> -->
<!-- 	</div> -->
<!-- 	</div> -->
<!-- 	</div> -->
<!-- 	</div> -->
<!-- 	<div class="InfinityList__ProjectCardWrapper-sc-19jay7c-4 jfWeNA"> -->
<!-- 	<div> -->
<!-- 	</div> -->
<!-- 	<div class="ProjectCard__Wrapper-opxl0a-13 klQtEn project-card"> -->
<!-- 	<div> -->
<!-- 	</div> -->
<!-- 	<div class="ProjectCard__Card-opxl0a-7 dPhtaB link-wrapper"> -->
<!-- 	<div class="ProjectCard__StyledImageBox-opxl0a-2 RbYWF"> -->
<!-- 	<div class="image-wrapper"> -->
<!-- 	<a target="_self" href="/garbagetime_audio?ref=GNB%2F%EC%9D%B8%EA%B8%B0"> -->
<!-- 	</a> -->
<!-- 	<div class="LikeButton__Wrapper-whittq-0 kiaOkh ProjectCard__StyledLikeButton-opxl0a-8 hfSMxY"> -->
<!-- 	<button type="button" class="LikeButton__LikedBtn-whittq-1 gylNpn"> -->
<!-- 	<span>좋아요</span> -->
<!-- 	</button> -->
<!-- 	</div> -->
<!-- 	</div> -->
<!-- 	</div> -->
<!-- 	<div class="ProjectCard__StyledInfoBox-opxl0a-3 kfeTrp"> -->
<!-- 	<dl> -->
<!-- 	<dd class="project-sub-info"> -->
<!-- 	<span> -->
<!-- 	<a href="/discover?tab=category&amp;category=audio-drama">오디오 드라마</a> -->
<!-- 	</span> -->
<!-- 	<span> -->
<!-- 	<a href="/u/naverwebtoon">네이버웹툰</a> -->
<!-- 	</span> -->
<!-- 	</dd> -->
<!-- 	<dt> -->
<!-- 	<a target="_self" href="/garbagetime_audio?ref=GNB%2F%EC%9D%B8%EA%B8%B0">오디오웹툰으로 만나는 &lt;가비지타임&gt;</a> -->
<!-- 	</dt> -->
<!-- 	<dd class="project-desc">네이버웹툰 &lt;가비지타임&gt; 시즌 1, 2를 오디오웹툰으로 만나보세요!</dd> -->
<!-- 	</dl> -->
<!-- 	<div class="ProjectCard__FundingStatus-opxl0a-10 hjCxPX"> -->
<!-- 	<div> -->
<!-- 	<span class="ProjectCard__StyledFundingProgressState-opxl0a-12 ivYcvj">404%</span> -->
<!-- 	<span class="funding-amount"> -->
<!-- 	<em>283,046,000</em>원</span> -->
<!-- 	</div> -->
<!-- 	<span class="rest-day">26일 남음</span> -->
<!-- 	</div> -->
<!-- 	<div class="ProjectCard__PercentageBar-opxl0a-11 hKMITw"> -->
<!-- 	</div> -->
<!-- 	</div> -->
<!-- 	</div> -->
<!-- 	</div> -->
<!-- 	</div> -->
<!-- 	<div class="InfinityList__ProjectCardWrapper-sc-19jay7c-4 jfWeNA"> -->
<!-- 	<div> -->
<!-- 	</div> -->
<!-- 	<div class="ProjectCard__Wrapper-opxl0a-13 klQtEn project-card"> -->
<!-- 	<div> -->
<!-- 	</div> -->
<!-- 	<div class="ProjectCard__Card-opxl0a-7 dPhtaB link-wrapper"> -->
<!-- 	<div class="ProjectCard__StyledImageBox-opxl0a-2 iBlAR"> -->
<!-- 	<div class="image-wrapper"> -->
<!-- 	<a target="_self" href="/bathbeads?ref=GNB%2F%EC%9D%B8%EA%B8%B0"> -->
<!-- 	</a> -->
<!-- 	<div class="LikeButton__Wrapper-whittq-0 kiaOkh ProjectCard__StyledLikeButton-opxl0a-8 hfSMxY"> -->
<!-- 	<button type="button" class="LikeButton__LikedBtn-whittq-1 gylNpn"> -->
<!-- 	<span>좋아요</span> -->
<!-- 	</button> -->
<!-- 	</div> -->
<!-- 	</div> -->
<!-- 	</div> -->
<!-- 	<div class="ProjectCard__StyledInfoBox-opxl0a-3 kfeTrp"> -->
<!-- 	<dl> -->
<!-- 	<dd class="project-sub-info"> -->
<!-- 	<span> -->
<!-- 	<a href="/discover?tab=category&amp;category=perfumes">향수</a> -->
<!-- 	</span> -->
<!-- 	<span> -->
<!-- 	<a href="/u/jkjnkfshixbcjeso">몽 모망</a> -->
<!-- 	</span> -->
<!-- 	</dd> -->
<!-- 	<dt> -->
<!-- 	<a target="_self" href="/bathbeads?ref=GNB%2F%EC%9D%B8%EA%B8%B0">목욕탕 수증기, 그 따스함 속 느껴지는 나무와 샴푸 향기</a> -->
<!-- 	</dt> -->
<!-- 	<dd class="project-desc">목욕탕 수증기 향, 따스함 속 은은한 나무 냄새와 비누 거품같은 포근함을 담은 겨울 향수</dd> -->
<!-- 	</dl> -->
<!-- 	<div class="ProjectCard__FundingStatus-opxl0a-10 hjCxPX"> -->
<!-- 	<div> -->
<!-- 	<span class="ProjectCard__StyledFundingProgressState-opxl0a-12 ivYcvj">521%</span> -->
<!-- 	<span class="funding-amount"> -->
<!-- 	<em>2,607,000</em>원</span> -->
<!-- 	</div> -->
<!-- 	<span class="rest-day">13일 남음</span> -->
<!-- 	</div> -->
<!-- 	<div class="ProjectCard__PercentageBar-opxl0a-11 bAgpWS"> -->
<!-- 	</div> -->
<!-- 	</div> -->
<!-- 	</div> -->
<!-- 	</div> -->
<!-- 	</div> -->
<!-- 	<div class="InfinityList__ProjectCardWrapper-sc-19jay7c-4 jfWeNA"> -->
<!-- 	<div> -->
<!-- 	</div> -->
<!-- 	<div class="ProjectCard__Wrapper-opxl0a-13 klQtEn project-card"> -->
<!-- 	<div> -->
<!-- 	</div> -->
<!-- 	<div class="ProjectCard__Card-opxl0a-7 dPhtaB link-wrapper"> -->
<!-- 	<div class="ProjectCard__StyledImageBox-opxl0a-2 hxsZxX"> -->
<!-- 	<div class="image-wrapper"> -->
<!-- 	<a target="_self" href="/toeveryevelynineveryuniverse?ref=GNB%2F%EC%9D%B8%EA%B8%B0"> -->
<!-- 	</a> -->
<!-- 	<div class="LikeButton__Wrapper-whittq-0 kiaOkh ProjectCard__StyledLikeButton-opxl0a-8 hfSMxY"> -->
<!-- 	<button type="button" class="LikeButton__LikedBtn-whittq-1 gylNpn"> -->
<!-- 	<span>좋아요</span> -->
<!-- 	</button> -->
<!-- 	</div> -->
<!-- 	</div> -->
<!-- 	</div> -->
<!-- 	<div class="ProjectCard__StyledInfoBox-opxl0a-3 kfeTrp"> -->
<!-- 	<dl> -->
<!-- 	<dd class="project-sub-info"> -->
<!-- 	<span> -->
<!-- 	<a href="/discover?tab=category&amp;category=Essay">에세이</a> -->
<!-- 	</span> -->
<!-- 	<span> -->
<!-- 	<a href="/u/rxgcfchtqlakslfa">워터홀컴퍼니</a> -->
<!-- 	</span> -->
<!-- 	</dd> -->
<!-- 	<dt> -->
<!-- 	<a target="_self" href="/toeveryevelynineveryuniverse?ref=GNB%2F%EC%9D%B8%EA%B8%B0">에에올 마케터의 생생한 직업 스토리와 다정한 다이어리 선물</a> -->
<!-- 	</dt> -->
<!-- 	<dd class="project-desc">에세이 [세상의 모든 에블린에게] 양장판 도서와 2024년 모든 것이 담길 다정한 다이어리</dd> -->
<!-- 	</dl> -->
<!-- 	<div class="ProjectCard__FundingStatus-opxl0a-10 hjCxPX"> -->
<!-- 	<div> -->
<!-- 	<span class="ProjectCard__StyledFundingProgressState-opxl0a-12 ivYcvj">140%</span> -->
<!-- 	<span class="funding-amount"> -->
<!-- 	<em>3,521,000</em>원</span> -->
<!-- 	</div> -->
<!-- 	<span class="rest-day">23일 남음</span> -->
<!-- 	</div> -->
<!-- 	<div class="ProjectCard__PercentageBar-opxl0a-11 bpqkkx"> -->
<!-- 	</div> -->
<!-- 	</div> -->
<!-- 	</div> -->
<!-- 	</div> -->
<!-- 	</div> -->
<!-- 	<div class="InfinityList__ProjectCardWrapper-sc-19jay7c-4 jfWeNA"> -->
<!-- 	<div> -->
<!-- 	</div> -->
<!-- 	<div class="ProjectCard__Wrapper-opxl0a-13 klQtEn project-card"> -->
<!-- 	<div> -->
<!-- 	</div> -->
<!-- 	<div class="ProjectCard__Card-opxl0a-7 dPhtaB link-wrapper"> -->
<!-- 	<div class="ProjectCard__StyledImageBox-opxl0a-2 bYkzzV"> -->
<!-- 	<div class="image-wrapper"> -->
<!-- 	<a target="_self" href="/year_end_book_2023?ref=GNB%2F%EC%9D%B8%EA%B8%B0"> -->
<!-- 	</a> -->
<!-- 	<div class="LikeButton__Wrapper-whittq-0 kiaOkh ProjectCard__StyledLikeButton-opxl0a-8 hfSMxY"> -->
<!-- 	<button type="button" class="LikeButton__LikedBtn-whittq-1 gylNpn"> -->
<!-- 	<span>좋아요</span> -->
<!-- 	</button> -->
<!-- 	</div> -->
<!-- 	</div> -->
<!-- 	</div> -->
<!-- 	<div class="ProjectCard__StyledInfoBox-opxl0a-3 kfeTrp"> -->
<!-- 	<dl> -->
<!-- 	<dd class="project-sub-info"> -->
<!-- 	<span> -->
<!-- 	<a href="/discover?tab=category&amp;category=sub-design-stationery">디자인 문구</a> -->
<!-- 	</span> -->
<!-- 	<span> -->
<!-- 	<a href="/u/the_dayoff">DAY-OFF</a> -->
<!-- 	</span> -->
<!-- 	</dd> -->
<!-- 	<dt> -->
<!-- 	<a target="_self" href="/year_end_book_2023?ref=GNB%2F%EC%9D%B8%EA%B8%B0">2023년을 기록하는 100가지 질문 &lt;연말정산&gt; 9주년</a> -->
<!-- 	</dt> -->
<!-- 	<dd class="project-desc">벌써 9년째- 우리의 소중한 한 해를 기록하는 시간, &lt;연말정산&gt;이 돌아왔습니다.</dd> -->
<!-- 	</dl> -->
<!-- 	<div class="ProjectCard__FundingStatus-opxl0a-10 hjCxPX"> -->
<!-- 	<div> -->
<!-- 	<span class="ProjectCard__StyledFundingProgressState-opxl0a-12 ivYcvj">5358%</span> -->
<!-- 	<span class="funding-amount"> -->
<!-- 	<em>26,794,500</em>원</span> -->
<!-- 	</div> -->
<!-- 	<span class="rest-day">6일 남음</span> -->
<!-- 	</div> -->
<!-- 	<div class="ProjectCard__PercentageBar-opxl0a-11 ePNkdL"> -->
<!-- 	</div> -->
<!-- 	</div> -->
<!-- 	</div> -->
<!-- 	</div> -->
<!-- 	</div> -->
<!-- 	<div class="InfinityList__ProjectCardWrapper-sc-19jay7c-4 jfWeNA"> -->
<!-- 	<div> -->
<!-- 	</div> -->
<!-- 	<div class="ProjectCard__Wrapper-opxl0a-13 klQtEn project-card"> -->
<!-- 	<div> -->
<!-- 	</div> -->
<!-- 	<div class="ProjectCard__Card-opxl0a-7 dPhtaB link-wrapper"> -->
<!-- 	<div class="ProjectCard__StyledImageBox-opxl0a-2 hfKYkg"> -->
<!-- 	<div class="image-wrapper"> -->
<!-- 	<a target="_self" href="/thestrawberry?ref=GNB%2F%EC%9D%B8%EA%B8%B0"> -->
<!-- 	</a> -->
<!-- 	<div class="LikeButton__Wrapper-whittq-0 kiaOkh ProjectCard__StyledLikeButton-opxl0a-8 hfSMxY"> -->
<!-- 	<button type="button" class="LikeButton__LikedBtn-whittq-1 gylNpn"> -->
<!-- 	<span>좋아요</span> -->
<!-- 	</button> -->
<!-- 	</div> -->
<!-- 	</div> -->
<!-- 	</div> -->
<!-- 	<div class="ProjectCard__StyledInfoBox-opxl0a-3 kfeTrp"> -->
<!-- 	<dl> -->
<!-- 	<dd class="project-sub-info"> -->
<!-- 	<span> -->
<!-- 	<a href="/discover?tab=category&amp;category=perfumes">향수</a> -->
<!-- 	</span> -->
<!-- 	<span> -->
<!-- 	<a href="/u/fopxfllexxzibpjc">AOME 아오미</a> -->
<!-- 	</span> -->
<!-- 	</dd> -->
<!-- 	<dt> -->
<!-- 	<a target="_self" href="/thestrawberry?ref=GNB%2F%EC%9D%B8%EA%B8%B0">새빨간 딸기에 로즈 한방울 비누 거품에 풍덩 빠진 향기 </a> -->
<!-- 	</dt> -->
<!-- 	<dd class="project-desc">새콤달콤한 딸기와 부드러운 로즈 한방울 그리고 폭닥폭닥한 비누 거품에 빠진 향기 </dd> -->
<!-- 	</dl> -->
<!-- 	<div class="ProjectCard__FundingStatus-opxl0a-10 hjCxPX"> -->
<!-- 	<div> -->
<!-- 	<span class="ProjectCard__StyledFundingProgressState-opxl0a-12 ivYcvj">582%</span> -->
<!-- 	<span class="funding-amount"> -->
<!-- 	<em>2,911,000</em>원</span> -->
<!-- 	</div> -->
<!-- 	<span class="rest-day">14일 남음</span> -->
<!-- 	</div> -->
<!-- 	<div class="ProjectCard__PercentageBar-opxl0a-11 jJsrDb"> -->
<!-- 	</div> -->
<!-- 	</div> -->
<!-- 	</div> -->
<!-- 	</div> -->
<!-- 	</div> -->
<!-- 	<div class="InfinityList__ProjectCardWrapper-sc-19jay7c-4 jfWeNA"> -->
<!-- 	<div> -->
<!-- 	</div> -->
<!-- 	<div class="ProjectCard__Wrapper-opxl0a-13 klQtEn project-card"> -->
<!-- 	<div> -->
<!-- 	</div> -->
<!-- 	<div class="ProjectCard__Card-opxl0a-7 dPhtaB link-wrapper"> -->
<!-- 	<div class="ProjectCard__StyledImageBox-opxl0a-2 eQBtTY"> -->
<!-- 	<div class="image-wrapper"> -->
<!-- 	<a target="_self" href="/tencel11?ref=GNB%2F%EC%9D%B8%EA%B8%B0"> -->
<!-- 	</a> -->
<!-- 	<div class="LikeButton__Wrapper-whittq-0 kiaOkh ProjectCard__StyledLikeButton-opxl0a-8 hfSMxY"> -->
<!-- 	<button type="button" class="LikeButton__LikedBtn-whittq-1 gylNpn"> -->
<!-- 	<span>좋아요</span> -->
<!-- 	</button> -->
<!-- 	</div> -->
<!-- 	</div> -->
<!-- 	</div> -->
<!-- 	<div class="ProjectCard__StyledInfoBox-opxl0a-3 kfeTrp"> -->
<!-- 	<dl> -->
<!-- 	<dd class="project-sub-info"> -->
<!-- 	<span> -->
<!-- 	<a href="/discover?tab=category&amp;category=sub-apparels">의류</a> -->
<!-- 	</span> -->
<!-- 	<span> -->
<!-- 	<a href="/u/htyidbffqwxmncfi">투엘브</a> -->
<!-- 	</span> -->
<!-- 	</dd> -->
<!-- 	<dt> -->
<!-- 	<a target="_self" href="/tencel11?ref=GNB%2F%EC%9D%B8%EA%B8%B0">구김, 보풀 없이 편안함과 핏을 살린 [FW 텐셀팬츠]</a> -->
<!-- 	</dt> -->
<!-- 	<dd class="project-desc">텐셀 소재는 유칼립투스 나무 추출물로 만든 환경친화적인 소재로 많은 장점을 가지고 있어요</dd> -->
<!-- 	</dl> -->
<!-- 	<div class="ProjectCard__FundingStatus-opxl0a-10 hjCxPX"> -->
<!-- 	<div> -->
<!-- 	<span class="ProjectCard__StyledFundingProgressState-opxl0a-12 ivYcvj">1101%</span> -->
<!-- 	<span class="funding-amount"> -->
<!-- 	<em>5,508,000</em>원</span> -->
<!-- 	</div> -->
<!-- 	<span class="rest-day">12일 남음</span> -->
<!-- 	</div> -->
<!-- 	<div class="ProjectCard__PercentageBar-opxl0a-11 kSvTxp"> -->
<!-- 	</div> -->
<!-- 	</div> -->
<!-- 	</div> -->
<!-- 	</div> -->
<!-- 	</div> -->
<!-- 	<div class="InfinityList__ProjectCardWrapper-sc-19jay7c-4 jfWeNA"> -->
<!-- 	<div> -->
<!-- 	</div> -->
<!-- 	<div class="_13KHfN73YmQgsYHxXvuh_J _2nZxogWCtwxgZvigECqiKs _18TDror949wcy2NyVIqpHo _8CIGG4a-tNAlxzgatnlol _37OWI7FtjHKOcaf5goooHO"> -->
<!-- 	<div class="_13KHfN73YmQgsYHxXvuh_J _2H5AJMZT-xLtuIvR5jP8rd _2aquK6B3D0GYX7zQT4_IR7 _33_rawFrgU6N_7T7Jz-5uD"> -->
<!-- 	<div class="_11JdRqQB_ZxcItRaRXRej4"> -->
<!-- 	</div> -->
<!-- 	</div> -->
<!-- 	<div class="_3ZgG-OSv0XE3y-h3oPaDsl w_izngaIz7w5kvCgk9bzg  PB6Nw1czBcakfwbNUGH_B"> -->
<!-- 	<div class="_2CGbzXSsmqtfV85v7mNacn _1DpKbfVCE7eAlLK1ltA2Gd"> -->
<!-- 	</div> -->
<!-- 	<div class="_2CGbzXSsmqtfV85v7mNacn _32q97zZjFnMsEhnBEo58g_"> -->
<!-- 	</div> -->
<!-- 	<div class="_2CGbzXSsmqtfV85v7mNacn dz_rOhpitoYAkG3IPWOqo"> -->
<!-- 	</div> -->
<!-- 	</div> -->
<!-- 	<div class="_2CGbzXSsmqtfV85v7mNacn _2F0ho1HwFi6GIllxA14nIP"> -->
<!-- 	</div> -->
<!-- 	<div class="_3ZgG-OSv0XE3y-h3oPaDsl w_izngaIz7w5kvCgk9bzg _3FA0O5g_2XA-Ys-cKv6JvT"> -->
<!-- 	<div class="_2CGbzXSsmqtfV85v7mNacn _2vESnfTY9xQ1cfnAkEIvHA"> -->
<!-- 	</div> -->
<!-- 	<div class="_2CGbzXSsmqtfV85v7mNacn _2vESnfTY9xQ1cfnAkEIvHA"> -->
<!-- 	</div> -->
<!-- 	</div> -->
<!-- 	</div> -->
<!-- 	</div> -->
<!-- 	<div class="InfinityList__ProjectCardWrapper-sc-19jay7c-4 jfWeNA"> -->
<!-- 	<div> -->
<!-- 	</div> -->
<!-- 	<div class="_13KHfN73YmQgsYHxXvuh_J _2nZxogWCtwxgZvigECqiKs _18TDror949wcy2NyVIqpHo _8CIGG4a-tNAlxzgatnlol _37OWI7FtjHKOcaf5goooHO"> -->
<!-- 	<div class="_13KHfN73YmQgsYHxXvuh_J _2H5AJMZT-xLtuIvR5jP8rd _2aquK6B3D0GYX7zQT4_IR7 _33_rawFrgU6N_7T7Jz-5uD"> -->
<!-- 	<div class="_11JdRqQB_ZxcItRaRXRej4"> -->
<!-- 	</div> -->
<!-- 	</div> -->
<!-- 	<div class="_3ZgG-OSv0XE3y-h3oPaDsl w_izngaIz7w5kvCgk9bzg  PB6Nw1czBcakfwbNUGH_B"> -->
<!-- 	<div class="_2CGbzXSsmqtfV85v7mNacn _1DpKbfVCE7eAlLK1ltA2Gd"> -->
<!-- 	</div> -->
<!-- 	<div class="_2CGbzXSsmqtfV85v7mNacn _32q97zZjFnMsEhnBEo58g_"> -->
<!-- 	</div> -->
<!-- 	<div class="_2CGbzXSsmqtfV85v7mNacn dz_rOhpitoYAkG3IPWOqo"> -->
<!-- 	</div> -->
<!-- 	</div> -->
<!-- 	<div class="_2CGbzXSsmqtfV85v7mNacn _2F0ho1HwFi6GIllxA14nIP"> -->
<!-- 	</div> -->
<!-- 	<div class="_3ZgG-OSv0XE3y-h3oPaDsl w_izngaIz7w5kvCgk9bzg _3FA0O5g_2XA-Ys-cKv6JvT"> -->
<!-- 	<div class="_2CGbzXSsmqtfV85v7mNacn _2vESnfTY9xQ1cfnAkEIvHA"> -->
<!-- 	</div> -->
<!-- 	<div class="_2CGbzXSsmqtfV85v7mNacn _2vESnfTY9xQ1cfnAkEIvHA"> -->
<!-- 	</div> -->
<!-- 	</div> -->
<!-- 	</div> -->
<!-- 	</div> -->
<!-- 	<div class="InfinityList__ProjectCardWrapper-sc-19jay7c-4 jfWeNA"> -->
<!-- 	<div> -->
<!-- 	</div> -->
<!-- 	<div class="_13KHfN73YmQgsYHxXvuh_J _2nZxogWCtwxgZvigECqiKs _18TDror949wcy2NyVIqpHo _8CIGG4a-tNAlxzgatnlol _37OWI7FtjHKOcaf5goooHO"> -->
<!-- 	<div class="_13KHfN73YmQgsYHxXvuh_J _2H5AJMZT-xLtuIvR5jP8rd _2aquK6B3D0GYX7zQT4_IR7 _33_rawFrgU6N_7T7Jz-5uD"> -->
<!-- 	<div class="_11JdRqQB_ZxcItRaRXRej4"> -->
<!-- 	</div> -->
<!-- 	</div> -->
<!-- 	<div class="_3ZgG-OSv0XE3y-h3oPaDsl w_izngaIz7w5kvCgk9bzg  PB6Nw1czBcakfwbNUGH_B"> -->
<!-- 	<div class="_2CGbzXSsmqtfV85v7mNacn _1DpKbfVCE7eAlLK1ltA2Gd"> -->
<!-- 	</div> -->
<!-- 	<div class="_2CGbzXSsmqtfV85v7mNacn _32q97zZjFnMsEhnBEo58g_"> -->
<!-- 	</div> -->
<!-- 	<div class="_2CGbzXSsmqtfV85v7mNacn dz_rOhpitoYAkG3IPWOqo"> -->
<!-- 	</div> -->
<!-- 	</div> -->
<!-- 	<div class="_2CGbzXSsmqtfV85v7mNacn _2F0ho1HwFi6GIllxA14nIP"> -->
<!-- 	</div> -->
<!-- 	<div class="_3ZgG-OSv0XE3y-h3oPaDsl w_izngaIz7w5kvCgk9bzg _3FA0O5g_2XA-Ys-cKv6JvT"> -->
<!-- 	<div class="_2CGbzXSsmqtfV85v7mNacn _2vESnfTY9xQ1cfnAkEIvHA"> -->
<!-- 	</div> -->
<!-- 	<div class="_2CGbzXSsmqtfV85v7mNacn _2vESnfTY9xQ1cfnAkEIvHA"> -->
<!-- 	</div> -->
<!-- 	</div> -->
<!-- 	</div> -->
<!-- 	</div> -->
<!-- 	<div class="InfinityList__ProjectCardWrapper-sc-19jay7c-4 jfWeNA"> -->
<!-- 	<div> -->
<!-- 	</div> -->
<!-- 	<div class="_13KHfN73YmQgsYHxXvuh_J _2nZxogWCtwxgZvigECqiKs _18TDror949wcy2NyVIqpHo _8CIGG4a-tNAlxzgatnlol _37OWI7FtjHKOcaf5goooHO"> -->
<!-- 	<div class="_13KHfN73YmQgsYHxXvuh_J _2H5AJMZT-xLtuIvR5jP8rd _2aquK6B3D0GYX7zQT4_IR7 _33_rawFrgU6N_7T7Jz-5uD"> -->
<!-- 	<div class="_11JdRqQB_ZxcItRaRXRej4"> -->
<!-- 	</div> -->
<!-- 	</div> -->
<!-- 	<div class="_3ZgG-OSv0XE3y-h3oPaDsl w_izngaIz7w5kvCgk9bzg  PB6Nw1czBcakfwbNUGH_B"> -->
<!-- 	<div class="_2CGbzXSsmqtfV85v7mNacn _1DpKbfVCE7eAlLK1ltA2Gd"> -->
<!-- 	</div> -->
<!-- 	<div class="_2CGbzXSsmqtfV85v7mNacn _32q97zZjFnMsEhnBEo58g_"> -->
<!-- 	</div> -->
<!-- 	<div class="_2CGbzXSsmqtfV85v7mNacn dz_rOhpitoYAkG3IPWOqo"> -->
<!-- 	</div> -->
<!-- 	</div> -->
<!-- 	<div class="_2CGbzXSsmqtfV85v7mNacn _2F0ho1HwFi6GIllxA14nIP"> -->
<!-- 	</div> -->
<!-- 	<div class="_3ZgG-OSv0XE3y-h3oPaDsl w_izngaIz7w5kvCgk9bzg _3FA0O5g_2XA-Ys-cKv6JvT"> -->
<!-- 	<div class="_2CGbzXSsmqtfV85v7mNacn _2vESnfTY9xQ1cfnAkEIvHA"> -->
<!-- 	</div> -->
<!-- 	<div class="_2CGbzXSsmqtfV85v7mNacn _2vESnfTY9xQ1cfnAkEIvHA"> -->
<!-- 	</div> -->
<!-- 	</div> -->
<!-- 	</div> -->
<!-- 	</div> -->
<!-- 	<div class="InfinityList__ProjectCardWrapper-sc-19jay7c-4 jfWeNA"> -->
<!-- 	<div> -->
<!-- 	</div> -->
<!-- 	<div class="_13KHfN73YmQgsYHxXvuh_J _2nZxogWCtwxgZvigECqiKs _18TDror949wcy2NyVIqpHo _8CIGG4a-tNAlxzgatnlol _37OWI7FtjHKOcaf5goooHO"> -->
<!-- 	<div class="_13KHfN73YmQgsYHxXvuh_J _2H5AJMZT-xLtuIvR5jP8rd _2aquK6B3D0GYX7zQT4_IR7 _33_rawFrgU6N_7T7Jz-5uD"> -->
<!-- 	<div class="_11JdRqQB_ZxcItRaRXRej4"> -->
<!-- 	</div> -->
<!-- 	</div> -->
<!-- 	<div class="_3ZgG-OSv0XE3y-h3oPaDsl w_izngaIz7w5kvCgk9bzg  PB6Nw1czBcakfwbNUGH_B"> -->
<!-- 	<div class="_2CGbzXSsmqtfV85v7mNacn _1DpKbfVCE7eAlLK1ltA2Gd"> -->
<!-- 	</div> -->
<!-- 	<div class="_2CGbzXSsmqtfV85v7mNacn _32q97zZjFnMsEhnBEo58g_"> -->
<!-- 	</div> -->
<!-- 	<div class="_2CGbzXSsmqtfV85v7mNacn dz_rOhpitoYAkG3IPWOqo"> -->
<!-- 	</div> -->
<!-- 	</div> -->
<!-- 	<div class="_2CGbzXSsmqtfV85v7mNacn _2F0ho1HwFi6GIllxA14nIP"> -->
<!-- 	</div> -->
<!-- 	<div class="_3ZgG-OSv0XE3y-h3oPaDsl w_izngaIz7w5kvCgk9bzg _3FA0O5g_2XA-Ys-cKv6JvT"> -->
<!-- 	<div class="_2CGbzXSsmqtfV85v7mNacn _2vESnfTY9xQ1cfnAkEIvHA"> -->
<!-- 	</div> -->
<!-- 	<div class="_2CGbzXSsmqtfV85v7mNacn _2vESnfTY9xQ1cfnAkEIvHA"> -->
<!-- 	</div> -->
<!-- 	</div> -->
<!-- 	</div> -->
<!-- 	</div> -->
<!-- 	<div class="InfinityList__ProjectCardWrapper-sc-19jay7c-4 jfWeNA"> -->
<!-- 	<div> -->
<!-- 	</div> -->
<!-- 	<div class="_13KHfN73YmQgsYHxXvuh_J _2nZxogWCtwxgZvigECqiKs _18TDror949wcy2NyVIqpHo _8CIGG4a-tNAlxzgatnlol _37OWI7FtjHKOcaf5goooHO"> -->
<!-- 	<div class="_13KHfN73YmQgsYHxXvuh_J _2H5AJMZT-xLtuIvR5jP8rd _2aquK6B3D0GYX7zQT4_IR7 _33_rawFrgU6N_7T7Jz-5uD"> -->
<!-- 	<div class="_11JdRqQB_ZxcItRaRXRej4"> -->
<!-- 	</div> -->
<!-- 	</div> -->
<!-- 	<div class="_3ZgG-OSv0XE3y-h3oPaDsl w_izngaIz7w5kvCgk9bzg  PB6Nw1czBcakfwbNUGH_B"> -->
<!-- 	<div class="_2CGbzXSsmqtfV85v7mNacn _1DpKbfVCE7eAlLK1ltA2Gd"> -->
<!-- 	</div> -->
<!-- 	<div class="_2CGbzXSsmqtfV85v7mNacn _32q97zZjFnMsEhnBEo58g_"> -->
<!-- 	</div> -->
<!-- 	<div class="_2CGbzXSsmqtfV85v7mNacn dz_rOhpitoYAkG3IPWOqo"> -->
<!-- 	</div> -->
<!-- 	</div> -->
<!-- 	<div class="_2CGbzXSsmqtfV85v7mNacn _2F0ho1HwFi6GIllxA14nIP"> -->
<!-- 	</div> -->
<!-- 	<div class="_3ZgG-OSv0XE3y-h3oPaDsl w_izngaIz7w5kvCgk9bzg _3FA0O5g_2XA-Ys-cKv6JvT"> -->
<!-- 	<div class="_2CGbzXSsmqtfV85v7mNacn _2vESnfTY9xQ1cfnAkEIvHA"> -->
<!-- 	</div> -->
<!-- 	<div class="_2CGbzXSsmqtfV85v7mNacn _2vESnfTY9xQ1cfnAkEIvHA"> -->
<!-- 	</div> -->
<!-- 	</div> -->
<!-- 	</div> -->
<!-- 	</div> -->
<!-- 	<div class="InfinityList__ProjectCardWrapper-sc-19jay7c-4 jfWeNA"> -->
<!-- 	<div> -->
<!-- 	</div> -->
<!-- 	<div class="_13KHfN73YmQgsYHxXvuh_J _2nZxogWCtwxgZvigECqiKs _18TDror949wcy2NyVIqpHo _8CIGG4a-tNAlxzgatnlol _37OWI7FtjHKOcaf5goooHO"> -->
<!-- 	<div class="_13KHfN73YmQgsYHxXvuh_J _2H5AJMZT-xLtuIvR5jP8rd _2aquK6B3D0GYX7zQT4_IR7 _33_rawFrgU6N_7T7Jz-5uD"> -->
<!-- 	<div class="_11JdRqQB_ZxcItRaRXRej4"> -->
<!-- 	</div> -->
<!-- 	</div> -->
<!-- 	<div class="_3ZgG-OSv0XE3y-h3oPaDsl w_izngaIz7w5kvCgk9bzg  PB6Nw1czBcakfwbNUGH_B"> -->
<!-- 	<div class="_2CGbzXSsmqtfV85v7mNacn _1DpKbfVCE7eAlLK1ltA2Gd"> -->
<!-- 	</div> -->
<!-- 	<div class="_2CGbzXSsmqtfV85v7mNacn _32q97zZjFnMsEhnBEo58g_"> -->
<!-- 	</div> -->
<!-- 	<div class="_2CGbzXSsmqtfV85v7mNacn dz_rOhpitoYAkG3IPWOqo"> -->
<!-- 	</div> -->
<!-- 	</div> -->
<!-- 	<div class="_2CGbzXSsmqtfV85v7mNacn _2F0ho1HwFi6GIllxA14nIP"> -->
<!-- 	</div> -->
<!-- 	<div class="_3ZgG-OSv0XE3y-h3oPaDsl w_izngaIz7w5kvCgk9bzg _3FA0O5g_2XA-Ys-cKv6JvT"> -->
<!-- 	<div class="_2CGbzXSsmqtfV85v7mNacn _2vESnfTY9xQ1cfnAkEIvHA"> -->
<!-- 	</div> -->
<!-- 	<div class="_2CGbzXSsmqtfV85v7mNacn _2vESnfTY9xQ1cfnAkEIvHA"> -->
<!-- 	</div> -->
<!-- 	</div> -->
<!-- 	</div> -->
<!-- 	</div> -->
<!-- 	<div class="InfinityList__ProjectCardWrapper-sc-19jay7c-4 jfWeNA"> -->
<!-- 	<div> -->
<!-- 	</div> -->
<!-- 	<div class="_13KHfN73YmQgsYHxXvuh_J _2nZxogWCtwxgZvigECqiKs _18TDror949wcy2NyVIqpHo _8CIGG4a-tNAlxzgatnlol _37OWI7FtjHKOcaf5goooHO"> -->
<!-- 	<div class="_13KHfN73YmQgsYHxXvuh_J _2H5AJMZT-xLtuIvR5jP8rd _2aquK6B3D0GYX7zQT4_IR7 _33_rawFrgU6N_7T7Jz-5uD"> -->
<!-- 	<div class="_11JdRqQB_ZxcItRaRXRej4"> -->
<!-- 	</div> -->
<!-- 	</div> -->
<!-- 	<div class="_3ZgG-OSv0XE3y-h3oPaDsl w_izngaIz7w5kvCgk9bzg  PB6Nw1czBcakfwbNUGH_B"> -->
<!-- 	<div class="_2CGbzXSsmqtfV85v7mNacn _1DpKbfVCE7eAlLK1ltA2Gd"> -->
<!-- 	</div> -->
<!-- 	<div class="_2CGbzXSsmqtfV85v7mNacn _32q97zZjFnMsEhnBEo58g_"> -->
<!-- 	</div> -->
<!-- 	<div class="_2CGbzXSsmqtfV85v7mNacn dz_rOhpitoYAkG3IPWOqo"> -->
<!-- 	</div> -->
<!-- 	</div> -->
<!-- 	<div class="_2CGbzXSsmqtfV85v7mNacn _2F0ho1HwFi6GIllxA14nIP"> -->
<!-- 	</div> -->
<!-- 	<div class="_3ZgG-OSv0XE3y-h3oPaDsl w_izngaIz7w5kvCgk9bzg _3FA0O5g_2XA-Ys-cKv6JvT"> -->
<!-- 	<div class="_2CGbzXSsmqtfV85v7mNacn _2vESnfTY9xQ1cfnAkEIvHA"> -->
<!-- 	</div> -->
<!-- 	<div class="_2CGbzXSsmqtfV85v7mNacn _2vESnfTY9xQ1cfnAkEIvHA"> -->
<!-- 	</div> -->
<!-- 	</div> -->
<!-- 	</div> -->
<!-- 	</div> -->
	
	
	
	
	
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
									<input type="text" pattern="[0-9]*" min="0" max="9999" placeholder="" maxlength="5" class="FilterUIInput__InputComponent-sc-1g1rwo7-1 fHjjDc" value="">
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
$(".grChoice > div").click(function() {
// 	debugger;
	let grChoice = $(this).text();
	$(".goalRateBtn .title-wrapper").text(grChoice);
	$(".goalRateBtn").addClass("modalOff");
	$(".goalRateBtn").removeClass("modalOn");
	$(".faghXt").hide();
});



    

</script>

</body>
</html>