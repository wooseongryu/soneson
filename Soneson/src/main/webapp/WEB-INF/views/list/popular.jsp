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
<!-- <div class="ScrollTop__ScrollTopBtnWrapper-sc-679kj0-1 dABHQj"> -->
<!-- <button class="ScrollTop__ScrollTopBtn-sc-679kj0-2 fbVJgn"> -->
<!-- <span>최상위로</span> -->
<!-- </button> -->
<!-- <div class="ScrollTop__StyledIcon-sc-679kj0-0 cfpUR animate"> -->
<!-- <svg height="18px" version="1.1" viewBox="0 0 22 18" width="22px" xmlns="http://www.w3.org/2000/svg"> -->
<!-- <g fill-rule="evenodd" id="Page-1" stroke="none"> -->
<!-- <g id="jump-to-top" transform="translate(-1.000000, 0.000000)"> -->
<!-- <path d="M12.006,5.987 L22.75,16.437 C22.9,16.587 23,16.837 23,17.087 C23,17.338 22.9,17.587 22.7,17.737 C22.35,18.087 21.75,18.087 21.35,17.737 L12.006,8.587 L2.611,17.737 C2.261,18.087 1.662,18.087 1.262,17.737 C0.912,17.387 0.912,16.787 1.262,16.437 L12.006,5.987 L12.006,5.987 Z M22.175,0 C22.631,0 23,0.37 23,0.825 L23,0.877 C23,1.332 22.63,1.702 22.175,1.702 L1.825,1.702 C1.369,1.702 1,1.332 1,0.877 L1,0.825 C1,0.369 1.37,0 1.825,0 L22.175,0 Z" id="Shape"> -->
<!-- </path> -->
<!-- </g> -->
<!-- </g> -->
<!-- </svg> -->
<!-- </div> -->
<!-- </div> -->
<div class="style__Container-sc-1bojtns-0 dLDRoD">
<div class="Discover__DiscoverWrapper-sc-16itaa3-0 djIxnq tbb">
<div class="Discover__FilterWrapper-a92tdn-0 hRsKsV">
<div class="Container-gci8y7-0 Discover__FilterContainer-a92tdn-1 QBCRz bNvMNw">
<div class="Discover__FilterLayout-a92tdn-2 boizim">
<div class="Discover__FilterOptions-a92tdn-3 gIFvgV">
<div class="wrap">
<span class="Button__ButtonWrapper-sc-10w4uz1-1 kgdDuE">
<button class="Button__StyledButton-sc-10w4uz1-2 kUUqmZ">
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
<div class="InfinityList__ProjectCardWrapper-sc-19jay7c-4 jfWeNA">
<div>
</div>
<div class="ProjectCard__Wrapper-opxl0a-13 klQtEn project-card">
<div>
</div>
<div class="ProjectCard__Card-opxl0a-7 dPhtaB link-wrapper">
<div class="ProjectCard__StyledImageBox-opxl0a-2 dNCkN">
<div class="image-wrapper">
<a target="_self" href="projectDetail">
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
<a href="/discover?tab=category&amp;category=board-games">보드게임</a>
</span>
<span>
<a href="/u/delight">딜라이트</a>
</span>
</dd>
<dt>
<a target="_self" href="projectDetail">불릿 팔레트 - 무섭도록 아름다운 예술가들</a>
</dt>
<dd class="project-desc">새로운 영웅들이 전장에 합류합니다! 불릿 팔렛트</dd>
</dl>
<div class="ProjectCard__FundingStatus-opxl0a-10 hjCxPX">
<div>
<span class="ProjectCard__StyledFundingProgressState-opxl0a-12 ivYcvj">219%</span>
<span class="funding-amount">
<em>6,584,799</em>원</span>
</div>
<span class="rest-day">20일 남음</span>
</div>
<div class="ProjectCard__PercentageBar-opxl0a-11 lcwTLC">
</div>
</div>
</div>
</div>
</div>
<div class="InfinityList__ProjectCardWrapper-sc-19jay7c-4 jfWeNA">
<div>
</div>
<div class="ProjectCard__Wrapper-opxl0a-13 klQtEn project-card">
<div>
</div>
<div class="ProjectCard__Card-opxl0a-7 dPhtaB link-wrapper">
<div class="ProjectCard__StyledImageBox-opxl0a-2 jYSiJP">
<div class="image-wrapper">
<a target="_self" href="projectDetail">
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
<a href="/discover?tab=category&amp;category=calendar-and-diary">캘린더 · 다이어리</a>
</span>
<span>
<a href="/u/pawinhand">포인핸드</a>
</span>
</dd>
<dt>
<a target="_self" href="/pawinhand2024calendar?ref=GNB%2F%EC%9D%B8%EA%B8%B0">품종이 없어도 충분히 사랑스러운, 포인핸드 2024 캘린더</a>
</dt>
<dd class="project-desc">포인핸드 2024 믹스 유기견 입양 홍보 달력</dd>
</dl>
<div class="ProjectCard__FundingStatus-opxl0a-10 hjCxPX">
<div>
<span class="ProjectCard__StyledFundingProgressState-opxl0a-12 ivYcvj">52%</span>
<span class="funding-amount">
<em>2,643,999</em>원</span>
</div>
<span class="rest-day">37일 남음</span>
</div>
<div class="ProjectCard__PercentageBar-opxl0a-11 ktgqAf">
</div>
</div>
</div>
</div>
</div>
<div class="InfinityList__ProjectCardWrapper-sc-19jay7c-4 jfWeNA">
<div>
</div>
<div class="ProjectCard__Wrapper-opxl0a-13 klQtEn project-card">
<div>
</div>
<div class="ProjectCard__Card-opxl0a-7 dPhtaB link-wrapper">
<div class="ProjectCard__StyledImageBox-opxl0a-2 dXSYgm">
<div class="image-wrapper">
<a target="_self" href="/effect_3d?ref=GNB%2F%EC%9D%B8%EA%B8%B0">
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
<a href="/discover?tab=category&amp;category=comic-resources">만화 · 웹툰 리소스</a>
</span>
<span>
<a href="/u/jjh">장영</a>
</span>
</dd>
<dt>
<a target="_self" href="/effect_3d?ref=GNB%2F%EC%9D%B8%EA%B8%B0">SSS급 웹툰 액션을! [3D 이펙트&amp;Brush]</a>
</dt>
<dd class="project-desc">이펙트 효과로 작품을 화려하고 생동감 있게 연출할 수 있습니다.</dd>
</dl>
<div class="ProjectCard__FundingStatus-opxl0a-10 hjCxPX">
<div>
<span class="ProjectCard__StyledFundingProgressState-opxl0a-12 ivYcvj">451%</span>
<span class="funding-amount">
<em>4,512,000</em>원</span>
</div>
<span class="rest-day">30일 남음</span>
</div>
<div class="ProjectCard__PercentageBar-opxl0a-11 jJeMPg">
</div>
</div>
</div>
</div>
</div>
<div class="InfinityList__ProjectCardWrapper-sc-19jay7c-4 jfWeNA">
<div>
</div>
<div class="ProjectCard__Wrapper-opxl0a-13 klQtEn project-card">
<div>
</div>
<div class="ProjectCard__Card-opxl0a-7 dPhtaB link-wrapper">
<div class="ProjectCard__StyledImageBox-opxl0a-2 esrSTz">
<div class="image-wrapper">
<a target="_self" href="/akongkorea?ref=GNB%2F%EC%9D%B8%EA%B8%B0">
</a>
<div class="LikeButton__Wrapper-whittq-0 kiaOkh ProjectCard__StyledLikeButton-opxl0a-8 hfSMxY">
<button type="button" class="LikeButton__LikedBtn-whittq-1 gylNpn isLiked">
<span>좋아요</span>
</button>
</div>
</div>
</div>
<div class="ProjectCard__StyledInfoBox-opxl0a-3 kfeTrp">
<dl>
<dd class="project-sub-info">
<span>
<a href="/discover?tab=category&amp;category=sub-character-and-goods">캐릭터 · 굿즈</a>
</span>
<span>
<a href="/u/deuoumovfocplhar">아콩코리아</a>
</span>
</dd>
<dt>
<a target="_self" href="/akongkorea?ref=GNB%2F%EC%9D%B8%EA%B8%B0">[먼작귀 무드등] 엉덩이, 볼따구 톡 쳐서 키세요. </a>
</dt>
<dd class="project-desc">귀여운 끝판왕 먼작귀 친구들이 국내 최초 무드등으로 탄생. </dd>
</dl>
<div class="ProjectCard__FundingStatus-opxl0a-10 hjCxPX">
<div>
<span class="ProjectCard__StyledFundingProgressState-opxl0a-12 ivYcvj">288%</span>
<span class="funding-amount">
<em>28,869,800</em>원</span>
</div>
<span class="rest-day">24일 남음</span>
</div>
<div class="ProjectCard__PercentageBar-opxl0a-11 cVFDoW">
</div>
</div>
</div>
</div>
</div>
<div class="InfinityList__ProjectCardWrapper-sc-19jay7c-4 jfWeNA">
<div>
</div>
<div class="ProjectCard__Wrapper-opxl0a-13 klQtEn project-card">
<div>
</div>
<div class="ProjectCard__Card-opxl0a-7 dPhtaB link-wrapper">
<div class="ProjectCard__StyledImageBox-opxl0a-2 hIQvlT">
<div class="image-wrapper">
<a target="_self" href="/dj_road?ref=GNB%2F%EC%9D%B8%EA%B8%B0">
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
<a href="/discover?tab=category&amp;category=documentary">다큐멘터리</a>
</span>
<span>
<a href="/u/bxxcdlieahbjyeyu">&lt;길위에 김대중&gt; 상영위원회</a>
</span>
</dd>
<dt>
<a target="_self" href="/dj_road?ref=GNB%2F%EC%9D%B8%EA%B8%B0">김대중 대통령 탄생 100주년 기념영화 &lt;길위에 김대중&gt;</a>
</dt>
<dd class="project-desc">영화 &lt;길위에 김대중&gt;이 더 많은 관객과 만날 수 있도록 힘을 모아주세요!</dd>
</dl>
<div class="ProjectCard__FundingStatus-opxl0a-10 hjCxPX">
<div>
<span class="ProjectCard__StyledFundingProgressState-opxl0a-12 ivYcvj">612%</span>
<span class="funding-amount">
<em>306,271,279</em>원</span>
</div>
<span class="rest-day">6일 남음</span>
</div>
<div class="ProjectCard__PercentageBar-opxl0a-11 botpVJ">
</div>
</div>
</div>
</div>
</div>
<div class="InfinityList__ProjectCardWrapper-sc-19jay7c-4 jfWeNA">
<div>
</div>
<div class="ProjectCard__Wrapper-opxl0a-13 klQtEn project-card">
<div>
</div>
<div class="ProjectCard__Card-opxl0a-7 dPhtaB link-wrapper">
<div class="ProjectCard__StyledImageBox-opxl0a-2 qDpZh">
<div class="image-wrapper">
<a target="_self" href="projectDetail">
<!-- <a target="_self" href="/excel_escape2?ref=GNB%2F%EC%9D%B8%EA%B8%B0"> -->
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
<a href="/discover?tab=category&amp;category=board-games">보드게임</a>
</span>
<span>
<a href="/u/nandynwoody">Nandy &amp; Woody</a>
</span>
</dd>
<dt>
<a target="_self" href="/excel_escape2?ref=GNB%2F%EC%9D%B8%EA%B8%B0">직장에서도 즐기는 엑셀 방탈출, 세 번째 에피소드 &lt;악몽&gt;</a>
</dt>
<dd class="project-desc">엑셀의 다양한 기능을 이용하여 제작한 누구나 손쉽게 즐길 수 있는 온라인 방탈출입니다.</dd>
</dl>
<div class="ProjectCard__FundingStatus-opxl0a-10 hjCxPX">
<div>
<span class="ProjectCard__StyledFundingProgressState-opxl0a-12 ivYcvj">5596%</span>
<span class="funding-amount">
<em>27,980,000</em>원</span>
</div>
<span class="rest-day">37일 남음</span>
</div>
<div class="ProjectCard__PercentageBar-opxl0a-11 bpoYmv">
</div>
</div>
</div>
</div>
</div>
<div class="InfinityList__ProjectCardWrapper-sc-19jay7c-4 jfWeNA">
<div>
</div>
<div class="ProjectCard__Wrapper-opxl0a-13 klQtEn project-card">
<div>
</div>
<div class="ProjectCard__Card-opxl0a-7 dPhtaB link-wrapper">
<div class="ProjectCard__StyledImageBox-opxl0a-2 RbYWF">
<div class="image-wrapper">
<a target="_self" href="/garbagetime_audio?ref=GNB%2F%EC%9D%B8%EA%B8%B0">
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
<a href="/discover?tab=category&amp;category=audio-drama">오디오 드라마</a>
</span>
<span>
<a href="/u/naverwebtoon">네이버웹툰</a>
</span>
</dd>
<dt>
<a target="_self" href="/garbagetime_audio?ref=GNB%2F%EC%9D%B8%EA%B8%B0">오디오웹툰으로 만나는 &lt;가비지타임&gt;</a>
</dt>
<dd class="project-desc">네이버웹툰 &lt;가비지타임&gt; 시즌 1, 2를 오디오웹툰으로 만나보세요!</dd>
</dl>
<div class="ProjectCard__FundingStatus-opxl0a-10 hjCxPX">
<div>
<span class="ProjectCard__StyledFundingProgressState-opxl0a-12 ivYcvj">404%</span>
<span class="funding-amount">
<em>283,046,000</em>원</span>
</div>
<span class="rest-day">26일 남음</span>
</div>
<div class="ProjectCard__PercentageBar-opxl0a-11 hKMITw">
</div>
</div>
</div>
</div>
</div>
<div class="InfinityList__ProjectCardWrapper-sc-19jay7c-4 jfWeNA">
<div>
</div>
<div class="ProjectCard__Wrapper-opxl0a-13 klQtEn project-card">
<div>
</div>
<div class="ProjectCard__Card-opxl0a-7 dPhtaB link-wrapper">
<div class="ProjectCard__StyledImageBox-opxl0a-2 iBlAR">
<div class="image-wrapper">
<a target="_self" href="/bathbeads?ref=GNB%2F%EC%9D%B8%EA%B8%B0">
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
<a href="/discover?tab=category&amp;category=perfumes">향수</a>
</span>
<span>
<a href="/u/jkjnkfshixbcjeso">몽 모망</a>
</span>
</dd>
<dt>
<a target="_self" href="/bathbeads?ref=GNB%2F%EC%9D%B8%EA%B8%B0">목욕탕 수증기, 그 따스함 속 느껴지는 나무와 샴푸 향기</a>
</dt>
<dd class="project-desc">목욕탕 수증기 향, 따스함 속 은은한 나무 냄새와 비누 거품같은 포근함을 담은 겨울 향수</dd>
</dl>
<div class="ProjectCard__FundingStatus-opxl0a-10 hjCxPX">
<div>
<span class="ProjectCard__StyledFundingProgressState-opxl0a-12 ivYcvj">521%</span>
<span class="funding-amount">
<em>2,607,000</em>원</span>
</div>
<span class="rest-day">13일 남음</span>
</div>
<div class="ProjectCard__PercentageBar-opxl0a-11 bAgpWS">
</div>
</div>
</div>
</div>
</div>
<div class="InfinityList__ProjectCardWrapper-sc-19jay7c-4 jfWeNA">
<div>
</div>
<div class="ProjectCard__Wrapper-opxl0a-13 klQtEn project-card">
<div>
</div>
<div class="ProjectCard__Card-opxl0a-7 dPhtaB link-wrapper">
<div class="ProjectCard__StyledImageBox-opxl0a-2 hxsZxX">
<div class="image-wrapper">
<a target="_self" href="/toeveryevelynineveryuniverse?ref=GNB%2F%EC%9D%B8%EA%B8%B0">
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
<a href="/discover?tab=category&amp;category=Essay">에세이</a>
</span>
<span>
<a href="/u/rxgcfchtqlakslfa">워터홀컴퍼니</a>
</span>
</dd>
<dt>
<a target="_self" href="/toeveryevelynineveryuniverse?ref=GNB%2F%EC%9D%B8%EA%B8%B0">에에올 마케터의 생생한 직업 스토리와 다정한 다이어리 선물</a>
</dt>
<dd class="project-desc">에세이 [세상의 모든 에블린에게] 양장판 도서와 2024년 모든 것이 담길 다정한 다이어리</dd>
</dl>
<div class="ProjectCard__FundingStatus-opxl0a-10 hjCxPX">
<div>
<span class="ProjectCard__StyledFundingProgressState-opxl0a-12 ivYcvj">140%</span>
<span class="funding-amount">
<em>3,521,000</em>원</span>
</div>
<span class="rest-day">23일 남음</span>
</div>
<div class="ProjectCard__PercentageBar-opxl0a-11 bpqkkx">
</div>
</div>
</div>
</div>
</div>
<div class="InfinityList__ProjectCardWrapper-sc-19jay7c-4 jfWeNA">
<div>
</div>
<div class="ProjectCard__Wrapper-opxl0a-13 klQtEn project-card">
<div>
</div>
<div class="ProjectCard__Card-opxl0a-7 dPhtaB link-wrapper">
<div class="ProjectCard__StyledImageBox-opxl0a-2 bYkzzV">
<div class="image-wrapper">
<a target="_self" href="/year_end_book_2023?ref=GNB%2F%EC%9D%B8%EA%B8%B0">
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
<a href="/discover?tab=category&amp;category=sub-design-stationery">디자인 문구</a>
</span>
<span>
<a href="/u/the_dayoff">DAY-OFF</a>
</span>
</dd>
<dt>
<a target="_self" href="/year_end_book_2023?ref=GNB%2F%EC%9D%B8%EA%B8%B0">2023년을 기록하는 100가지 질문 &lt;연말정산&gt; 9주년</a>
</dt>
<dd class="project-desc">벌써 9년째- 우리의 소중한 한 해를 기록하는 시간, &lt;연말정산&gt;이 돌아왔습니다.</dd>
</dl>
<div class="ProjectCard__FundingStatus-opxl0a-10 hjCxPX">
<div>
<span class="ProjectCard__StyledFundingProgressState-opxl0a-12 ivYcvj">5358%</span>
<span class="funding-amount">
<em>26,794,500</em>원</span>
</div>
<span class="rest-day">6일 남음</span>
</div>
<div class="ProjectCard__PercentageBar-opxl0a-11 ePNkdL">
</div>
</div>
</div>
</div>
</div>
<div class="InfinityList__ProjectCardWrapper-sc-19jay7c-4 jfWeNA">
<div>
</div>
<div class="ProjectCard__Wrapper-opxl0a-13 klQtEn project-card">
<div>
</div>
<div class="ProjectCard__Card-opxl0a-7 dPhtaB link-wrapper">
<div class="ProjectCard__StyledImageBox-opxl0a-2 hfKYkg">
<div class="image-wrapper">
<a target="_self" href="/thestrawberry?ref=GNB%2F%EC%9D%B8%EA%B8%B0">
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
<a href="/discover?tab=category&amp;category=perfumes">향수</a>
</span>
<span>
<a href="/u/fopxfllexxzibpjc">AOME 아오미</a>
</span>
</dd>
<dt>
<a target="_self" href="/thestrawberry?ref=GNB%2F%EC%9D%B8%EA%B8%B0">새빨간 딸기에 로즈 한방울 비누 거품에 풍덩 빠진 향기 </a>
</dt>
<dd class="project-desc">새콤달콤한 딸기와 부드러운 로즈 한방울 그리고 폭닥폭닥한 비누 거품에 빠진 향기 </dd>
</dl>
<div class="ProjectCard__FundingStatus-opxl0a-10 hjCxPX">
<div>
<span class="ProjectCard__StyledFundingProgressState-opxl0a-12 ivYcvj">582%</span>
<span class="funding-amount">
<em>2,911,000</em>원</span>
</div>
<span class="rest-day">14일 남음</span>
</div>
<div class="ProjectCard__PercentageBar-opxl0a-11 jJsrDb">
</div>
</div>
</div>
</div>
</div>
<div class="InfinityList__ProjectCardWrapper-sc-19jay7c-4 jfWeNA">
<div>
</div>
<div class="ProjectCard__Wrapper-opxl0a-13 klQtEn project-card">
<div>
</div>
<div class="ProjectCard__Card-opxl0a-7 dPhtaB link-wrapper">
<div class="ProjectCard__StyledImageBox-opxl0a-2 eQBtTY">
<div class="image-wrapper">
<a target="_self" href="/tencel11?ref=GNB%2F%EC%9D%B8%EA%B8%B0">
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
<a href="/discover?tab=category&amp;category=sub-apparels">의류</a>
</span>
<span>
<a href="/u/htyidbffqwxmncfi">투엘브</a>
</span>
</dd>
<dt>
<a target="_self" href="/tencel11?ref=GNB%2F%EC%9D%B8%EA%B8%B0">구김, 보풀 없이 편안함과 핏을 살린 [FW 텐셀팬츠]</a>
</dt>
<dd class="project-desc">텐셀 소재는 유칼립투스 나무 추출물로 만든 환경친화적인 소재로 많은 장점을 가지고 있어요</dd>
</dl>
<div class="ProjectCard__FundingStatus-opxl0a-10 hjCxPX">
<div>
<span class="ProjectCard__StyledFundingProgressState-opxl0a-12 ivYcvj">1101%</span>
<span class="funding-amount">
<em>5,508,000</em>원</span>
</div>
<span class="rest-day">12일 남음</span>
</div>
<div class="ProjectCard__PercentageBar-opxl0a-11 kSvTxp">
</div>
</div>
</div>
</div>
</div>
<div class="InfinityList__ProjectCardWrapper-sc-19jay7c-4 jfWeNA">
<div>
</div>
<div class="_13KHfN73YmQgsYHxXvuh_J _2nZxogWCtwxgZvigECqiKs _18TDror949wcy2NyVIqpHo _8CIGG4a-tNAlxzgatnlol _37OWI7FtjHKOcaf5goooHO">
<div class="_13KHfN73YmQgsYHxXvuh_J _2H5AJMZT-xLtuIvR5jP8rd _2aquK6B3D0GYX7zQT4_IR7 _33_rawFrgU6N_7T7Jz-5uD">
<div class="_11JdRqQB_ZxcItRaRXRej4">
</div>
</div>
<div class="_3ZgG-OSv0XE3y-h3oPaDsl w_izngaIz7w5kvCgk9bzg  PB6Nw1czBcakfwbNUGH_B">
<div class="_2CGbzXSsmqtfV85v7mNacn _1DpKbfVCE7eAlLK1ltA2Gd">
</div>
<div class="_2CGbzXSsmqtfV85v7mNacn _32q97zZjFnMsEhnBEo58g_">
</div>
<div class="_2CGbzXSsmqtfV85v7mNacn dz_rOhpitoYAkG3IPWOqo">
</div>
</div>
<div class="_2CGbzXSsmqtfV85v7mNacn _2F0ho1HwFi6GIllxA14nIP">
</div>
<div class="_3ZgG-OSv0XE3y-h3oPaDsl w_izngaIz7w5kvCgk9bzg _3FA0O5g_2XA-Ys-cKv6JvT">
<div class="_2CGbzXSsmqtfV85v7mNacn _2vESnfTY9xQ1cfnAkEIvHA">
</div>
<div class="_2CGbzXSsmqtfV85v7mNacn _2vESnfTY9xQ1cfnAkEIvHA">
</div>
</div>
</div>
</div>
<div class="InfinityList__ProjectCardWrapper-sc-19jay7c-4 jfWeNA">
<div>
</div>
<div class="_13KHfN73YmQgsYHxXvuh_J _2nZxogWCtwxgZvigECqiKs _18TDror949wcy2NyVIqpHo _8CIGG4a-tNAlxzgatnlol _37OWI7FtjHKOcaf5goooHO">
<div class="_13KHfN73YmQgsYHxXvuh_J _2H5AJMZT-xLtuIvR5jP8rd _2aquK6B3D0GYX7zQT4_IR7 _33_rawFrgU6N_7T7Jz-5uD">
<div class="_11JdRqQB_ZxcItRaRXRej4">
</div>
</div>
<div class="_3ZgG-OSv0XE3y-h3oPaDsl w_izngaIz7w5kvCgk9bzg  PB6Nw1czBcakfwbNUGH_B">
<div class="_2CGbzXSsmqtfV85v7mNacn _1DpKbfVCE7eAlLK1ltA2Gd">
</div>
<div class="_2CGbzXSsmqtfV85v7mNacn _32q97zZjFnMsEhnBEo58g_">
</div>
<div class="_2CGbzXSsmqtfV85v7mNacn dz_rOhpitoYAkG3IPWOqo">
</div>
</div>
<div class="_2CGbzXSsmqtfV85v7mNacn _2F0ho1HwFi6GIllxA14nIP">
</div>
<div class="_3ZgG-OSv0XE3y-h3oPaDsl w_izngaIz7w5kvCgk9bzg _3FA0O5g_2XA-Ys-cKv6JvT">
<div class="_2CGbzXSsmqtfV85v7mNacn _2vESnfTY9xQ1cfnAkEIvHA">
</div>
<div class="_2CGbzXSsmqtfV85v7mNacn _2vESnfTY9xQ1cfnAkEIvHA">
</div>
</div>
</div>
</div>
<div class="InfinityList__ProjectCardWrapper-sc-19jay7c-4 jfWeNA">
<div>
</div>
<div class="_13KHfN73YmQgsYHxXvuh_J _2nZxogWCtwxgZvigECqiKs _18TDror949wcy2NyVIqpHo _8CIGG4a-tNAlxzgatnlol _37OWI7FtjHKOcaf5goooHO">
<div class="_13KHfN73YmQgsYHxXvuh_J _2H5AJMZT-xLtuIvR5jP8rd _2aquK6B3D0GYX7zQT4_IR7 _33_rawFrgU6N_7T7Jz-5uD">
<div class="_11JdRqQB_ZxcItRaRXRej4">
</div>
</div>
<div class="_3ZgG-OSv0XE3y-h3oPaDsl w_izngaIz7w5kvCgk9bzg  PB6Nw1czBcakfwbNUGH_B">
<div class="_2CGbzXSsmqtfV85v7mNacn _1DpKbfVCE7eAlLK1ltA2Gd">
</div>
<div class="_2CGbzXSsmqtfV85v7mNacn _32q97zZjFnMsEhnBEo58g_">
</div>
<div class="_2CGbzXSsmqtfV85v7mNacn dz_rOhpitoYAkG3IPWOqo">
</div>
</div>
<div class="_2CGbzXSsmqtfV85v7mNacn _2F0ho1HwFi6GIllxA14nIP">
</div>
<div class="_3ZgG-OSv0XE3y-h3oPaDsl w_izngaIz7w5kvCgk9bzg _3FA0O5g_2XA-Ys-cKv6JvT">
<div class="_2CGbzXSsmqtfV85v7mNacn _2vESnfTY9xQ1cfnAkEIvHA">
</div>
<div class="_2CGbzXSsmqtfV85v7mNacn _2vESnfTY9xQ1cfnAkEIvHA">
</div>
</div>
</div>
</div>
<div class="InfinityList__ProjectCardWrapper-sc-19jay7c-4 jfWeNA">
<div>
</div>
<div class="_13KHfN73YmQgsYHxXvuh_J _2nZxogWCtwxgZvigECqiKs _18TDror949wcy2NyVIqpHo _8CIGG4a-tNAlxzgatnlol _37OWI7FtjHKOcaf5goooHO">
<div class="_13KHfN73YmQgsYHxXvuh_J _2H5AJMZT-xLtuIvR5jP8rd _2aquK6B3D0GYX7zQT4_IR7 _33_rawFrgU6N_7T7Jz-5uD">
<div class="_11JdRqQB_ZxcItRaRXRej4">
</div>
</div>
<div class="_3ZgG-OSv0XE3y-h3oPaDsl w_izngaIz7w5kvCgk9bzg  PB6Nw1czBcakfwbNUGH_B">
<div class="_2CGbzXSsmqtfV85v7mNacn _1DpKbfVCE7eAlLK1ltA2Gd">
</div>
<div class="_2CGbzXSsmqtfV85v7mNacn _32q97zZjFnMsEhnBEo58g_">
</div>
<div class="_2CGbzXSsmqtfV85v7mNacn dz_rOhpitoYAkG3IPWOqo">
</div>
</div>
<div class="_2CGbzXSsmqtfV85v7mNacn _2F0ho1HwFi6GIllxA14nIP">
</div>
<div class="_3ZgG-OSv0XE3y-h3oPaDsl w_izngaIz7w5kvCgk9bzg _3FA0O5g_2XA-Ys-cKv6JvT">
<div class="_2CGbzXSsmqtfV85v7mNacn _2vESnfTY9xQ1cfnAkEIvHA">
</div>
<div class="_2CGbzXSsmqtfV85v7mNacn _2vESnfTY9xQ1cfnAkEIvHA">
</div>
</div>
</div>
</div>
<div class="InfinityList__ProjectCardWrapper-sc-19jay7c-4 jfWeNA">
<div>
</div>
<div class="_13KHfN73YmQgsYHxXvuh_J _2nZxogWCtwxgZvigECqiKs _18TDror949wcy2NyVIqpHo _8CIGG4a-tNAlxzgatnlol _37OWI7FtjHKOcaf5goooHO">
<div class="_13KHfN73YmQgsYHxXvuh_J _2H5AJMZT-xLtuIvR5jP8rd _2aquK6B3D0GYX7zQT4_IR7 _33_rawFrgU6N_7T7Jz-5uD">
<div class="_11JdRqQB_ZxcItRaRXRej4">
</div>
</div>
<div class="_3ZgG-OSv0XE3y-h3oPaDsl w_izngaIz7w5kvCgk9bzg  PB6Nw1czBcakfwbNUGH_B">
<div class="_2CGbzXSsmqtfV85v7mNacn _1DpKbfVCE7eAlLK1ltA2Gd">
</div>
<div class="_2CGbzXSsmqtfV85v7mNacn _32q97zZjFnMsEhnBEo58g_">
</div>
<div class="_2CGbzXSsmqtfV85v7mNacn dz_rOhpitoYAkG3IPWOqo">
</div>
</div>
<div class="_2CGbzXSsmqtfV85v7mNacn _2F0ho1HwFi6GIllxA14nIP">
</div>
<div class="_3ZgG-OSv0XE3y-h3oPaDsl w_izngaIz7w5kvCgk9bzg _3FA0O5g_2XA-Ys-cKv6JvT">
<div class="_2CGbzXSsmqtfV85v7mNacn _2vESnfTY9xQ1cfnAkEIvHA">
</div>
<div class="_2CGbzXSsmqtfV85v7mNacn _2vESnfTY9xQ1cfnAkEIvHA">
</div>
</div>
</div>
</div>
<div class="InfinityList__ProjectCardWrapper-sc-19jay7c-4 jfWeNA">
<div>
</div>
<div class="_13KHfN73YmQgsYHxXvuh_J _2nZxogWCtwxgZvigECqiKs _18TDror949wcy2NyVIqpHo _8CIGG4a-tNAlxzgatnlol _37OWI7FtjHKOcaf5goooHO">
<div class="_13KHfN73YmQgsYHxXvuh_J _2H5AJMZT-xLtuIvR5jP8rd _2aquK6B3D0GYX7zQT4_IR7 _33_rawFrgU6N_7T7Jz-5uD">
<div class="_11JdRqQB_ZxcItRaRXRej4">
</div>
</div>
<div class="_3ZgG-OSv0XE3y-h3oPaDsl w_izngaIz7w5kvCgk9bzg  PB6Nw1czBcakfwbNUGH_B">
<div class="_2CGbzXSsmqtfV85v7mNacn _1DpKbfVCE7eAlLK1ltA2Gd">
</div>
<div class="_2CGbzXSsmqtfV85v7mNacn _32q97zZjFnMsEhnBEo58g_">
</div>
<div class="_2CGbzXSsmqtfV85v7mNacn dz_rOhpitoYAkG3IPWOqo">
</div>
</div>
<div class="_2CGbzXSsmqtfV85v7mNacn _2F0ho1HwFi6GIllxA14nIP">
</div>
<div class="_3ZgG-OSv0XE3y-h3oPaDsl w_izngaIz7w5kvCgk9bzg _3FA0O5g_2XA-Ys-cKv6JvT">
<div class="_2CGbzXSsmqtfV85v7mNacn _2vESnfTY9xQ1cfnAkEIvHA">
</div>
<div class="_2CGbzXSsmqtfV85v7mNacn _2vESnfTY9xQ1cfnAkEIvHA">
</div>
</div>
</div>
</div>
<div class="InfinityList__ProjectCardWrapper-sc-19jay7c-4 jfWeNA">
<div>
</div>
<div class="_13KHfN73YmQgsYHxXvuh_J _2nZxogWCtwxgZvigECqiKs _18TDror949wcy2NyVIqpHo _8CIGG4a-tNAlxzgatnlol _37OWI7FtjHKOcaf5goooHO">
<div class="_13KHfN73YmQgsYHxXvuh_J _2H5AJMZT-xLtuIvR5jP8rd _2aquK6B3D0GYX7zQT4_IR7 _33_rawFrgU6N_7T7Jz-5uD">
<div class="_11JdRqQB_ZxcItRaRXRej4">
</div>
</div>
<div class="_3ZgG-OSv0XE3y-h3oPaDsl w_izngaIz7w5kvCgk9bzg  PB6Nw1czBcakfwbNUGH_B">
<div class="_2CGbzXSsmqtfV85v7mNacn _1DpKbfVCE7eAlLK1ltA2Gd">
</div>
<div class="_2CGbzXSsmqtfV85v7mNacn _32q97zZjFnMsEhnBEo58g_">
</div>
<div class="_2CGbzXSsmqtfV85v7mNacn dz_rOhpitoYAkG3IPWOqo">
</div>
</div>
<div class="_2CGbzXSsmqtfV85v7mNacn _2F0ho1HwFi6GIllxA14nIP">
</div>
<div class="_3ZgG-OSv0XE3y-h3oPaDsl w_izngaIz7w5kvCgk9bzg _3FA0O5g_2XA-Ys-cKv6JvT">
<div class="_2CGbzXSsmqtfV85v7mNacn _2vESnfTY9xQ1cfnAkEIvHA">
</div>
<div class="_2CGbzXSsmqtfV85v7mNacn _2vESnfTY9xQ1cfnAkEIvHA">
</div>
</div>
</div>
</div>
<div class="InfinityList__ProjectCardWrapper-sc-19jay7c-4 jfWeNA">
<div>
</div>
<div class="_13KHfN73YmQgsYHxXvuh_J _2nZxogWCtwxgZvigECqiKs _18TDror949wcy2NyVIqpHo _8CIGG4a-tNAlxzgatnlol _37OWI7FtjHKOcaf5goooHO">
<div class="_13KHfN73YmQgsYHxXvuh_J _2H5AJMZT-xLtuIvR5jP8rd _2aquK6B3D0GYX7zQT4_IR7 _33_rawFrgU6N_7T7Jz-5uD">
<div class="_11JdRqQB_ZxcItRaRXRej4">
</div>
</div>
<div class="_3ZgG-OSv0XE3y-h3oPaDsl w_izngaIz7w5kvCgk9bzg  PB6Nw1czBcakfwbNUGH_B">
<div class="_2CGbzXSsmqtfV85v7mNacn _1DpKbfVCE7eAlLK1ltA2Gd">
</div>
<div class="_2CGbzXSsmqtfV85v7mNacn _32q97zZjFnMsEhnBEo58g_">
</div>
<div class="_2CGbzXSsmqtfV85v7mNacn dz_rOhpitoYAkG3IPWOqo">
</div>
</div>
<div class="_2CGbzXSsmqtfV85v7mNacn _2F0ho1HwFi6GIllxA14nIP">
</div>
<div class="_3ZgG-OSv0XE3y-h3oPaDsl w_izngaIz7w5kvCgk9bzg _3FA0O5g_2XA-Ys-cKv6JvT">
<div class="_2CGbzXSsmqtfV85v7mNacn _2vESnfTY9xQ1cfnAkEIvHA">
</div>
<div class="_2CGbzXSsmqtfV85v7mNacn _2vESnfTY9xQ1cfnAkEIvHA">
</div>
</div>
</div>
</div>
</div>
<span style="font-size: 0px;">
</span>
</div>
</div>
</div>
<!-- <div class="style__FooterWrapper-sc-1bojtns-1 iqDIvD"> -->
<!-- <div class="style__FooterLinkWrapper-sc-1bojtns-2 eHosGc"> -->
<!-- <div class="style__FooterSitemapWrapper-sc-1bojtns-3 iKkIqu"> -->
<!-- <div class="style__FooterSitemap-sc-1bojtns-4 ljIlaq"> -->
<!-- <div style="min-width:160px" class="style__FooterLinkColumn-sc-1bojtns-5 cCKwLC"> -->
<!-- <div class="style__FooterLinkSitemapTitle-sc-1bojtns-8 dKlYry">텀블벅</div> -->
<!-- <a href="https://tumblbug.com/notices" class="style__SitemapLink-sc-1bojtns-9 gKtrFq"> -->
<!-- <span class="style__SitemapText-sc-7of8vt-10 kVOduU">공지사항</span> -->
<!-- </a> -->
<!-- <a href="https://tumblbug-assets.s3.ap-northeast-1.amazonaws.com/service_pdf/%E1%84%90%E1%85%A5%E1%86%B7%E1%84%87%E1%85%B3%E1%86%AF%E1%84%87%E1%85%A5%E1%86%A8+%E1%84%89%E1%85%A5%E1%84%87%E1%85%B5%E1%84%89%E1%85%B3+%E1%84%89%E1%85%A9%E1%84%80%E1%85%A2%E1%84%89%E1%85%A5.pdf" target="_blank" class="style__SitemapLink-sc-1bojtns-9 gKtrFq"> -->
<!-- <span class="style__SitemapText-sc-1bojtns-10 fbYDjy">서비스 소개</span> -->
<!-- </a> -->
<!-- <a href="https://team.idus.com/" target="_blank" class="style__SitemapLink-sc-1bojtns-9 gKtrFq"> -->
<!-- <span class="style__SitemapText-sc-1bojtns-10 cfSzID">채용</span> -->
<!-- </a> -->
<!-- <a href="https://year.tumblbug.com/2022" target="_blank" class="style__SitemapLink-sc-1bojtns-9 gKtrFq"> -->
<!-- <span class="style__SitemapText-sc-1bojtns-10 fbYDjy">2022 텀블벅 결산</span> -->
<!-- </a> -->
<!-- <a href="https://ad.tumblbug.com/" target="_blank" class="style__SitemapLink-sc-1bojtns-9 gKtrFq"> -->
<!-- <span class="style__SitemapText-sc-1bojtns-10 cfSzID">텀블벅 광고센터</span> -->
<!-- </a> -->
<!-- </div> -->
<!-- <div style="min-width:160px" class="style__FooterLinkColumn-sc-1bojtns-5 cCKwLC"> -->
<!-- <div class="style__FooterLinkSitemapTitle-sc-1bojtns-8 dKlYry">이용안내</div> -->
<!-- <a href="https://help.tumblbug.com" class="style__SitemapLink-sc-1bojtns-9 gKtrFq"> -->
<!-- <span class="style__SitemapText-sc-1bojtns-10 fbYDjy">헬프 센터</span> -->
<!-- </a> -->
<!-- <a href="/onboarding" target="_blank" class="style__SitemapLink-sc-1bojtns-9 gKtrFq"> -->
<!-- <span class="style__SitemapText-sc-1bojtns-10 fbYDjy">첫 후원 가이드</span> -->
<!-- </a> -->
<!-- <a href="https://creator.tumblbug.com/?v=1" target="_blank" class="style__SitemapLink-sc-1bojtns-9 gKtrFq"> -->
<!-- <em> -->
<!-- <span class="style__SitemapText-sc-1bojtns-10 fbYDjy">창작자 가이드</span> -->
<!-- </em> -->
<!-- </a> -->
<!-- <a href="https://tumblbug.com/plans" target="_blank" class="style__SitemapLink-sc-1bojtns-9 gKtrFq"> -->
<!-- <span class="style__SitemapText-sc-1bojtns-10 fbYDjy">수수료 안내</span> -->
<!-- </a> -->
<!-- <a href="https://creator.tumblbug.com/partnership" target="_blank" class="style__SitemapLink-sc-1bojtns-9 gKtrFq"> -->
<!-- <span class="style__SitemapText-sc-1bojtns-10 fbYDjy">제휴·협력</span> -->
<!-- </a> -->
<!-- </div> -->
<!-- <div style="min-width:160px" class="style__FooterLinkColumn-sc-1bojtns-5 cCKwLC"> -->
<!-- <div class="style__FooterLinkSitemapTitle-sc-1bojtns-8 dKlYry">정책</div> -->
<!-- <a href="https://tum.bg/terms" class="style__SitemapLink-sc-1bojtns-9 gKtrFq"> -->
<!-- <span class="style__SitemapText-sc-1bojtns-10 fbYDjy">이용약관</span> -->
<!-- </a> -->
<!-- <a href="https://help.tumblbug.com/hc/ko/articles/7766423598745" style="font-weight:700" class="style__SitemapLink-sc-1bojtns-9 gKtrFq"> -->
<!-- <span class="style__SitemapText-sc-1bojtns-10 fbYDjy">개인정보 처리방침</span> -->
<!-- </a> -->
<!-- <a href="https://help.tumblbug.com/hc/ko/articles/360052346633-%ED%94%84%EB%A1%9C%EC%A0%9D%ED%8A%B8-%EC%8B%AC%EC%82%AC-%EA%B8%B0%EC%A4%80" class="style__SitemapLink-sc-1bojtns-9 gKtrFq"> -->
<!-- <span class="style__SitemapText-sc-1bojtns-10 fbYDjy">프로젝트 심사 기준</span> -->
<!-- </a> -->
<!-- </div> -->
<!-- </div> -->
<!-- <div style="min-width:160px" class="style__FooterAppLinkColumn-sc-1bojtns-7 eTCUcB"> -->
<!-- <div class="style__FooterLinkSitemapTitle-sc-1bojtns-8 dKlYry">App</div> -->
<!-- <a href="https://tumblbug.app.link/aJYX8COIxgb" target="_blank" class="style__StoreButton-sc-1bojtns-12 iWOwtq"> -->
<!-- <div class="style__StoreButtonInnerWrapper-sc-1bojtns-13 DLhKa"> -->
<!-- <div class="style__IconWrapper-sc-1bojtns-11 hDkjZs"> -->
<!-- <div name="android" class="Icon__SVGICON-sc-12tligs-0 kPBcuc baseline"> -->
<!-- <svg viewBox="0 0 48 48"> -->
<!-- <path d="M24.6449 23.5185L10.1867 7.23185C10.0938 7.12575 9.9721 7.05142 9.83766 7.01869C9.70321 6.98597 9.56237 6.99639 9.43375 7.04858C9.30513 7.10077 9.1948 7.19226 9.11736 7.31097C9.03991 7.42968 8.99899 7.57 9.00002 7.71337V40.2866C8.99899 40.43 9.03991 40.5703 9.11736 40.689C9.1948 40.8077 9.30513 40.8992 9.43375 40.9514C9.56237 41.0036 9.70321 41.014 9.83766 40.9813C9.9721 40.9486 10.0938 40.8743 10.1867 40.7681L24.6449 24.4815C24.7619 24.3506 24.8269 24.1786 24.8269 24C24.8269 23.8214 24.7619 23.6494 24.6449 23.5185Z"> -->
<!-- </path> -->
<!-- <path d="M26.5546 25.6712C26.4887 25.6018 26.4101 25.5467 26.3235 25.5091C26.2368 25.4715 26.1439 25.4522 26.05 25.4522C25.9561 25.4522 25.8631 25.4715 25.7765 25.5091C25.6899 25.5467 25.6113 25.6018 25.5453 25.6712L14.2515 38.4172C14.1414 38.5421 14.0779 38.7038 14.0727 38.873C14.0675 39.0422 14.1209 39.2078 14.2232 39.3397C14.3255 39.4715 14.4698 39.561 14.6302 39.5918C14.7905 39.6227 14.9562 39.5928 15.0972 39.5077C19.4619 36.8877 24.8906 33.5737 29.76 30.5713C29.8474 30.5172 29.922 30.4435 29.9784 30.3556C30.0347 30.2677 30.0715 30.1678 30.0858 30.0633C30.1002 29.9587 30.0919 29.8521 30.0615 29.7514C30.0311 29.6506 29.9793 29.5581 29.91 29.4808L26.5546 25.6712Z"> -->
<!-- </path> -->
<!-- <path d="M38.3256 22.7537L32.1877 18.9724C32.0538 18.8904 31.897 18.8583 31.7433 18.8815C31.5895 18.9047 31.4479 18.9817 31.342 19.0998L27.4138 23.5185C27.2968 23.6494 27.2318 23.8214 27.2318 24C27.2318 24.1786 27.2968 24.3506 27.4138 24.4815L31.342 28.9001C31.4479 29.0182 31.5895 29.0953 31.7433 29.1184C31.897 29.1416 32.0538 29.1096 32.1877 29.0276L38.2711 25.2463C38.491 25.1261 38.6752 24.9459 38.8036 24.725C38.9321 24.5041 39 24.2509 39 23.9929C39 23.7349 38.9321 23.4817 38.8036 23.2608C38.6752 23.0399 38.491 22.8597 38.2711 22.7395L38.3256 22.7537Z"> -->
<!-- </path> -->
<!-- <path d="M25.5587 22.3288C25.6226 22.4018 25.7006 22.4602 25.7875 22.5001C25.8744 22.54 25.9684 22.5606 26.0634 22.5606C26.1584 22.5606 26.2524 22.54 26.3393 22.5001C26.4262 22.4602 26.5041 22.4018 26.5681 22.3288L29.9371 18.5333C30.0064 18.456 30.0581 18.3636 30.0886 18.2628C30.119 18.162 30.1273 18.0554 30.1129 17.9509C30.0985 17.8463 30.0618 17.7464 30.0054 17.6585C29.949 17.5706 29.8744 17.4969 29.7871 17.4428C24.8904 14.4404 19.4617 11.1406 15.1106 8.50642C14.9696 8.42131 14.804 8.39147 14.6436 8.4223C14.4833 8.45313 14.3389 8.5426 14.2366 8.67448C14.1343 8.80636 14.081 8.97192 14.0862 9.14115C14.0914 9.31038 14.1548 9.47207 14.2649 9.59692L25.5587 22.3288Z"> -->
<!-- </path> -->
<!-- </svg> -->
<!-- </div> -->
<!-- </div>안드로이드</div> -->
<!-- </a> -->
<!-- <a href="https://tumblbug.app.link/vHCeCiwIxgb" target="_blank" class="style__StoreButton-sc-1bojtns-12 iWOwtq"> -->
<!-- <div class="style__StoreButtonInnerWrapper-sc-1bojtns-13 DLhKa"> -->
<!-- <div class="style__IconWrapper-sc-1bojtns-11 hDkjZs"> -->
<!-- <div name="apple" class="Icon__SVGICON-sc-12tligs-0 kPBcuc baseline"> -->
<!-- <svg viewBox="0 0 48 48"> -->
<!-- <path fill-rule="evenodd" clip-rule="evenodd" d="M27.3052 12.4302C26.2982 12.9673 25.3542 13.2371 24.4707 13.2371C24.2866 13.2371 24.1052 13.2211 23.9317 13.189C23.9212 13.1383 23.9054 13.0421 23.8843 12.9005C23.8633 12.7589 23.8554 12.6146 23.8554 12.4703C23.8554 11.4362 24.0737 10.4369 24.5154 9.47228C24.9572 8.50501 25.4567 7.69806 26.0115 7.05144C26.7294 6.19639 27.6286 5.48297 28.7067 4.91383C29.7848 4.34736 30.8181 4.04008 31.8042 4C31.8541 4.24048 31.8804 4.50501 31.8804 4.79893C31.8804 5.83033 31.6858 6.835 31.2967 7.81029C30.9049 8.78824 30.4079 9.6513 29.8005 10.4021C29.1432 11.2171 28.3123 11.8931 27.3052 12.4302ZM32.5062 13.7608C33.0952 13.8196 33.7683 13.9666 34.5229 14.2071C35.2776 14.4475 36.0454 14.8376 36.8263 15.3801C37.6072 15.9252 38.3251 16.6813 38.9824 17.6513C38.9219 17.694 38.6748 17.8731 38.2435 18.191C37.8123 18.509 37.3259 18.9766 36.7816 19.5938C36.2347 20.2084 35.7614 20.9859 35.3565 21.9265C34.9489 22.8644 34.7464 23.9759 34.7464 25.2612C34.7464 26.4395 34.92 27.4763 35.2618 28.3687C35.6062 29.2612 36.0348 30.0227 36.5502 30.6533C37.0629 31.2865 37.5757 31.7969 38.091 32.1897C38.6038 32.5798 39.0429 32.8684 39.4084 33.0581C39.7712 33.2451 39.9684 33.344 40 33.3547C39.9895 33.3974 39.8922 33.694 39.7081 34.2471C39.5214 34.8002 39.2322 35.5003 38.8378 36.3447C38.4408 37.1917 37.9306 38.0841 37.3048 39.022C36.75 39.837 36.1716 40.6226 35.5721 41.3787C34.9699 42.1349 34.3126 42.7548 33.6 43.2331C32.8848 43.7141 32.0802 43.9545 31.1888 43.9545C30.521 43.9545 29.9477 43.8744 29.4692 43.7114C28.9933 43.5484 28.541 43.3614 28.115 43.1476C27.6891 42.9338 27.2131 42.7495 26.6899 42.5918C26.164 42.4342 25.5172 42.3567 24.7468 42.3567C23.9974 42.3567 23.3453 42.4368 22.7905 42.5998C22.2357 42.7628 21.7282 42.9525 21.2654 43.1716C20.8026 43.3908 20.3346 43.5831 19.856 43.7515C19.3775 43.9171 18.8358 44 18.2311 44C17.4081 44 16.6587 43.7702 15.9803 43.3133C15.3045 42.8537 14.6524 42.2364 14.024 41.4642C13.3982 40.692 12.7619 39.8423 12.115 38.9125C11.3551 37.8169 10.6636 36.5451 10.0431 35.0995C9.41988 33.6539 8.92555 32.1256 8.55481 30.5143C8.18669 28.9004 8 27.2865 8 25.6673C8 23.7274 8.28135 22.0147 8.84141 20.5317C9.39885 19.0514 10.1535 17.8089 11.0975 16.8069C12.0414 15.8049 13.1011 15.0487 14.2712 14.5437C15.4412 14.0387 16.6429 13.7849 17.8761 13.7849C18.7385 13.7849 19.5537 13.9292 20.3188 14.2151C21.084 14.501 21.7939 14.7895 22.4513 15.0755C23.1086 15.364 23.716 15.5056 24.2708 15.5056C24.7836 15.5056 25.3883 15.356 26.0878 15.0514C26.7872 14.7495 27.5655 14.4449 28.4227 14.1376C29.2799 13.8276 30.2028 13.6753 31.1888 13.6753C31.4754 13.6753 31.9145 13.7047 32.5062 13.7608Z"> -->
<!-- </path> -->
<!-- </svg> -->
<!-- </div> -->
<!-- </div>iOS</div> -->
<!-- </a> -->
<!-- </div> -->
<!-- </div> -->
<!-- <div class="style__FooterLinkCustomer-sc-1bojtns-14 fwLcAA"> -->
<!-- <div class="style__FooterLinkCustomerTitle-sc-1bojtns-15 eXnydN">고객지원</div> -->
<!-- <div class="style__FooterLinkCustomerDesc-sc-1bojtns-16 fANZBL">평일 9:00 ~ 17:00 (12:00 ~14:00 제외)</div> -->
<!-- <a class="style__FooterLinkCustomerChannelTalk-sc-1bojtns-17 heTwNe">텀블벅에 문의</a> -->
<!-- </div> -->
<!-- </div> -->
<!-- <div class="style__FooterCompanyWrapper-sc-1bojtns-18 jUsZao"> -->
<!-- <div class="style__FooterCompany-sc-1bojtns-19 lpnOpG"> -->
<!-- <div class="style__FooterCompanyItem-sc-1bojtns-20 bEceYR"> -->
<!-- <strong>회사명</strong> -->
<!-- <span>(주) 백패커</span> -->
<!-- </div> -->
<!-- <div class="style__FooterCompanyItem-sc-1bojtns-20 bEceYR"> -->
<!-- <strong>주소</strong> -->
<!-- <span>서울특별시 서초구 서초대로 398, 20층(서초동, BNK디지털타워)</span> -->
<!-- </div> -->
<!-- <div class="style__FooterCompanyItem-sc-1bojtns-20 bEceYR"> -->
<!-- <strong>대표</strong> -->
<!-- <span>김동환</span> -->
<!-- </div> -->
<!-- <div class="style__FooterCompanyItem-sc-1bojtns-20 bEceYR"> -->
<!-- <strong>사업자등록번호</strong> -->
<!-- <span>107-87-83297</span> -->
<!-- </div> -->
<!-- <div class="style__FooterCompanyItem-sc-1bojtns-20 bEceYR"> -->
<!-- <strong>통신판매업 신고번호</strong> -->
<!-- <span>2023-서울서초-2114호</span> -->
<!-- </div> -->
<!-- <div class="style__FooterCompanyItem-sc-1bojtns-20 bEceYR"> -->
<!-- <strong>대표번호</strong> -->
<!-- <span>02-6080-0760</span> -->
<!-- </div> -->
<!-- <div class="style__FooterCompanyItem-sc-1bojtns-20 bEceYR"> -->
<!-- <strong>메일주소</strong> -->
<!-- <span>support_tumblbug@backpac.kr</span> -->
<!-- </div> -->
<!-- <div class="style__FooterCopyright-sc-1bojtns-21 krCRjH">©2023 Backpackr Inc.</div> -->
<!-- </div> -->
<!-- <div class="style__FooterShareButtonSection-sc-1bojtns-22 iBfBXT"> -->
<!-- <a href="https://pf.kakao.com/_BAxdXj" target="_blank" class="style__FooterShareButton-sc-1bojtns-23 dvIGYX"> -->
<!-- <div name="kakaotalk" class="Icon__SVGICON-sc-12tligs-0 kPBcuc style__SNSLinkIcon-sc-1bojtns-26 hrSRuh"> -->
<!-- <svg viewBox="0 0 48 48"> -->
<!-- <path fill-rule="evenodd" clip-rule="evenodd" d="M24 4C11.8 4 2 11.6865 2 21.0924C2.4 27.5653 6.4 33.1279 12.2 35.5552L10.1 43.2417C10 43.444 10.1 43.7474 10.3 43.8475C10.5 44.0508 10.9 44.0508 11.1 43.8475L20 37.8814C21.3 38.0837 22.6 38.1848 24 38.1848C36.1 38.1848 46 30.4983 46 21.0924C46 11.6865 36.2 4 24 4Z"> -->
<!-- </path> -->
<!-- </svg> -->
<!-- </div> -->
<!-- </a> -->
<!-- <a href="https://www.facebook.com/tumblbug" target="_blank" class="style__FooterShareButton-sc-1bojtns-23 dvIGYX"> -->
<!-- <div name="facebook" class="Icon__SVGICON-sc-12tligs-0 kPBcuc style__SNSLinkIcon-sc-1bojtns-26 hrSRuh"> -->
<!-- <svg viewBox="0 0 48 48"> -->
<!-- <path fill-rule="evenodd" clip-rule="evenodd" d="M27.3343 2.24555C15.2931 0.443311 4.05474 8.75365 2.24857 20.8687C0.442397 32.9838 8.67052 44.1978 20.7117 46V30.4807H15.1928V24.0727H20.7117V19.1666V17.6647C21.0127 13.3594 24.7254 10.1554 29.0401 10.4558C30.6456 10.4558 32.3514 10.656 33.9579 10.8563V16.3631H31.047H30.3446C28.5384 16.5634 27.3343 18.0652 27.4356 19.8675V23.9726H33.5556L32.5521 30.3816H27.535V46C32.6525 45.199 37.3686 42.4956 40.6799 38.5908C44.0916 34.5858 45.9991 29.3803 45.9991 24.0727C46.0984 13.1591 38.071 3.84755 27.3343 2.24555Z"> -->
<!-- </path> -->
<!-- </svg> -->
<!-- </div> -->
<!-- </a> -->
<!-- <a href="https://twitter.com/tumblbug" target="_blank" class="style__FooterShareButton-sc-1bojtns-23 dvIGYX"> -->
<!-- <div name="twitter" class="Icon__SVGICON-sc-12tligs-0 kPBcuc style__SNSLinkIcon-sc-1bojtns-26 hrSRuh"> -->
<!-- <svg viewBox="0 0 48 48"> -->
<!-- <path fill-rule="evenodd" clip-rule="evenodd" d="M46 10.288C44.304 10.986 42.607 11.485 40.812 11.784C42.707 10.587 44.104 8.792 44.803 6.698C43.007 7.795 41.111 8.493 39.115 8.892C37.419 7.097 35.024 6 32.53 6C27.542 6.1 23.451 10.188 23.551 15.175C23.551 15.873 23.65 16.571 23.75 17.269C16.467 16.87 9.682 13.38 5.192 7.596C2.798 11.784 3.995 17.169 7.986 19.962C6.589 19.962 5.192 19.563 3.896 18.765V18.865C3.796 23.253 6.889 27.042 11.079 27.939C10.281 28.14 9.483 28.239 8.685 28.239C8.086 28.239 7.587 28.14 6.988 28.04C8.086 31.729 11.478 34.322 15.37 34.422C12.177 37.015 8.186 38.411 4.195 38.411C3.497 38.411 2.798 38.411 2 38.311C6.09 41.103 10.879 42.5 15.769 42.5C30.036 42.4 41.41 30.832 41.41 16.571V16.172V14.975C43.306 13.779 44.803 12.183 46 10.288Z"> -->
<!-- </path> -->
<!-- </svg> -->
<!-- </div> -->
<!-- </a> -->
<!-- <a href="https://www.instagram.com/tumblbug" target="_blank" class="style__FooterShareButton-sc-1bojtns-23 dvIGYX"> -->
<!-- <div name="instagram" class="Icon__SVGICON-sc-12tligs-0 kPBcuc style__SNSLinkIcon-sc-1bojtns-26 hrSRuh"> -->
<!-- <svg viewBox="0 0 48 48"> -->
<!-- <path fill-rule="evenodd" clip-rule="evenodd" d="M36.0761 9.1C36.0761 10.5 37.1785 11.6 38.5816 11.6C39.8846 11.6 41.0872 10.5 41.0872 9.1C41.0872 7.7 39.9848 6.6 38.5816 6.6C37.1785 6.6 36.0761 7.7 36.0761 9.1ZM10.9199 24C10.9199 31.1 16.8331 37 24.0492 37C31.2653 37 37.0783 31.2 37.0783 24C37.0783 16.8 31.1651 10.9 23.949 10.9C16.8331 10.9 10.9199 16.8 10.9199 24ZM11.3208 2H36.7776C41.9893 2 46.0984 6.2 45.9982 11.3V36.7C45.9982 41.8 41.889 46 36.6774 46H11.3208C6.2094 46 2 41.8 2 36.6V11.3C2 6.2 6.2094 2 11.3208 2ZM15.1293 24C15.1293 19.1 19.1383 15.1 24.0492 15.1C29.0604 15.1 32.9691 19.1 32.9691 24C32.9691 28.9 28.9602 32.9 24.0492 32.9C19.1383 32.9 15.1293 28.9 15.1293 24Z"> -->
<!-- </path> -->
<!-- </svg> -->
<!-- </div> -->
<!-- </a> -->
<!-- <a href="https://post.naver.com/tumblbug_n" target="_blank" class="style__FooterShareButton-sc-1bojtns-23 dvIGYX"> -->
<!-- <div name="naver" class="Icon__SVGICON-sc-12tligs-0 kPBcuc style__SNSLinkIcon-sc-1bojtns-26 hrSRuh"> -->
<!-- <svg viewBox="0 0 48 48"> -->
<!-- <path fill-rule="evenodd" clip-rule="evenodd" d="M31 4V24.1537L17.001 4H2V44H17.001V23.7455L31 43.8982H46V4H31Z"> -->
<!-- </path> -->
<!-- </svg> -->
<!-- </div> -->
<!-- </a> -->
<!-- <a href="https://brunch.co.kr/@tumblbug" target="_blank" class="style__FooterShareButton-sc-1bojtns-23 dvIGYX"> -->
<!-- <div name="brunch" class="Icon__SVGICON-sc-12tligs-0 kPBcuc style__SNSLinkIcon-sc-1bojtns-26 hrSRuh"> -->
<!-- <svg viewBox="0 0 48 48"> -->
<!-- <path fill-rule="evenodd" clip-rule="evenodd" d="M32.0692 11.9768C31.4321 13.9027 30.2707 15.4537 28.6353 16.6481C28.3454 16.8606 28.0418 17.053 27.7273 17.2525L27.7272 17.2525C27.5803 17.3456 27.431 17.4402 27.2796 17.5392C27.5757 17.9993 27.5124 18.4659 27.2512 18.872C26.9542 19.3349 26.6159 19.785 26.2263 20.1709C24.0208 22.359 22.1646 24.8065 20.6952 27.5712C20.7293 27.5448 20.7646 27.5196 20.7998 27.4943C20.8762 27.4396 20.9526 27.3849 21.0178 27.3191C22.0647 26.2777 23.1528 25.2841 24.4068 24.4902C25.3078 23.9201 26.2538 23.4571 27.341 23.3682C27.4033 23.3627 27.4666 23.3582 27.5298 23.3563C29.0698 23.3141 29.8747 24.2207 29.6721 25.747C29.5043 27.0056 28.8654 28.0121 28.0065 28.8976C26.1338 30.8281 23.8265 31.9941 21.2378 32.6009C20.1012 32.8676 18.9352 33.0189 17.7747 33.1582C17.3136 33.2141 17.0661 33.4195 16.9057 33.8063C16.8976 33.8258 16.8887 33.8453 16.8798 33.865C16.8513 33.9275 16.8226 33.9908 16.8177 34.0556C16.7618 34.8275 16.2319 35.1786 15.6003 35.4462L15.4777 35.4979L15.4777 35.4979C15.1427 35.6394 14.8051 35.7819 14.4261 35.8807C14.7036 35.1769 15.0781 34.5344 15.4532 33.8911C15.658 33.5398 15.8629 33.1883 16.0523 32.8264L15.9194 32.7334L15.9179 32.7324C15.6391 32.5374 15.3597 32.3419 15.0714 32.1389C15.1675 31.9696 15.2398 31.8415 15.3121 31.7134L15.3125 31.7127C15.504 31.8098 15.6877 31.9033 15.8707 31.9964C16.0433 32.0843 16.2152 32.1718 16.3923 32.2617C16.5933 31.9151 16.7924 31.5724 16.99 31.2322L16.9913 31.2299C17.4487 30.4426 17.8981 29.6689 18.3439 28.893C18.9862 27.7759 19.6253 26.657 20.2644 25.5381C21.6738 23.0706 23.0832 20.6031 24.5268 18.1561C25.6919 16.1816 26.9533 14.2547 28.5666 12.6066C29.1954 11.9631 29.9379 11.4222 30.6703 10.8915C31.0434 10.622 31.5201 10.303 31.9839 10.677C32.3967 11.0084 32.2413 11.4676 32.1025 11.8776C32.0911 11.9111 32.0799 11.9441 32.0692 11.9768ZM23.9998 1.99982C11.8493 1.99982 1.99976 11.8494 1.99976 23.9998C1.99976 36.1502 11.8493 45.9998 23.9998 45.9998C36.1502 45.9998 45.9998 36.1502 45.9998 23.9998C45.9998 11.8494 36.1502 1.99982 23.9998 1.99982ZM25.8687 17.937L26.2085 17.3788C26.2322 17.415 26.2479 17.4385 26.259 17.455C26.2733 17.4761 26.2798 17.4859 26.2855 17.4962C26.6686 18.2267 26.2836 18.7208 25.7822 19.1975C25.4518 19.5113 25.132 19.8372 24.8124 20.163L24.8123 20.163C24.6745 20.3035 24.5367 20.444 24.398 20.5835C24.3669 20.5587 24.3357 20.5331 24.3045 20.5074C24.8221 19.6567 25.3402 18.8054 25.8687 17.937ZM17.8424 32.4568C17.826 32.4272 17.8095 32.3974 17.7933 32.3672C17.9915 32.1046 18.1873 31.8402 18.3832 31.5757C18.8148 30.9927 19.2464 30.4098 19.7036 29.8473C21.2234 27.9801 22.9193 26.2998 25.0258 25.0871C25.4062 24.8671 25.8095 24.6828 26.2156 24.516C26.431 24.4262 26.6758 24.3812 26.9114 24.3657C27.5512 24.3253 27.8784 24.6636 27.8326 25.3025C27.7602 26.3172 27.3211 27.1917 26.7289 27.9911C25.1404 30.1306 22.9688 31.3736 20.4232 32.0061C19.8375 32.1519 19.2423 32.2606 18.6472 32.3694L18.6469 32.3695C18.389 32.4166 18.1311 32.4638 17.8739 32.5139L17.8424 32.4568ZM30.7989 11.8506C29.1581 13.4722 27.7217 15.2615 26.4347 17.1801C28.4156 15.8372 30.0363 14.1954 30.7989 11.8506Z"> -->
<!-- </path> -->
<!-- </svg> -->
<!-- </div> -->
<!-- </a> -->
<!-- </div> -->
<!-- </div> -->
<!-- <div class="style__FooterNotify-sc-1bojtns-24 bTJEFA"> -->
<!-- <div class="style__FooterNotifyText-sc-1bojtns-25 hSugEc">텀블벅은 플랫폼 제공자로서 프로젝트의 당사자가 아니며, 직접적인 통신판매를 진행하지 않습니다. 프로젝트의 완수 및 선물제공의 책임은 해당 프로젝트의 창작자에게 있으며, 프로젝트와 관련하여 후원자와 발생하는 법적 분쟁에 대한 책임은 해당 창작자가 부담합니다.</div> -->
<!-- </div> -->
<!-- </div> -->


</div>



<!-- <div class="common-Layer tbb"> -->
<!-- </div> -->



<div class="common-Layer tbb"><div class="Layer__LayerWrapper-sc-19y4mvy-0 kUAEdo"><div class="FilterUIModal__ModalContainer-sc-95h3ir-0 faghXt"><div class="FilterUIModal__ModalWraper-sc-95h3ir-1 kEGcVu"><header class="FilterUIModal__Header-sc-95h3ir-2 fouCi modal-header"><div class="FilterUIModal__HeaderWrapper-sc-95h3ir-3 fpLQRU"><button class="FilterUIModal__HeaderNavButton-sc-95h3ir-4 cZOMhL"><i class="FilterUIModal__NestedIcon-sc-95h3ir-5 dDiFKg _1QY7TzdLHKX3-BKPDNNYKF _1XlDYEGI6NQt_YZkSA5u6N _36JoJH6uhmIKdE1bWDYUlM"></i></button>달성률</div></header><div class="FilterUIModal__ModalContent-sc-95h3ir-6 cnzAHQ"><div class="FilterUIPresetWithRange__FilterPresetWithRange-sc-187gsyo-0 hxceuH"><div class="FilterComboList__ComboListWrapper-sc-1dy5cz7-0 kTJhRo FilterUIPresetWithRange__FilterComboListWrapper-sc-187gsyo-1 jKGUjM"><div class="FilterComboList__SelectItem-sc-1dy5cz7-1 cuuQUM">전체보기</div><div class="FilterComboList__SelectItem-sc-1dy5cz7-1 cJCVrl">75% 이하</div><div class="FilterComboList__SelectItem-sc-1dy5cz7-1 cJCVrl">75% ~ 100%</div><div class="FilterComboList__SelectItem-sc-1dy5cz7-1 cJCVrl">100% 이상</div></div><div class="FilterUIPresetWithRange__FilterUIRangeWrapper-sc-187gsyo-2 bpkXxy"><div class="FilterUIPresetWithRange__Title-sc-187gsyo-5 exgiXp">직접 입력</div><div class="FilterUIPresetWithRange__RangeWrapper-sc-187gsyo-3 liLMij"><span class="FilterUIInput__InputWrapper-sc-1g1rwo7-0 hoDSPq" style="margin-right: 7px; flex: 1 1 0%;"><input type="text" pattern="[0-9]*" min="0" max="9999" placeholder="" maxlength="5" class="FilterUIInput__InputComponent-sc-1g1rwo7-1 fHjjDc" value=""><span class="FilterUIInput__UnitComponent-sc-1g1rwo7-2 fMQjmL">%</span></span>-<span class="FilterUIInput__InputWrapper-sc-1g1rwo7-0 hoDSPq" style="margin-left: 7px; flex: 1 1 0%;"><input type="text" pattern="[0-9]*" min="0" max="9999" placeholder="" maxlength="5" class="FilterUIInput__InputComponent-sc-1g1rwo7-1 fHjjDc" value=""><span class="FilterUIInput__UnitComponent-sc-1g1rwo7-2 fMQjmL">%</span></span></div><button disabled="" class="FilterUIPresetWithRange__FilterUIRangeConfirmButton-sc-187gsyo-4 fHumWM"><span>입력값 적용</span></button></div></div></div></div></div></div></div>


</div>
<!--       <script type="application/javascript" src="https://d2om2e6rfn032x.cloudfront.net/wpa/bundle.app.858e1b77f5d30fd90b67.js"> -->
<!-- </script> -->
<!--       <script> -->
//       if (!(window.navigator.userAgent.match(/MSIE|Internet Explorer|Trident/i))) {
//         const s = document.createElement('script');
//         s.type = 'text/javascript';
//         s.src = 'https://appleid.cdn-apple.com/appleauth/static/jsapi/appleid/1/en_US/appleid.auth.js';
//         s.charset = 'UTF-8';
//         const x = document.querySelector('body');
//         x.appendChild(s, x);
//       }
<!--       </script> -->
<!-- <script type="text/javascript" src="https://appleid.cdn-apple.com/appleauth/static/jsapi/appleid/1/en_US/appleid.auth.js" charset="UTF-8"> -->
<!-- </script> -->
    
  
<div id="ch-plugin" class="notranslate">      <div id="ch-plugin-entry">
<div style="display: block !important;">
</div>
</div>      <div id="ch-plugin-script" style="display:none;">        <iframe id="ch-plugin-script-iframe" title="Channel chat" style="position:relative!important;height:100%!important;width:100%!important;border:none!important;">
</iframe>      </div>    <style data-styled="active" data-styled-version="5.3.9">
</style>
</div>
<div id="criteo-tags-div" style="display: none;">
<%-- <iframe src="https://gum.criteo.com/syncframe?topUrl=tumblbug.com&amp;origin=onetag#{&quot;bundle&quot;:{&quot;origin&quot;:3,&quot;value&quot;:&quot;bfDL9V9qMHhNYlNaaCUyRlUlMkYlMkJXbG9ZYzB6amxoS0NIWmtNUnJKRExkQWdaYXJCU1dHWnVnbVdzYVpBNllIWmYzZzBFWEJpMmV0MSUyRlBBdlNNblZndXQ1Zmx3ZG52WFhXa1lzcTVEV0Zxbll0WWFDVEFjeFQ4b0pjTHY3QWlNU3hJQ3klMkZJVldNTmFaZiUyRlUwZXBaaDVoTWIzR1pJeDJDYUtNWWxHRDZFYkRyTnMzYU9VbkxEJTJGQ1BYU1EzSTBYZU15SzBEWGlMMTZGb1RZN0klMkJLUHJrZ0MlMkJrMzYxblZBJTNEJTNE&quot;},&quot;cw&quot;:true,&quot;optout&quot;:{&quot;origin&quot;:0,&quot;value&quot;:null},&quot;origin&quot;:&quot;onetag&quot;,&quot;sid&quot;:{&quot;origin&quot;:0,&quot;value&quot;:null},&quot;tld&quot;:&quot;tumblbug.com&quot;,&quot;topUrl&quot;:&quot;tumblbug.com&quot;,&quot;version&quot;:&quot;5_20_0&quot;,&quot;ifa&quot;:{&quot;origin&quot;:0,&quot;value&quot;:null},&quot;lsw&quot;:true,&quot;pm&quot;:0}" id="criteo-syncframe-onetag" width="0" height="0" frameborder="0" style="border-width:0px; margin:0px; display:none" title="Criteo GUM iframe"> --%>
<!-- </iframe> -->
</div>
<!-- <script type="text/javascript" id="" src="//wcs.naver.net/wcslog.js"> -->
<!-- </script> -->
<!-- <script type="text/javascript" id="" charset="UTF-8" src="//t1.daumcdn.net/adfit/static/kp.js"> -->
<!-- </script> -->
<!-- <script type="text/javascript" id="">(function(a,e,b,f,g,c,d){a[b]=a[b]||function(){(a[b].q=a[b].q||[]).push(arguments)};c=e.createElement(f);c.async=1;c.src="https://www.clarity.ms/tag/"+g;d=e.getElementsByTagName(f)[0];d.parentNode.insertBefore(c,d)})(window,document,"clarity","script","i2k3prusn1");</script>  -->
<!-- <script type="text/javascript" id="">if(!wcs_add)var wcs_add={};wcs_add.wa="s_1e299d605425";if(!_nasa)var _nasa={};wcs.inflow();wcs_do(_nasa);</script> -->
<!-- <script type="text/javascript" id="">kakaoPixel("6239788973309080235").pageView();</script> -->
<!-- <iframe height="0" width="0" title="Criteo DIS iframe" style="display: none;"> -->
<!-- </iframe> -->
<!-- <iframe allow="join-ad-interest-group" height="0" width="0" title="Criteo Fledge iframe" src="https://fledge.as.criteo.com/interest-group?data=xruChnxUd3hsT3ZYK1dNdjBCcVErOFMxemNURC8xYkJsNWw2SExNNGV5OFBMNHZRWmVUMzgreXJ4cExnTzBLV2VwYWNDeUZQVGZQa3JsY3FCdnZnS04raEw0L2xzNkZTYmZVb1ZVNk9oclVoS0RuYz18" style="display: none;"> -->
<!-- </iframe> -->
<!-- <iframe height="0" width="0" title="Criteo DIS iframe" style="display: none;"> -->
<!-- </iframe> -->
<!-- <iframe allow="join-ad-interest-group" height="0" width="0" title="Criteo Fledge iframe" src="https://fledge.as.criteo.com/interest-group?data=TGptVXxUd3hsT3ZYK1dNdjBCcVErOFMxemNZYU9VSVBxV0lKZmhJelVka0M1bmZtYU1iUW02eTI5dE1qQlltVFBkYyttek1lTno0a0NUL3RGNTJxWW5Wb0RLUlovcXA4MEdPRXRaNTZVbDRFUXlrYz18" style="display: none;"> -->
<!-- </iframe> -->
<!-- <iframe height="0" width="0" title="Criteo DIS iframe" style="display: none;"> -->
<!-- </iframe> -->
<!-- <iframe allow="join-ad-interest-group" height="0" width="0" title="Criteo Fledge iframe" src="https://fledge.as.criteo.com/interest-group?data=PE4ljXxUd3hsT3ZYK1dNdjBCcVErOFMxemNRTWtiZ2FtV1BiVVZqOU56NWg2OVZQQkpGTGlON0FJYUV4R052OVpXbDJ4TkJRQWpvT1p1NjYxRms2NVNxQ0doT0h4bmpoRkpwK0xpTlFvc0VKZVZvbz18" style="display: none;"> -->
<!-- </iframe> -->
<!-- <img src="https://t.co/1/i/adsct?bci=4&amp;eci=3&amp;event=%7B%7D&amp;event_id=c00e58d7-4563-4dc9-ac11-8eaee285a1db&amp;integration=gtm&amp;p_id=Twitter&amp;p_user_id=0&amp;pl_id=d2d2b5ae-e4c4-41a1-a41c-7adbf60ac643&amp;tw_document_href=https%3A%2F%2Ftumblbug.com%2Fdiscover%3FprojectSort%3Dpopular%26ongoing%3DonGoing&amp;tw_iframe_status=0&amp;txn_id=o4eav&amp;type=javascript&amp;version=2.3.29" height="1" width="1" style="display: none;"> -->
<!-- <img src="https://analytics.twitter.com/1/i/adsct?bci=4&amp;eci=3&amp;event=%7B%7D&amp;event_id=c00e58d7-4563-4dc9-ac11-8eaee285a1db&amp;integration=gtm&amp;p_id=Twitter&amp;p_user_id=0&amp;pl_id=d2d2b5ae-e4c4-41a1-a41c-7adbf60ac643&amp;tw_document_href=https%3A%2F%2Ftumblbug.com%2Fdiscover%3FprojectSort%3Dpopular%26ongoing%3DonGoing&amp;tw_iframe_status=0&amp;txn_id=o4eav&amp;type=javascript&amp;version=2.3.29" height="1" width="1" style="display: none;"> -->
<!-- <img src="https://t.co/1/i/adsct?bci=4&amp;eci=4&amp;event=%7B%7D&amp;event_id=8d15f66f-8328-4ed4-ae9f-783d15075f9d&amp;integration=gtm&amp;p_id=Twitter&amp;p_user_id=0&amp;pl_id=d2d2b5ae-e4c4-41a1-a41c-7adbf60ac643&amp;tw_document_href=https%3A%2F%2Ftumblbug.com%2Fdiscover%3FprojectSort%3Dpopular%26ongoing%3DonGoing&amp;tw_iframe_status=0&amp;txn_id=tw-o4eav-odm20&amp;type=javascript&amp;version=2.3.29" height="1" width="1" style="display: none;"> -->
<!-- <img src="https://analytics.twitter.com/1/i/adsct?bci=4&amp;eci=4&amp;event=%7B%7D&amp;event_id=8d15f66f-8328-4ed4-ae9f-783d15075f9d&amp;integration=gtm&amp;p_id=Twitter&amp;p_user_id=0&amp;pl_id=d2d2b5ae-e4c4-41a1-a41c-7adbf60ac643&amp;tw_document_href=https%3A%2F%2Ftumblbug.com%2Fdiscover%3FprojectSort%3Dpopular%26ongoing%3DonGoing&amp;tw_iframe_status=0&amp;txn_id=tw-o4eav-odm20&amp;type=javascript&amp;version=2.3.29" height="1" width="1" style="display: none;"> -->




</body>
</html>