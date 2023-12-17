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

<link href="${pageContext.request.contextPath }/resources/soneson/css/main/nogada.css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/resources/soneson/css/main/infoNogada.css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/resources/soneson/css/main/detailNogada.css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/resources/main/css/tumble/app.81892d40d14a84165880.css" rel="stylesheet">
 
<link rel="shortcut icon" href="${pageContext.request.contextPath }/resources/soneson/img/header/son33.ico" type="image/x-icon">
<title>손에손</title>

<script>
//default Img
function defaultImg(tagId) {
	$("#" + tagId.id).attr('src','${pageContext.request.contextPath }/resources/soneson/img/projectList/' + tagId.id + '.png');
}
// function defaultImg(tagId, name) {
// 	console.log(tagId.id);
// 	$("#" + tagId.id).attr('src','${pageContext.request.contextPath }/resources/soneson/img/projectList/' + name + '.png');
// }
</script>

</head>
<body>

<jsp:include page="../inc/header.jsp"></jsp:include>
    
    
    

    
<div id="react-view" class="tbb-only-ff">
	<div class="ProjectIntroduction__ProjectIntroductionBackground-sc-1kf21am-0 eGtYeZ">
		<!-- 여기서부터 시작 -->
		<div class="Container-sc-1p3qvtc-0 cEyyoc">
			<div class="ProjectIntroduction__ProjectIntroductionWrapper-sc-1kf21am-1 ePPrSF">
			
				<div class="ProjectIntroduction__ProjectOutline-sc-1kf21am-2 jqMDnB">
					<div class="ProjectIntroduction__ProjectOutlineInner-sc-1kf21am-3 edHMaW">
						<a href="/discover?tab=category&amp;category=calendar-and-diary">
							<span class="ProjectIntroduction__ProjectCategory-sc-1kf21am-4 gObYWz">${project.category }</span>
						</a>
						<h1 class="ProjectIntroduction__ProjectTitle-sc-1kf21am-5 VbzlC">${project.title }</h1>
					</div>
				</div>
				
				
				
				
				<div class="ProjectIntroduction__ProjectIntroductionMainColumn-sc-1kf21am-6 jUqLs">
					<figure class="ProjectIntroduction__ProjectCoverImageFigure-sc-1kf21am-7 dEXpQY">
						<div class="IntroVisualSlider__StyledIntroVisualSliderWrapper-sc-1h7hyyq-0 lbnhcX">
							<div class="swiper-container swiper-container-initialized swiper-container-horizontal swiper-container-pointer-events">
								
								<div class="swiper-wrapper" style="transform: translate3d(-2565px, 0px, 0px); transition-duration: 0ms;">
									<div class="swiper-slide" style="width: 855px;">
										<div class="IntroVisualSlider__ProjectCoverVideo-sc-1h7hyyq-1 klppFc">
											<div class="ProjectIntroductionVideoPlayer__StyledVideoWrapper-sc-1rpvirp-0 dqRjJQ _13KHfN73YmQgsYHxXvuh_J ">
<!-- 												<video controls="" autoplay="" playsinline=""> -->
<!-- 													<source type="video/mp4; codecs='avc1.64001E, mp4a.40.2'" src="https://d2f45jiwzkt4py.cloudfront.net/2cd15f2a-93d1-4d0a-bda7-a9464b4e75ed/95635ffc-596a-4378-97c7-38fef93c1006-high.mp4"> -->
<!-- 													<source type="video/mp4; codecs='avc1.42E01E, mp4a.40.2'" src="https://d2f45jiwzkt4py.cloudfront.net/2cd15f2a-93d1-4d0a-bda7-a9464b4e75ed/95635ffc-596a-4378-97c7-38fef93c1006-base.mp4"> -->
<!-- 													<source type="video/mp4" src="https://d2f45jiwzkt4py.cloudfront.net/2cd15f2a-93d1-4d0a-bda7-a9464b4e75ed/95635ffc-596a-4378-97c7-38fef93c1006-high.mp4"> -->
<!-- 													<source type="video/webm" src="https://d2f45jiwzkt4py.cloudfront.net/2cd15f2a-93d1-4d0a-bda7-a9464b4e75ed/95635ffc-596a-4378-97c7-38fef93c1006.webm"> -->
<!-- 												</video> -->
											</div>
										</div>
									</div>
									<div class="swiper-slide" style="width: 855px;">
										<div class="IntroVisualSlider__ProjectCoverImage-sc-1h7hyyq-2 eKEnRF">
											<img src="https://tumblbug-pci.imgix.net/4b47313543b96b2826155b31ab4f1f9a6bacb921/14bec61d57bd5c1a1f98d774245389da35067770/cf80649689edf6cb074059992b33969d03900fed/3b8f5a04-3807-4a27-a368-3761e9bc0319.jpeg?ixlib=rb-1.1.0&amp;w=1240&amp;h=930&amp;auto=format%2Ccompress&amp;lossless=true&amp;fit=crop&amp;s=11d863b80810c70b4812248836b49b79" alt="프로젝트 커버 이미지">
										</div>
									</div>
									<div class="swiper-slide swiper-slide-prev" style="width: 855px;">
										<div class="IntroVisualSlider__ProjectCoverImage-sc-1h7hyyq-2 eKEnRF">
											<img src="https://tumblbug-pci.imgix.net/4b47313543b96b2826155b31ab4f1f9a6bacb921/14bec61d57bd5c1a1f98d774245389da35067770/cf80649689edf6cb074059992b33969d03900fed/1172b590-656d-4f3a-b0d3-457e84bea5f5.jpeg?ixlib=rb-1.1.0&amp;w=1240&amp;h=930&amp;auto=format%2Ccompress&amp;lossless=true&amp;fit=crop&amp;s=a7362e130193d59e48d3b7401cbebf2a" alt="프로젝트 커버 이미지">
										</div>
									</div>
									<div class="swiper-slide swiper-slide-active" style="width: 600px;">
<!-- 									<div class="swiper-slide swiper-slide-active" style="width: 855px;"> -->
										<div class="IntroVisualSlider__ProjectCoverImage-sc-1h7hyyq-2 eKEnRF">
											<c:choose>
											    <c:when test="${fn:contains(project.img_main, 'https')}">
											        <img src="${project.img_main}" alt="프로젝트 커버 이미지" style="width:100%; height:100%">
											    </c:when>
											    <c:otherwise>
											        <img src="${pageContext.request.contextPath }/resources/upload/${project.img_main }" alt="프로젝트 커버 이미지 DB">
<%-- 											        <img src="${pageContext.request.contextPath }/resources/upload/2023/12/11/79c3f999_esy_bonbon.jpg" alt="프로젝트 커버 이미지 DB"> --%>
											    </c:otherwise>
											</c:choose>
											
<%-- 											<c:choose> --%>
<%-- 												<c:when test="${not empty pro.pro_profile }"> --%>
<%-- 													<img src="${pageContext.request.contextPath }/resources/upload/${pro.pro_profile }" id="profile_preview" width="630px" alt="${pro.pro_profile }"> --%>
<%-- 												</c:when> --%>
<%-- 												<c:otherwise> --%>
<!-- 													<img src="" id="profile_preview" width="180px"> -->
<%-- 												</c:otherwise> --%>
<%-- 											</c:choose> --%>
										</div>
									</div>
									<div class="swiper-slide swiper-slide-next" style="width: 855px;">
										<div class="IntroVisualSlider__ProjectCoverImage-sc-1h7hyyq-2 eKEnRF">
											<img src="https://tumblbug-pci.imgix.net/4b47313543b96b2826155b31ab4f1f9a6bacb921/14bec61d57bd5c1a1f98d774245389da35067770/cf80649689edf6cb074059992b33969d03900fed/e6ba39cd-83ee-418b-8565-4b50352b303d.jpeg?ixlib=rb-1.1.0&amp;w=1240&amp;h=930&amp;auto=format%2Ccompress&amp;lossless=true&amp;fit=crop&amp;s=7c8292aebe6ef18ccd0e67fca000cce7" alt="프로젝트 커버 이미지">
										</div>
									</div>
								</div>
							
								<div class="swiper-pagination swiper-pagination-bullets">
									<span class="swiper-pagination-bullet">
									</span>
									<span class="swiper-pagination-bullet">
									</span>
									<span class="swiper-pagination-bullet">
									</span>
									<span class="swiper-pagination-bullet swiper-pagination-bullet-active">
									</span>
									<span class="swiper-pagination-bullet">
									</span>
								</div>
							</div>
						
<!-- 							<div class="swiper-button-prev"> -->
<!-- 								<div name="arrow1-left" class="Icon__SVGICON-sc-12tligs-0 kPBcuc"> -->
<!-- 									<svg viewBox="0 0 48 48"> -->
<!-- 										<path fill-rule="evenodd" clip-rule="evenodd" d="M32.8912 45.3014L12 23.913L32.8912 2.52471C33.5866 1.8251 34.7804 1.8251 35.4777 2.52471C36.1741 3.22333 36.1741 4.42368 35.4777 5.22224L17.1731 23.913L35.4777 42.7018C36.1741 43.4024 36.1741 44.6018 35.4777 45.4013C35.0788 45.8011 34.6819 46 34.1845 46C33.7855 45.9011 33.2881 45.7002 32.8912 45.3014Z"> -->
<!-- 										</path> -->
<!-- 									</svg> -->
<!-- 								</div> -->
<!-- 							</div> -->
<!-- 							<div class="swiper-button-next"> -->
<!-- 								<div name="arrow1-right" class="Icon__SVGICON-sc-12tligs-0 kPBcuc"> -->
<!-- 									<svg viewBox="0 0 48 48"> -->
<!-- 										<path fill-rule="evenodd" clip-rule="evenodd" d="M13.9071 46C13.4118 46 12.9164 45.8001 12.6192 45.4003C11.9257 44.7007 11.9257 43.5014 12.6192 42.7019L30.8493 24.0125L12.5201 5.22317C11.8266 4.52357 11.8266 3.32425 12.5201 2.5247C13.2136 1.8251 14.3034 1.8251 15.096 2.5247L36 24.0125L15.195 45.4003C14.7988 45.8001 14.3034 46 13.9071 46Z"> -->
<!-- 										</path> -->
<!-- 									</svg> -->
<!-- 								</div> -->
<!-- 							</div> -->
						</div>
					</figure>
				</div>
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				<aside class="ProjectIntroduction__ProjectIntroductionSubColumn-sc-1kf21am-10 gLbMmE">
					<div class="ProjectIntroduction__FundingStatus-sc-1kf21am-11 HbjsT">
						<div class="ProjectIntroduction__Metric-sc-1kf21am-12 fXsdBd">
							<div class="ProjectIntroduction__StatusTitle-sc-1kf21am-13 fPBHBs">모인금액</div>
							<div class="ProjectIntroduction__StatusValue-sc-1kf21am-14 ePQNCs">
								<span class="ProjectIntroduction__Price-sc-1kf21am-15 kzkxoz">${project.now_amount }<span class="ProjectIntroduction__Small-sc-1kf21am-17 hPYEXD">원</span>
								</span>
								<span class="ProjectIntroduction__FundingRate-sc-1kf21am-16 hIweQS">${project.goal_rate}<!-- -->%</span>
							</div>
						</div>
						<div class="ProjectIntroduction__Metric-sc-1kf21am-12 fXsdBd">
							<div class="ProjectIntroduction__StatusTitle-sc-1kf21am-13 fPBHBs">남은시간</div>
<%-- 							<div class="ProjectIntroduction__StatusValue-sc-1kf21am-14 ePQNCs dday">${project.dday }<span class="ProjectIntroduction__Small-sc-1kf21am-17 hPYEXD">일</span></div> --%>
							<c:choose>
						        <c:when test="${project.dday lt 0}">
						            <div class="ProjectIntroduction__StatusValue-sc-1kf21am-14 ePQNCs dday">0<span class="ProjectIntroduction__Small-sc-1kf21am-17 hPYEXD">초</span></div>
						        </c:when>
						        <c:otherwise>
						            <div class="ProjectIntroduction__StatusValue-sc-1kf21am-14 ePQNCs dday">${project.dday }<span class="ProjectIntroduction__Small-sc-1kf21am-17 hPYEXD">일</span></div>
						        </c:otherwise>
						    </c:choose>
						
						
						
						</div>
						<div class="ProjectIntroduction__Metric-sc-1kf21am-12 fXsdBd">
							<div class="ProjectIntroduction__StatusTitle-sc-1kf21am-13 fPBHBs">후원자</div>
							<div class="ProjectIntroduction__StatusValue-sc-1kf21am-14 ePQNCs">${project.donor}<span class="ProjectIntroduction__Small-sc-1kf21am-17 hPYEXD">명</span></div>
						</div>
					</div>

					
					<div class="FundingInformation__Wrap-sc-84xkqs-0 jGpUCY">
						<div class="FundingInformation__InfoWrap-sc-84xkqs-1 dLRgOT">
							<dl class="FundingInformation__InfoItem-sc-84xkqs-2 dsitt">
								<dt class="FundingInformation__Title-sc-84xkqs-3 cSBHrX">목표금액</dt>
								<dd class="FundingInformation__Desc-sc-84xkqs-4 Hysth">${project.goal_amount }원</dd>
							</dl>
							<dl class="FundingInformation__InfoItem-sc-84xkqs-2 dsitt">
								<dt class="FundingInformation__Title-sc-84xkqs-3 cSBHrX">펀딩 기간</dt>
								<dd class="FundingInformation__Desc-sc-84xkqs-4 Hysth">${project.start_date} ~ ${project.end_date}
								
									<c:choose>
										<c:when test="${project.dday lt 0}">
											<span class="FundingInformation__DdayLabel-sc-84xkqs-5 dMFBNs">마감</span>
										</c:when>
										<c:otherwise>
											<span class="FundingInformation__DdayLabel-sc-84xkqs-5 cfyFBE">${project.dday }일 남음</span>
								        </c:otherwise>
									</c:choose>
								
<%-- 									<span class="FundingInformation__DdayLabel-sc-84xkqs-5 cfyFBE">${project.dday }일 남음</span> --%>
								</dd>
							</dl>
							<dl class="FundingInformation__InfoItem-sc-84xkqs-2 dsitt">
								<dt class="FundingInformation__Title-sc-84xkqs-3 cSBHrX">결제</dt>
								<dd class="FundingInformation__Desc-sc-84xkqs-4 Hysth">목표금액 달성시 ${project.pay_date}에 결제 진행</dd>
							</dl>
						</div>
					</div>
					
					<div class="ProjectIntroduction__ProjectButtons-sc-1kf21am-18 kmnGjD">
						<div class="ProjectIntroduction__ProjectButtonsInner-sc-1kf21am-19 jDhSeE">
							<div class="ProjectIntroduction__PrimaryButton-sc-1kf21am-20 gpBnlK">
								<div class="PledgeButton__Wrapper-sc-19585pn-0 kzJnkH">
									<button class="Button-sc-16r5v81-0 PledgeButton__StyledButton-sc-19585pn-1 eXFpDs hrOCcK" id="scrollButton">이 프로젝트 후원하기</button>
								</div>
							</div>
							
							<div class="Tooltip__TooltipWrapper-sc-188aamo-0 cwWHaU ProjectIntroduction__StyledTooltip-sc-1kf21am-21 boAevj">
								<div class="ProjectIntroduction__SecondaryButton-sc-1kf21am-22 fjOsjq">
									<div class="LikeButton__Wrapper-sc-1fgutj5-0 hoXFbI DetailLikeButton__StyledLikeButton-v1ofbi-0 dRjoPj">
										<div class="DetailLikeButton__StyledDetailLikeButton-v1ofbi-1 dOAQhO">
											<div name="like-line" class="Icon__SVGICON-sc-12tligs-0 kPBcuc">
												<svg viewBox="0 0 38 34" fill="none">
													<path fill-rule="evenodd" clip-rule="evenodd" d="M18.9996 5.62299L15.6051 2.55614C12.2106 -0.510215 6.56995 0.17753 3.48147 3.57849C-0.397666 7.66674 -0.397863 14.5859 3.70675 18.9121L19 33.8811L34.2923 18.9121C38.3969 14.5859 38.3971 7.66747 34.5176 3.57849C31.4291 0.17753 25.7888 -0.510094 22.3942 2.55614L18.9996 5.62299ZM32.0081 16.6701C34.9446 13.533 34.8523 8.58052 32.1962 5.78099L32.1721 5.75565L32.1487 5.72978C30.0533 3.42248 26.4219 3.23047 24.5394 4.93062L18.9996 9.93557L13.4601 4.93076C11.5777 3.2306 7.94577 3.42244 5.85042 5.72978L5.82689 5.75569L5.8028 5.78108C3.14716 8.57988 3.05453 13.533 5.99094 16.6701L18.9999 29.4033L32.0081 16.6701Z" fill="#6D6D6D">
													</path>
												</svg>
											</div>
											<span>126</span>
										</div>
									</div>
								</div>
							</div>
							
							<div class="ProjectIntroduction__TertiaryButton-sc-1kf21am-26 fMjnaE">
								<div class="ProjectIntroduction__ShareSNSButtonWrap-sc-1kf21am-23 hOlLMG">
									<button type="button" class="Button-sc-16r5v81-0 ProjectIntroduction__ShareSNSButton-sc-1kf21am-24 ProjectIntroduction__StyledShareSNSButton-sc-1kf21am-25 biBwQk fWIYyB oAZmP">
										<div name="share-2" class="Icon__SVGICON-sc-12tligs-0 kPBcuc">
											<svg viewBox="0 0 32 35" fill="none">
												<path fill-rule="evenodd" clip-rule="evenodd" d="M25.5 9.8C27.3226 9.8 28.8 8.32254 28.8 6.5C28.8 4.67746 27.3226 3.2 25.5 3.2C23.6775 3.2 22.2 4.67746 22.2 6.5C22.2 8.32254 23.6775 9.8 25.5 9.8ZM25.5 13C29.0899 13 32 10.0899 32 6.5C32 2.91015 29.0899 0 25.5 0C21.9102 0 19 2.91015 19 6.5C19 7.00407 19.0574 7.49475 19.166 7.96584L13.2462 11.8889L10.9897 13.2996C9.82276 12.1847 8.24135 11.4999 6.5 11.4999C2.91015 11.4999 0 14.4101 0 17.9999C0 21.5898 2.91015 24.4999 6.5 24.4999C8.22679 24.4999 9.79631 23.8266 10.9603 22.7281L19.0878 27.4291C19.0301 27.7775 19 28.1352 19 28.4999C19 32.0898 21.9102 34.9999 25.5 34.9999C29.0899 34.9999 32 32.0898 32 28.4999C32 24.9101 29.0899 21.9999 25.5 21.9999C23.4257 21.9999 21.5784 22.9716 20.3882 24.4846L12.6783 20.0251C12.8871 19.3878 13 18.7071 13 17.9999C13 17.3061 12.8913 16.6376 12.6899 16.0106L14.9785 14.5798L20.6465 10.8236C21.8369 12.159 23.5703 13 25.5 13ZM6.5 21.2999C8.32254 21.2999 9.8 19.8225 9.8 17.9999C9.8 16.1774 8.32254 14.6999 6.5 14.6999C4.67746 14.6999 3.2 16.1774 3.2 17.9999C3.2 19.8225 4.67746 21.2999 6.5 21.2999ZM28.8 28.4999C28.8 30.3225 27.3226 31.7999 25.5 31.7999C23.6775 31.7999 22.2 30.3225 22.2 28.4999C22.2 26.6774 23.6775 25.1999 25.5 25.1999C27.3226 25.1999 28.8 26.6774 28.8 28.4999Z" fill="#6D6D6D">
												</path>
											</svg>
										</div>
										<span>54</span>
									</button>
								</div>
							</div>
						
						</div>
					</div>
				</aside>
			</div>
		</div>
	</div>

	<span style="font-size:0"></span>
	<div id="contentsNavigation">
		<nav class="style__ProjectContentsNavigation-qovng2-2 kBraqG">
			<div class="style__ProjectContentsNavigationInner-qovng2-3 kxemOF">
				<div class="style__NavLeft-qovng2-4 hGCHxL">
					<a aria-current="page" class="style__NavItem-qovng2-0 cxytbh active" style="color:rgba(0,0,0,1);border-bottom:3px solid rgba(0,0,0,1);padding-bottom:calc(0.5rem - 3px)" href="/baeunmangdeokcats/story?ref=%EA%B2%80%EC%83%89%2F%ED%82%A4%EC%9B%8C%EB%93%9C">프로젝트 계획</a>
					<a class="style__NavItem-qovng2-0 cxytbh" href="/baeunmangdeokcats/community/creator?ref=%EA%B2%80%EC%83%89%2F%ED%82%A4%EC%9B%8C%EB%93%9C">업데이트<span class="style__CommunityPostAmount-ky14bp-7 cbohWb">1</span></a>
					<a class="style__NavItem-qovng2-0 cxytbh" href="/baeunmangdeokcats/community/backer?ref=%EA%B2%80%EC%83%89%2F%ED%82%A4%EC%9B%8C%EB%93%9C">커뮤니티<span class="style__CommunityPostAmount-ky14bp-7 cbohWb">15</span></a>
					<a class="style__NavItem-qovng2-0 cxytbh" href="/baeunmangdeokcats/recommend">추천</a>
				</div>
			</div>
		</nav>
		<!-- fixed bar 픽스드 바 일단 주석 -->
		<!-- <div class="style__FixedBar-ky14bp-6 jKgckz"> -->
		<!-- <nav class="style__ProjectContentsNavigation-ky14bp-2 kgOaoE"> -->
		<!-- <div class="style__ProjectContentsNavigationInner-ky14bp-3 eSUDNT"> -->
		<!-- <div class="style__NavLeft-ky14bp-4 hvkvgV"> -->
		<!-- <a aria-current="page" class="style__NavItem-ky14bp-0 jpkOzP active" href="/baeunmangdeokcats/story?ref=%EA%B2%80%EC%83%89%2F%ED%82%A4%EC%9B%8C%EB%93%9C" style="color: rgb(0, 0, 0); border-bottom: 3px solid rgb(0, 0, 0); padding-bottom: calc(0.5rem - 3px);">프로젝트 계획</a> -->
		<!-- <a class="style__NavItem-ky14bp-0 jpkOzP" href="/baeunmangdeokcats/community/creator?ref=%EA%B2%80%EC%83%89%2F%ED%82%A4%EC%9B%8C%EB%93%9C">업데이트<span class="style__CommunityPostAmount-ky14bp-7 cbohWb">1</span> -->
		<!-- </a> -->
		<!-- <a class="style__NavItem-ky14bp-0 jpkOzP" href="/baeunmangdeokcats/community/backer?ref=%EA%B2%80%EC%83%89%2F%ED%82%A4%EC%9B%8C%EB%93%9C">커뮤니티<span class="style__CommunityPostAmount-ky14bp-7 cbohWb">15</span> -->
		<!-- </a> -->
		<!-- <a class="style__NavItem-ky14bp-0 jpkOzP" href="/baeunmangdeokcats/recommend">추천</a> -->
		<!-- </div> -->
		<!-- </div> -->
		<!-- </nav> -->
		<!-- </div> -->
		<div class="style__FixedBar-qovng2-6 iixTbK">
			<div class="PledgeButton__Wrapper-sc-19585pn-0 gBopSi">
				<div class="Tooltip__TooltipWrapper-sc-188aamo-0 cwWHaU PledgeButton__StyledTooltip-sc-19585pn-5 hhPWzM">
					<div class="LikeButton__Wrapper-sc-1fgutj5-0 hoXFbI DetailLikeButton__StyledLikeButton-v1ofbi-0 dRjoPj">
						<div class="DetailLikeButton__StyledDetailLikeButton-v1ofbi-1 dOAQhO">
							<div name="like-line" class="Icon__SVGICON-sc-12tligs-0 kPBcuc">
								<svg viewBox="0 0 38 34" fill="none">
									<path fill-rule="evenodd" clip-rule="evenodd" d="M18.9996 5.62299L15.6051 2.55614C12.2106 -0.510215 6.56995 0.17753 3.48147 3.57849C-0.397666 7.66674 -0.397863 14.5859 3.70675 18.9121L19 33.8811L34.2923 18.9121C38.3969 14.5859 38.3971 7.66747 34.5176 3.57849C31.4291 0.17753 25.7888 -0.510094 22.3942 2.55614L18.9996 5.62299ZM32.0081 16.6701C34.9446 13.533 34.8523 8.58052 32.1962 5.78099L32.1721 5.75565L32.1487 5.72978C30.0533 3.42248 26.4219 3.23047 24.5394 4.93062L18.9996 9.93557L13.4601 4.93076C11.5777 3.2306 7.94577 3.42244 5.85042 5.72978L5.82689 5.75569L5.8028 5.78108C3.14716 8.57988 3.05453 13.533 5.99094 16.6701L18.9999 29.4033L32.0081 16.6701Z" fill="#6D6D6D">
									</path>
								</svg>
							</div>
							<span>126</span>
						</div>
					</div>
				</div>
			
				<button type="button" class="Button-sc-16r5v81-0 PledgeButton__ShareSNSButton-sc-19585pn-3 PledgeButton__StyledShareSNSButton-sc-19585pn-4 biBwQk fAjRTB hfmokZ">
					<div name="share-2" class="Icon__SVGICON-sc-12tligs-0 kPBcuc">
						<svg viewBox="0 0 32 35" fill="none">
							<path fill-rule="evenodd" clip-rule="evenodd" d="M25.5 9.8C27.3226 9.8 28.8 8.32254 28.8 6.5C28.8 4.67746 27.3226 3.2 25.5 3.2C23.6775 3.2 22.2 4.67746 22.2 6.5C22.2 8.32254 23.6775 9.8 25.5 9.8ZM25.5 13C29.0899 13 32 10.0899 32 6.5C32 2.91015 29.0899 0 25.5 0C21.9102 0 19 2.91015 19 6.5C19 7.00407 19.0574 7.49475 19.166 7.96584L13.2462 11.8889L10.9897 13.2996C9.82276 12.1847 8.24135 11.4999 6.5 11.4999C2.91015 11.4999 0 14.4101 0 17.9999C0 21.5898 2.91015 24.4999 6.5 24.4999C8.22679 24.4999 9.79631 23.8266 10.9603 22.7281L19.0878 27.4291C19.0301 27.7775 19 28.1352 19 28.4999C19 32.0898 21.9102 34.9999 25.5 34.9999C29.0899 34.9999 32 32.0898 32 28.4999C32 24.9101 29.0899 21.9999 25.5 21.9999C23.4257 21.9999 21.5784 22.9716 20.3882 24.4846L12.6783 20.0251C12.8871 19.3878 13 18.7071 13 17.9999C13 17.3061 12.8913 16.6376 12.6899 16.0106L14.9785 14.5798L20.6465 10.8236C21.8369 12.159 23.5703 13 25.5 13ZM6.5 21.2999C8.32254 21.2999 9.8 19.8225 9.8 17.9999C9.8 16.1774 8.32254 14.6999 6.5 14.6999C4.67746 14.6999 3.2 16.1774 3.2 17.9999C3.2 19.8225 4.67746 21.2999 6.5 21.2999ZM28.8 28.4999C28.8 30.3225 27.3226 31.7999 25.5 31.7999C23.6775 31.7999 22.2 30.3225 22.2 28.4999C22.2 26.6774 23.6775 25.1999 25.5 25.1999C27.3226 25.1999 28.8 26.6774 28.8 28.4999Z" fill="#6D6D6D">
							</path>
						</svg>
					</div>
					<span>54</span>
				</button>
				<button class="Button-sc-16r5v81-0 PledgeButton__StyledButton-sc-19585pn-1 kDROMC dLDXzY">이 프로젝트 후원하기</button>
			</div>
		</div>

	</div>
	
	<div class="style__ProjectContentsBackground-qovng2-8 esQUnR">
		<div class="Container-sc-1p3qvtc-0 cEyyoc">
			<div class="style__ProjectContents-qovng2-9 gSdKJj">
				<div class="style__ProjectContentsMainColumn-qovng2-10 hxzuom">
					<div class="style__MainColumnInner-qovng2-12 bhmjON">
					<div class="style__StoryWrap-ygs6af-0 fdxuqF">
					<div class="style__SectionTabsWrap-y9rrh6-4 blvrlR">
					<ul class="style__SectionTabs-y9rrh6-5 gZnims fixed">
					<li>
					<a class="isActive isActive">소개</a>
					</li>
					<li>
					<a class="">예산</a>
					</li>
					<li>
					<a class="">일정</a>
					</li>
					<li>
					<a class="">팀 소개</a>
					</li>
					<li>
					<a class="">선물 설명</a>
					</li>
					<li>
					<a class="">신뢰와 안전</a>
					</li>
					</ul>
					</div>
					<div class="Card-sc-101a3bk-0 ljUlEU">
					<div class="style__StoryCardInner-y9rrh6-1 boXLUs">
					<div id="purpose" class="style__StorySection-ygs6af-7 ktoIwn">
					
					
					
					
					<div class="style__StorySectionTitle-y9rrh6-6 eARawo">프로젝트 소개</div>
					<div class="storyContent">
						 <img src="${pageContext.request.contextPath }/resources/upload/${project.img_content }" id="img_content" alt="프로젝트 내용 이미지" onerror="defaultImg(this)">
					</div>
					
					
					
					
					
					</div>
					<div id="budget" class="style__StorySection-y9rrh6-7 dxcJNl">
					<div class="style__StorySectionTitle-y9rrh6-6 eARawo">프로젝트 예산</div>
					<div class="storyContent">
						 <img src="${pageContext.request.contextPath }/resources/upload/${project.img_budget }" id="img_budget" alt="프로젝트 예산 이미지" onerror="defaultImg(this)">
					</div>
					
					
					</div>
					<div id="schedule" class="style__StorySection-y9rrh6-7 dxcJNl">
					<div class="style__StorySectionTitle-y9rrh6-6 eARawo">프로젝트 일정</div>
					<div class="storyContent">
						 <img src="${pageContext.request.contextPath }/resources/upload/${project.img_sch }" id="img_sch" alt="프로젝트 일정 이미지" onerror="defaultImg(this)">
					</div>
					
					
					
					
					
					</div>
					<div id="introduction" class="style__StorySection-y9rrh6-7 dxcJNl">
					<div class="style__StorySectionTitle-y9rrh6-6 eARawo">프로젝트 팀 소개</div>
					<div class="storyContent">
						<img src="${pageContext.request.contextPath }/resources/upload/${project.img_team }" id="img_team" alt="프로젝트 팀 이미지" onerror="defaultImg(this)">
					</div>
				
				
				
				
					</div>
					<div id="rewardsDescription" class="style__StorySection-y9rrh6-7 dxcJNl">
					<div class="style__StorySectionTitle-y9rrh6-6 eARawo">리워드 설명</div>
					<div class="storyContent">
						<img src="${pageContext.request.contextPath }/resources/upload/${project.img_reward }" id="img_reward" alt="프로젝트 리워드 이미지" onerror="defaultImg(this)">
					</div>
				
				
				
				
				</div>
				
				
				
				
				<div id="refundExchangePolicy" class="style__StorySection-ygs6af-7 ktoIwn">
					<div class="style__StorySectionTitle-ygs6af-6 evGXXa eARawo">신뢰와 안전</div>
					<div class="style__FundingInfoWrap-ygs6af-11 fyAnHx">
						<div class="style__SectionSubTitle-ygs6af-9 iMSRJG">크라우드 펀딩에 대한 안내</div>
						<dl>
							<dt><img alt="" src="/wpa/1f66831ec9af8b200c2861bccde76bd5.png">후원은 구매가 아닌 창의적인 계획에 자금을 지원하는 일입니다.</dt>
							<dd>전자상거래법상 통신판매는 소비자의 청약 전 규격, 제조연월일 등 구체적인 상품정보가 제공 가능한 것을 대상으로 합니다. 따라서 텀블벅에서의 후원은 통신판매에 해당하지 않고, 전자상거래법 및 소비자보호규정(수령 후 7일 내 청약철회 등)이 적용되지 않습니다.</dd>
						</dl>
						<dl>
							<dt><img alt="" src="/wpa/0a4ed12c1a38cc261a6ec633931e12b3.png">프로젝트는 계획과 달리 진행될 수 있습니다.</dt>
							<dd>예상을 뛰어넘는 멋진 결과가 나올 수 있지만 진행 과정에서 계획이 지연, 변경되거나 무산될 수도 있습니다. 본 프로젝트를 완수할 책임과 권리는 창작자에게 있습니다.</dd>
						</dl>
					</div>
					
					<div class="style__FundingUnderstand-ygs6af-12 fQMHco">
						<a href="https://help.tumblbug.com/hc/ko/articles/115010171368" rel="noreferrer" target="_blank">크라우드펀딩·후원 이해하기
							<div name="link2-line" class="Icon__SVGICON-sc-12tligs-0 kPBcuc">
								<svg viewBox="0 0 48 48">
									<path d="M21 10.1C21 10.0448 20.9552 10 20.9 10L7.1 10C7.04477 10 7 10.0448 7 10.1V40.9C7 40.9552 7.04477 41 7.1 41H37.9C37.9552 41 38 40.9552 38 40.9V27.1C38 27.0448 37.9552 27 37.9 27H34.1C34.0448 27 34 27.0448 34 27.1V37H11V14H20.9C20.9552 14 21 13.9552 21 13.9V10.1Z">
									</path>
									<path d="M34.6602 10.5L25.5 10.5V6.5H41.5V22.4C41.5 22.4552 41.4552 22.5 41.4 22.5H37.6C37.5448 22.5 37.5 22.4552 37.5 22.4V13.317L23.3266 27.4904L20.4982 24.6619L34.6602 10.5Z">
									</path>
								</svg>
							</div>
						</a>
					</div>
			
					
					<div class="style__PolicyWrap-ygs6af-10 joCVCp refundPolicy">
						<div class="style__SectionSubTitle-ygs6af-9 iMSRJG">프로젝트 정책</div>
						<div class="policyContents">
							${project.policy }
						</div>
					</div>
					
					<div class="style__PolicyWrap-ygs6af-10 joCVCp refundPolicy">
						<div class="style__SectionSubTitle-ygs6af-9 iMSRJG">예상되는 어려움</div>
						<div class="policyContents">
							- 프로젝트 마감일 후에는 즉시 제작 및 실행에 착수하는 프로젝트 특성상 단순 변심에 의한 후원금 환불이 불가능합니다.
							<br>- 예상 전달일로부터 14일 이상 선물 전달이 이뤄지지 않을 경우, 환불을 원하시는 분들께는 수수료를 제한 후원금을 환불해 드립니다.
							<br>(플랫폼 수수료: 모금액의 5%, 부가세 별도 / 결제 수수료: 결제 성공액의 3%, 부가세 별도 )
							<br>- 파손 또는 불량품 수령 시 7일 이내로 교환이 가능합니다.
							<br>- 교환 및 AS 문의는 '창작자에게 문의하기'로 신청해 주세요.
							<br>- 파손이나 불량품 교환시 발생하는 비용은 창작자가 부담합니다. 선물 확인을 위한 포장 훼손 외에 아이템의 가치가 훼손된 경우에는 교환 및 환불이 불가합니다.
							<br>- 후원자가 배송지를 잘못 기재하거나 창작자에게 사전 고지 없이 배송지를 수정하여 배송사고가 발생할 경우 창작자는 책임을 지지 않습니다 .
						</div>
					</div>
			
				</div>
		
		
		
		
		
		
		
		
		
		
				</div>
				</div>
				</div>
				</div>
				<div class="ReportButton__Wrap-f00f45-0 hikIYg iedwgJ">
				<button type="button" class="ReportButton__BtnReport-f00f45-1 fyoRIv">
				<div name="report-line" class="Icon__SVGICON-sc-12tligs-0 kPBcuc">
				<svg viewBox="0 0 48 48">
				<path fill-rule="evenodd" clip-rule="evenodd" d="M35.8125 23.7746V30.338H12.1875V23.7746C12.1875 16.9139 17.4762 11.3521 24 11.3521C30.5239 11.3521 35.8125 16.9139 35.8125 23.7746ZM9.00004 23.7746C9.00004 15.0626 15.7158 8 24 8C32.2843 8 39 15.0626 39 23.7746V33.6901H9.00004V23.7746ZM39 36.6479H9V40H39V36.6479Z">
				</path>
				<path d="M21.75 14.75C21.75 14.75 20 15 18.25 16.75C16.5 18.5 16 20.5 16 20.5L18.25 21.5C18.25 21.5 19 20 20.25 18.75C21.5 17.5 22.5 17 22.5 17L21.75 14.75Z">
				</path>
				</svg>
				</div>
				<span>프로젝트 신고</span>
				</button>
				</div>
				</div>
				
				
				
				
				
				
				
				
				
				<div class="style__ProjectContentsSubColumn-qovng2-11 byUOaQ">
					<div class="style__SubColumnInner-qovng2-15 jIXHGV">
						<div class="style__EventBannerWrap-ky14bp-14 lhSlYW">
							<div data-title="hello2024" data-linkurl="https://tumblbug.com/collections/hello2024" class="Banner__EventBannerWrap-sc-1a249mb-0 erjXLJ">
								<picture>
									<source media="(max-width: 1079px)" srcset="https://tumblbug-cci.imgix.net/d377511c-4e77-4b89-aed3-e0801cce9793/project_mobile_banner/de34cba7-71e2-4d96-95b9-36cfa3abb030.jpg?auto=format%2Ccompress&amp;fit=crop&amp;h=168&amp;lossless=false&amp;w=1080&amp;s=748857b4dd588c56094943366f4c61b7?q=50 1x, https://tumblbug-cci.imgix.net/d377511c-4e77-4b89-aed3-e0801cce9793/project_mobile_banner/de34cba7-71e2-4d96-95b9-36cfa3abb030.jpg?auto=format%2Ccompress&amp;fit=crop&amp;h=168&amp;lossless=false&amp;w=1080&amp;s=748857b4dd588c56094943366f4c61b7?q=80 2x">
									<source media="(min-width: 1080px)" srcset="https://tumblbug-cci.imgix.net/d377511c-4e77-4b89-aed3-e0801cce9793/project_banner/fb73e457-0c1f-4c2c-8509-e7a4b9d90b3b.jpg?auto=format%2Ccompress&amp;fit=crop&amp;h=291&amp;lossless=false&amp;w=1062&amp;s=e7c5c6d927005c41c835c91467f91a38?q=50 1x, https://tumblbug-cci.imgix.net/d377511c-4e77-4b89-aed3-e0801cce9793/project_banner/fb73e457-0c1f-4c2c-8509-e7a4b9d90b3b.jpg?auto=format%2Ccompress&amp;fit=crop&amp;h=291&amp;lossless=false&amp;w=1062&amp;s=e7c5c6d927005c41c835c91467f91a38?q=80 2x,">
									<img class="m-img" src="https://tumblbug-cci.imgix.net/d377511c-4e77-4b89-aed3-e0801cce9793/project_mobile_banner/de34cba7-71e2-4d96-95b9-36cfa3abb030.jpg?auto=format%2Ccompress&amp;fit=crop&amp;h=168&amp;lossless=false&amp;w=1080&amp;s=748857b4dd588c56094943366f4c61b7" alt="모바일 이미지">
									<img class="pc-img" src="https://tumblbug-cci.imgix.net/d377511c-4e77-4b89-aed3-e0801cce9793/project_banner/fb73e457-0c1f-4c2c-8509-e7a4b9d90b3b.jpg?auto=format%2Ccompress&amp;fit=crop&amp;h=291&amp;lossless=false&amp;w=1062&amp;s=e7c5c6d927005c41c835c91467f91a38" alt="pc 이미지">
								</picture>
							</div>
						</div>
						<div class="Card-sc-101a3bk-0 gOXjRK style__StyledCreatorCard-qovng2-13 doOMJs">
							<div class="style__CreatorCardInner-sc-1kqdyt-6 fpENpF">
								<div class="style__CreatorCardLabel-sc-1kqdyt-7 dkwthg">창작자 소개</div>
								<div class="style__CreatorProfile-sc-1kqdyt-8 jqFoCK">
									<div class="style__CreatorWrapper-sc-1kqdyt-9 iNlJa-D">
										<a target="_blank" href="user?id=${project.creator_id }">
<!-- 											<span class="ProfileImg__StyledProfileImg-sc-1es2i1m-0 izmTNc profileImage"> -->
<%-- 												<img src="${pageContext.request.contextPath }/resources/upload/${project.creator_profile }" alt="프로젝트 창작자 이미지"> --%>
<!-- 											</span> -->
											<span class="ProfileImg__StyledProfileImg-sc-1es2i1m-0 izmTNc profileImage" style="background-image: url('${pageContext.request.contextPath }/resources/upload/${project.creator_profile }');">
											</span>
										</a>
										<div class="style__CreatorInfo-sc-1kqdyt-10 gFiWmy">
											<div class="style__TopWrap-sc-1kqdyt-11 cUKpnq">
												<a target="_blank" href="user?id=${project.creator_id }">
													<span class="style__CreatorName-sc-1kqdyt-12 ktUknF">${project.creator }</span>
												</a>
											</div>
											<div class="style__BottomWrap-sc-1kqdyt-13 odjCI">
												<div class="style__CreatorStats-sc-1kqdyt-14 kLwAlh">
<!-- 													<span>마지막 로그인</span> <b>23시간 전</b> -->
												</div>
											</div>
										</div>
									</div>
								</div>
								
								<div class="style__CreatorBiography-sc-1kqdyt-15 jZceGY">${project.creator_info }</div>
<!-- 								<div class="style__CreatorBiography-sc-1kqdyt-15 jZceGY">시골의 야생 길고양이들이 우리 집 마당냥이가 되어 함께 살아가는 평화로운 일상을 유튜브로 공유하고 있습니다.<br>길고양이 중성화 사업(TNR)을 통해 아픈 냥이들을 구조, 치료, 보호하여 집 안과 마당에서 같이 공존하며 지내고 있습니다.<br>저희 집 마당 길고양이 급식소에서 늘 따듯한 육수와 닭가슴살을 매일 삶아서 밥과 함께 주고 있습니다.<br>추운 겨울을 대비해 길고양이들이 따듯하게 지내기 위한 따듯한 온실과 비닐하우스, 전기장판 집을 만들어 길고양이 쉼터로 사용하고 있습니다.<br>길고양이들의 행복한 미래를 위해 최선을 다하겠습니다.</div> -->
								<div class="style__ButtonsWrapper-sc-1kqdyt-0 hLwfvj">
								<div class="style__FollowButtonWrapper-sc-1kqdyt-5 VdNWQ">
								<button class="SolidButton__Button-d4ctco-0 iDFRLW style__FollowButton-sc-1fj9dkx-0 hzzFYf fnt-p1" color="grayEditor200">
								<span>
								<div name="plus" class="Icon__SVGICON-sc-12tligs-0 kPBcuc style__FollowButtonIcon-sc-1fj9dkx-2 hTyhjW">
								<svg viewBox="0 0 48 48">
								<path fill-rule="evenodd" clip-rule="evenodd" d="M43.7104 21.8549H25.99V4.09524C25.99 2.89796 24.9945 2 23.9005 2C22.8054 2 21.81 2.89796 21.81 4.09524V21.9546H4.0905C2.89593 21.8549 2 22.8526 2 23.9501C2 25.0476 2.89593 26.0454 4.0905 26.0454H21.9095V43.9048C21.9095 45.0023 22.8054 46 23.999 46C25.095 46 26.0905 45.102 26.0905 43.9048V26.0454H43.9085C45.0045 26.0454 46 25.1474 46 23.9501C45.8009 22.8526 44.904 21.8549 43.7104 21.8549C43.7104 21.8549 43.81 21.8549 43.7104 21.8549Z">
								</path>
								</svg>
								</div>
								<div class="style__FollowButtonText-sc-1fj9dkx-1 jGQFIP">팔로우</div>
								</span>
								</button>
								</div>
								
								
<!-- 							주영 창작자 문의 버튼 ChatMain2.jsp랑 연결 -->

								<a class="style__AskCreatorButton-sc-1kqdyt-1 fisrFD" href="ChatMain2" onclick="window.open(this.href, '_blank', 'width=615, height=650'); return false;">
								<div name="letter" class="Icon__SVGICON-sc-12tligs-0 kPBcuc style__AskCreatorButtonIcon-sc-1kqdyt-2 scWIP">
								<svg viewBox="0 0 48 48">
								<path fill-rule="evenodd" clip-rule="evenodd" d="M41.9 37.8966H6.1C5.1 37.8966 4.2 37.0958 4.2 35.997V34.5964L15.7 26.3993L19 29.0977C21.9 31.4981 26.099 31.4981 29.099 29.0977L32.4 26.3993L43.9 34.5964V35.997C43.799 37.0958 43 37.8966 41.9 37.8966ZM13.9 24.9996L4.2 31.898V17.0015L13.9 24.9996ZM43.799 17.0015V31.898L34.099 24.9996L43.799 17.0015ZM6.1 9.20333H41.9C42.9 9.20333 43.799 10.0031 43.799 11.1029V14.2022L27.7 27.499C25.599 29.1986 22.5 29.1986 20.4 27.499L4.2 14.2022V11.0029C4.2 10.0031 5.1 9.10336 6.1 9.20333ZM41.9 7.00385H6.1C3.9 6.90287 2 8.80243 2 11.0029V35.997C2 38.2955 3.9 40.0951 6.1 39.9961H41.9C44.2 39.9961 46 38.1965 46 35.997V11.0029C46 8.80243 44.2 6.90287 41.9 7.00385Z">
								</path>
								</svg>
								</div>창작자 문의</a>
								</div>
							</div>
						</div>
						
						
						<div class="Sticker__Wrapper-sc-1si6lg8-0 gYVCLo reward-sticker">
							<div class="Rewards-kxhggz-2 iWbFFD tbb">
<!-- 								<div class="Rewards__RewardsLabel-kxhggz-3 hgFOaN">리워드 선택</div> -->
								<div class="Rewards__RewardsLabel-kxhggz-3 hgFOaN" id="reward">리워드 선택</div>
							
									<!-- 여기 -->
									<c:forEach var="reward" items="${rewardList }">
										<div class="RewardCard__RewardCardWrapper-sc-11jni8b-3 iqsxGc">
											<div class="Card-sc-1vhyvl1-0 RewardCard__StyledCard-sc-11jni8b-1 cfXECD fjuLVq">
												<div class="Stepper__Wrapper-sc-14ctxej-0 bzcMYO">
<!-- 												<div class="Stepper__Wrapper-sc-14ctxej-0 bzcMYO" style="height: 169px;"> -->
													<section direction="right" class="Stepper__StepperWrapper-sc-14ctxej-1 ehQhai">
													
														<div class="RewardCard__RewardCardInner-sc-11jni8b-4 doBnVx">
														
															<div class="RewardCard__RewardHeader-sc-11jni8b-5 jeVDzr">
																<span class="RewardCard__PledgeAmount-sc-11jni8b-6 cMOTuF">
																	<div name="check" class="Icon__SVGICON-sc-1nac45c-0 hOKVVV RewardCard__StyledSVGIcon-sc-11jni8b-2 eoOxYA">
																		<svg viewBox="0 0 48 48">
																			<path fill-rule="evenodd" clip-rule="evenodd" d="M41.6 8L18.9 30.8L6.2 19L2 23.5L19.1 39.4L46 12.4L41.6 8Z">
																			</path>
																		</svg>
																	</div>
																	49명이 선택
																</span>
															</div>
															
															<div class="RewardCard__RewardSelector-sc-11jni8b-13 doSKXg">
																<div class="sub-wrapper">
																	<div class="RewardCard__RewardContents-sc-11jni8b-10 cfUWzc">
																		<div class="RewardCard__RewardMinimumPledgeAmount-sc-11jni8b-11 hcaxjL">${reward.reward_amount }원 +</div>
		<!-- 																<div class="RewardCard__RewardMinimumPledgeAmount-sc-11jni8b-11 hcaxjL">15,000원 +</div> -->
																		<div class="RewardCard__RewardDescription-sc-11jni8b-12 bRlMcL">${reward.reward_explain }</div>
																	</div>
																</div>
															</div>
														
															<ul class="RewardCard__Items-sc-11jni8b-14 cNnvBP">
<!-- 															1211 -->
<%-- 																<li class="RewardCard__ItemList-sc-11jni8b-15 bpVZwd">${reward.reward_item_name } --%>
		<!-- 														&nbsp;<span>( x 1 )</span> -->
<!-- 																</li> -->
																
																<c:forEach var="item" items="${reward.reward_item_name }">
																	<li class="RewardCard__ItemList-sc-11jni8b-15 kYvoWT">
																		${item}
																	</li>
															    </c:forEach>
																
																
															</ul>
															
															<!-- 1212 추가 -->
<!-- 															<button class=> -->
<!-- 															후원 -->
<!-- 															</button> -->
															<form action="fundingPaymentForm" method="post">
																<input type="hidden" name="project_code" value="${project_code }">
																<input type="hidden" name="reward_code" value="${reward.reward_code }">
																<input type="hidden" name="reward_amount" value="${reward.reward_amount }">
																<input type="submit" id="fund" value="후원">
															</form>
															
															<div class="RewardCard__DeliveryDate-sc-11jni8b-16 cxeoGo"></div>
															
														</div>
													</section>
													
													<section direction="right" class="Stepper__StepperWrapper-sc-14ctxej-1 gcTNai">
														<div class="RewardCard__RewardCardInner-sc-11jni8b-4 doBnVx">
															<div class="RewardCard__RewardHeader-sc-11jni8b-5 eHaKBF">
																<span class="RewardCard__PledgeAmount-sc-11jni8b-6 cMOTuF">
																	<div name="check" class="Icon__SVGICON-sc-1nac45c-0 hOKVVV RewardCard__StyledSVGIcon-sc-11jni8b-2 eoOxYA">
																		<svg viewBox="0 0 48 48">
																			<path fill-rule="evenodd" clip-rule="evenodd" d="M41.6 8L18.9 30.8L6.2 19L2 23.5L19.1 39.4L46 12.4L41.6 8Z">
																			</path>
																		</svg>
																	</div>
																	49명이 선택
																</span>
															</div>
															
															<div class="RewardCard__RewardSelector-sc-11jni8b-13 doSKXg">
																<div class="sub-wrapper">
																	<div class="RewardCard__RewardContents-sc-11jni8b-10 cfUWzc">
																		<div class="RewardCard__RewardMinimumPledgeAmount-sc-11jni8b-11 guDLPF">${reward.reward_amount } +</div>
																		<div class="RewardCard__RewardDescription-sc-11jni8b-12 ihPVAR">${reward.reward_explain }</div>
																	</div>
																</div>
															</div>
															
															<ul class="RewardCard__Items-sc-11jni8b-14 ivsvtS">
<%-- 																<c:forEach var="item" items="${reward}"> --%>
<%-- 															        <p>${item.reward_item_name}</p> --%>
<%-- 															    </c:forEach> --%>
															
																	<c:forEach var="item" items="${reward.reward_item_name }">
																<li class="RewardCard__ItemList-sc-11jni8b-15 kYvoWT">
																        <p>${item}</p>
																
<%-- 																${reward.reward_item_name } --%>
		<!-- 														&nbsp;<span>( x 1 )</span> -->
																</li>
																    </c:forEach>
															</ul>
															
															<div class="RewardCard__DeliveryDate-sc-11jni8b-16 gRjZWy">
																<span>예상 전달일 &nbsp;<b>2023년 12월 20일</b>
																</span>
															</div>
															
															<div class="ExtraPledge__Wrapper-sc-6m3rsu-0 ipAlaK">
																<div class="StyledTBB__FormWrapper-trchgn-6 hCtMzp ExtraPledge__StyledFormRenderChildren-sc-6m3rsu-1 eOMuk">
																	<div class="StyledTBB__FormLabel-trchgn-4 keSzYC form-input-label">추가 후원금(선택)</div>
																	<div class="StyledTBB__FormContent-trchgn-5 iBKDvR form-input-wrapper">
																		<div class="InputWithGuideAndLengthCheck__Wrapper-sc-9nmfrw-0 eCSxwJ">
																			<div class="InputWithGuideAndLengthCheck__InputWrapper-sc-9nmfrw-3 bBnjVq">
																				<span class="Input__InputWrapper-j7moqy-0 fOjsfs InputWithGuideAndLengthCheck__StyledInput-sc-9nmfrw-1 wmJOZ">
																					<input type="text" inputmode="numeric" placeholder="0" autocomplete="off" autocapitalize="off" class="Input__InnerInput-j7moqy-1 bfmNPl" value="">
																				</span>
																			</div>
																			<div class="InputWithGuideAndLengthCheck__NoticeArea-sc-9nmfrw-4 ciHGYP">
																				<p class="InputWithGuideAndLengthCheck__GuideMessage-sc-9nmfrw-5 fduvas"></p>
																			</div>
																		</div>
																	</div>
																	
																	<div class="StyledTBB__FormDescription-trchgn-7 dcierJ form-desc-wrapper">* 더 후원해주시면 프로젝트 성사가 앞당겨집니다.</div>
																</div>
																
																<div class="ExtraPledge__ButtonWrapper-sc-6m3rsu-2 xWAlK">
																	<button class="LineButton__Button-sc-1ozfxit-0 hWwQDf fnt-p2" color="gray10">+ 5천 원</button>
																	<button class="LineButton__Button-sc-1ozfxit-0 hWwQDf fnt-p2" color="gray10">+ 1만 원</button>
																	<button class="LineButton__Button-sc-1ozfxit-0 hWwQDf fnt-p2" color="gray10">+ 5만 원</button>
																	<button class="LineButton__Button-sc-1ozfxit-0 hWwQDf fnt-p2" color="gray10">+ 10만 원</button>
																</div>
															</div>
															
															
															<button class="SolidButton__Button-sc-1gsinzz-0 llVOtQ Rewards__StyledSelectRewardDetailButton-kxhggz-6 etABXh fnt-p1" color="main80">
																<span>${reward.reward_amount }원 후원하기</span>
															</button>
														</div>
													</section>
												</div>
											</div>
										</div>
									</c:forEach>
							</div>
						</div>
				
				
						<div class="Sticker__Ghost-sc-1si6lg8-1 cMGroX">
						</div>
					</div>
				</div>
			
			</div>
		</div>
	
	
	</div>
	
	
	
	
	
	
	
	<div class="common-Layer tbb">
	</div>
	<div class="common-Layer tbb">
	</div>
</div>


<jsp:include page="../inc/footer.jsp"></jsp:include>

<script src="${pageContext.request.contextPath }/resources/soneson/js/list/popularDetail.js"></script>

</body>
</html>