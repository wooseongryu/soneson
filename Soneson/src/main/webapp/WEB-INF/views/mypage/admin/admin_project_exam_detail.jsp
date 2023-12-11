<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>   
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!--     개인 css 엄성윤 -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
<script src="${pageContext.request.contextPath }/resources/soneson/js/jquery-3.7.0.js"></script>
<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script> 

<!--     개인 css 엄성윤 -->

<link href="${pageContext.request.contextPath }/resources/soneson/css/main/nogada.css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/resources/soneson/css/main/infoNogada.css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/resources/soneson/css/main/detailNogada.css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/resources/main/css/tumble/app.81892d40d14a84165880.css" rel="stylesheet">
 
<link rel="shortcut icon" href="${pageContext.request.contextPath }/resources/soneson/img/header/son33.ico" type="image/x-icon">
<title>손에손</title>

	<script type="text/javascript">
		function confirmUpdateApprove(project_code) {
			let result = confirm(project_code  + "번 게시글을 승인하시겠습니까?");
			
			if(result) {
				location.href = "adminProjectApprove?project_code=" + project_code;
			}
		}
	
		function confirmUpdateReject(project_code) {
			let result = confirm(project_code  + "번 게시글을 반려하시겠습니까?");
			
			if(result) {
				location.href = "adminProjectReject?project_code=" + project_code;
			}
		}
	</script>




</head>
<body>

<jsp:include page="../../inc/header.jsp"></jsp:include>
    
    
   

    
<div id="react-view" class="tbb-only-ff">
	<div class="ProjectIntroduction__ProjectIntroductionBackground-sc-1kf21am-0 eGtYeZ">
		<!-- 여기서부터 시작 -->
		<div class="Container-sc-1p3qvtc-0 cEyyoc">
			<div class="ProjectIntroduction__ProjectIntroductionWrapper-sc-1kf21am-1 ePPrSF">
				<div class="ProjectIntroduction__ProjectOutline-sc-1kf21am-2 jqMDnB">
					<div class="ProjectIntroduction__ProjectOutlineInner-sc-1kf21am-3 edHMaW">
						<a href="/discover?tab=category&amp;category=calendar-and-diary">
							<span class="ProjectIntroduction__ProjectCategory-sc-1kf21am-4 gObYWz"><!-- 카테고리 들어갈 자리 --> ${project.category }</span>
						</a>
						<h1 class="ProjectIntroduction__ProjectTitle-sc-1kf21am-5 VbzlC"><!-- 타이틀 들어갈 자리 --> ${project.title }</h1>
					</div>
				</div>
				<div class="ProjectIntroduction__ProjectIntroductionMainColumn-sc-1kf21am-6 jUqLs">
					<figure class="ProjectIntroduction__ProjectCoverImageFigure-sc-1kf21am-7 dEXpQY">
						<div class="IntroVisualSlider__StyledIntroVisualSliderWrapper-sc-1h7hyyq-0 lbnhcX">
							<div class="swiper-container swiper-container-initialized swiper-container-horizontal swiper-container-pointer-events">
								
								
								<!-- 슬라이드 화면 -->
								<div class="swiper-wrapper" style="transform: translate3d(-2565px, 0px, 0px); transition-duration: 0ms;">
									<div class="swiper-slide" style="width: 855px;">
										<div class="IntroVisualSlider__ProjectCoverVideo-sc-1h7hyyq-1 klppFc">
											<div class="ProjectIntroductionVideoPlayer__StyledVideoWrapper-sc-1rpvirp-0 dqRjJQ _13KHfN73YmQgsYHxXvuh_J ">
												<video controls="" autoplay="" playsinline="">
													<source type="video/mp4; codecs='avc1.64001E, mp4a.40.2'" src="https://d2f45jiwzkt4py.cloudfront.net/2cd15f2a-93d1-4d0a-bda7-a9464b4e75ed/95635ffc-596a-4378-97c7-38fef93c1006-high.mp4">
													<source type="video/mp4; codecs='avc1.42E01E, mp4a.40.2'" src="https://d2f45jiwzkt4py.cloudfront.net/2cd15f2a-93d1-4d0a-bda7-a9464b4e75ed/95635ffc-596a-4378-97c7-38fef93c1006-base.mp4">
													<source type="video/mp4" src="https://d2f45jiwzkt4py.cloudfront.net/2cd15f2a-93d1-4d0a-bda7-a9464b4e75ed/95635ffc-596a-4378-97c7-38fef93c1006-high.mp4">
													<source type="video/webm" src="https://d2f45jiwzkt4py.cloudfront.net/2cd15f2a-93d1-4d0a-bda7-a9464b4e75ed/95635ffc-596a-4378-97c7-38fef93c1006.webm">
												</video>
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
									<div class="swiper-slide swiper-slide-active" style="width: 855px;">
										<div class="IntroVisualSlider__ProjectCoverImage-sc-1h7hyyq-2 eKEnRF">
											<img src="${project.img1 }" alt="프로젝트 커버 이미지">
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
						
						
							<div class="swiper-button-prev">
								<div name="arrow1-left" class="Icon__SVGICON-sc-12tligs-0 kPBcuc">
									<svg viewBox="0 0 48 48">
										<path fill-rule="evenodd" clip-rule="evenodd" d="M32.8912 45.3014L12 23.913L32.8912 2.52471C33.5866 1.8251 34.7804 1.8251 35.4777 2.52471C36.1741 3.22333 36.1741 4.42368 35.4777 5.22224L17.1731 23.913L35.4777 42.7018C36.1741 43.4024 36.1741 44.6018 35.4777 45.4013C35.0788 45.8011 34.6819 46 34.1845 46C33.7855 45.9011 33.2881 45.7002 32.8912 45.3014Z">
										</path>
									</svg>
								</div>
							</div>
							<div class="swiper-button-next">
								<div name="arrow1-right" class="Icon__SVGICON-sc-12tligs-0 kPBcuc">
									<svg viewBox="0 0 48 48">
										<path fill-rule="evenodd" clip-rule="evenodd" d="M13.9071 46C13.4118 46 12.9164 45.8001 12.6192 45.4003C11.9257 44.7007 11.9257 43.5014 12.6192 42.7019L30.8493 24.0125L12.5201 5.22317C11.8266 4.52357 11.8266 3.32425 12.5201 2.5247C13.2136 1.8251 14.3034 1.8251 15.096 2.5247L36 24.0125L15.195 45.4003C14.7988 45.8001 14.3034 46 13.9071 46Z">
										</path>
									</svg>
								</div>
							</div>
						</div>
					</figure>
				</div>
				
				<aside class="ProjectIntroduction__ProjectIntroductionSubColumn-sc-1kf21am-10 gLbMmE">
					<div class="FundingInformation__Wrap-sc-84xkqs-0 jGpUCY" style="margin-top: 75px;">
						<div class="FundingInformation__InfoWrap-sc-84xkqs-1 dLRgOT">
							<dl class="FundingInformation__InfoItem-sc-84xkqs-2 dsitt">
								<dt class="FundingInformation__Title-sc-84xkqs-3 cSBHrX">목표금액</dt>
								<dd class="FundingInformation__Desc-sc-84xkqs-4 Hysth">${project.pro_goal }원</dd>
							</dl>
							<dl class="FundingInformation__InfoItem-sc-84xkqs-2 dsitt">
								<dt class="FundingInformation__Title-sc-84xkqs-3 cSBHrX">펀딩 기간</dt>
								<dd class="FundingInformation__Desc-sc-84xkqs-4 Hysth">${fn:split(project.start_date ,"T")[0] } ~ ${fn:split(project.end_date ,"T")[0] }</dd>
							</dl>
<!-- 							<dl class="FundingInformation__InfoItem-sc-84xkqs-2 dsitt"> -->
<!-- 								<dt class="FundingInformation__Title-sc-84xkqs-3 cSBHrX">결제</dt> -->
<%-- 								<dd class="FundingInformation__Desc-sc-84xkqs-4 Hysth">목표금액 달성시 ${project.pay_date}에 결제 진행</dd> --%>
<!-- 							</dl> -->
						</div>
					</div>
					
					<div class="ProjectIntroduction__ProjectButtons-sc-1kf21am-18 kmnGjD">
						<div class="ProjectIntroduction__ProjectButtonsInner-sc-1kf21am-19 jDhSeE">
							<div class="ProjectIntroduction__PrimaryButton-sc-1kf21am-20 gpBnlK">
								<div class="PledgeButton__Wrapper-sc-19585pn-0 kzJnkH">
									<button class="Button-sc-16r5v81-0 PledgeButton__StyledButton-sc-19585pn-1 eXFpDs hrOCcK"onclick="confirmUpdateApprove('${project.project_code }')">프로젝트 승인</button>
								</div>
								<br>
								<div class="PledgeButton__Wrapper-sc-19585pn-0 kzJnkH">
									<button class="Button-sc-16r5v81-0 PledgeButton__StyledButton-sc-19585pn-1 eXFpDs hrOCcK"onclick="confirmUpdateReject('${project.project_code }')">프로젝트 반려</button>
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
				</div>
			</div>
		</nav>
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
								</ul>
							</div>
							<div class="Card-sc-101a3bk-0 ljUlEU">
								<div class="style__StoryCardInner-y9rrh6-1 boXLUs">
									<div id="purpose" class="style__StorySection-ygs6af-7 ktoIwn">
										<div class="style__StorySectionTitle-y9rrh6-6 eARawo">프로젝트 소개</div>
										<div class="storyContent">
											<p>
												<img src="${project.img1 }">
											</p>
											<p>&nbsp;</p>
											<hr>
											<!-- 본문에 들어갈 내용 -->
											<h2 style="text-align: center;">안녕하세요.<br>${project.creator }입니다.</h2>
											<p>
												<img src="${project.pro_content }">
											</p>
											<p>&nbsp;</p>
											<hr>
										</div>
									</div>
									<div id="budget" class="style__StorySection-y9rrh6-7 dxcJNl"></div>
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
				
				
				<!-- 오른쪽에 들어갈 자리 -->
				<div class="style__ProjectContentsSubColumn-qovng2-11 byUOaQ">
					<div class="style__SubColumnInner-qovng2-15 jIXHGV">
						<div class="Card-sc-101a3bk-0 gOXjRK style__StyledCreatorCard-qovng2-13 doOMJs">
							<div class="style__CreatorCardInner-sc-1kqdyt-6 fpENpF">
								<div class="style__CreatorCardLabel-sc-1kqdyt-7 dkwthg">창작자 소개</div>
								<div class="style__CreatorProfile-sc-1kqdyt-8 jqFoCK">
									<div class="style__CreatorWrapper-sc-1kqdyt-9 iNlJa-D">
										<a target="_blank" href="/u/baeunmangdeokcats">
											<span class="ProfileImg__StyledProfileImg-sc-1es2i1m-0 izmTNc profileImage">
											</span>
										</a>
										<div class="style__CreatorInfo-sc-1kqdyt-10 gFiWmy">
											<div class="style__TopWrap-sc-1kqdyt-11 cUKpnq">
												<a target="_blank" href="/u/baeunmangdeokcats">
													<span class="style__CreatorName-sc-1kqdyt-12 ktUknF">${project.creator }</span>
												</a>
											</div>
										</div>
									</div>
								</div>
								
								<div class="style__CreatorBiography-sc-1kqdyt-15 jZceGY">${project.pro_createrInfo }</div>
								<div class="style__ButtonsWrapper-sc-1kqdyt-0 hLwfvj">
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>	
	</div>
</div>


<jsp:include page="../../inc/footer.jsp"></jsp:include>

<script src="${pageContext.request.contextPath }/resources/soneson/js/list/popularDetail.js"></script>

</body>
</html>