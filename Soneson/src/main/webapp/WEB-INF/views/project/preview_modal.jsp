<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!--     개인 css 엄성윤 -->
<%-- <link href="${pageContext.request.contextPath }/resources/soneson/css/main/nogada.css" rel="stylesheet"> --%>
<%-- <link href="${pageContext.request.contextPath }/resources/soneson/css/main/infoNogada.css" rel="stylesheet"> --%>
<%-- <link href="${pageContext.request.contextPath }/resources/soneson/css/main/detailNogada.css" rel="stylesheet"> --%>
<%-- <link href="${pageContext.request.contextPath }/resources/main/css/tumble/app.81892d40d14a84165880.css" rel="stylesheet"> --%>
<div class="modal-content">
  		<div class="modal-header">
    		<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
  		</div>
  		<div class="modal-body" style="display: flex;">
<div id="react-view" class="tbb-only-ff">
	<div class="ProjectIntroduction__ProjectIntroductionBackground-sc-1kf21am-0 eGtYeZ">
		<!-- 여기서부터 시작 -->
		<div class="Container-sc-1p3qvtc-0 cEyyoc">
			<div class="ProjectIntroduction__ProjectIntroductionWrapper-sc-1kf21am-1 ePPrSF">
				<div class="ProjectIntroduction__ProjectOutline-sc-1kf21am-2 jqMDnB">
					<div class="ProjectIntroduction__ProjectOutlineInner-sc-1kf21am-3 edHMaW">
						<a href="/discover?tab=category&amp;category=calendar-and-diary">
							<span class="ProjectIntroduction__ProjectCategory-sc-1kf21am-4 gObYWz">${pro.pro_categorie }</span>
						</a>
						<h1 class="ProjectIntroduction__ProjectTitle-sc-1kf21am-5 VbzlC">${pro.pro_title }</h1>
					</div>
				</div>
				<div class="ProjectIntroduction__ProjectIntroductionMainColumn-sc-1kf21am-6 jUqLs">
					<figure class="ProjectIntroduction__ProjectCoverImageFigure-sc-1kf21am-7 dEXpQY">
						<div class="IntroVisualSlider__StyledIntroVisualSliderWrapper-sc-1h7hyyq-0 lbnhcX">
							<div class="swiper-container swiper-container-initialized swiper-container-horizontal swiper-container-pointer-events">
								<div class="swiper-wrapper" style="transform: translate3d(-2565px, 0px, 0px); transition-duration: 0ms;">
									<div class="swiper-slide" style="width: 855px;">
										<div class="IntroVisualSlider__ProjectCoverVideo-sc-1h7hyyq-1 klppFc">
											<div class="ProjectIntroductionVideoPlayer__StyledVideoWrapper-sc-1rpvirp-0 dqRjJQ _13KHfN73YmQgsYHxXvuh_J "></div>
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
										<div class="IntroVisualSlider__ProjectCoverImage-sc-1h7hyyq-2 eKEnRF">
											<img src="${pageContext.request.contextPath }/resources/upload/${pro.pro_thumbsnail }" alt="프로젝트 커버 이미지 DB">
										</div>
									</div>
									<div class="swiper-slide swiper-slide-next" style="width: 855px;">
										<div class="IntroVisualSlider__ProjectCoverImage-sc-1h7hyyq-2 eKEnRF">
											<img src="https://tumblbug-pci.imgix.net/4b47313543b96b2826155b31ab4f1f9a6bacb921/14bec61d57bd5c1a1f98d774245389da35067770/cf80649689edf6cb074059992b33969d03900fed/e6ba39cd-83ee-418b-8565-4b50352b303d.jpeg?ixlib=rb-1.1.0&amp;w=1240&amp;h=930&amp;auto=format%2Ccompress&amp;lossless=true&amp;fit=crop&amp;s=7c8292aebe6ef18ccd0e67fca000cce7" alt="프로젝트 커버 이미지">
										</div>
									</div>
								</div>
								<div class="swiper-pagination swiper-pagination-bullets">
									<span class="swiper-pagination-bullet"></span>
									<span class="swiper-pagination-bullet"></span>
									<span class="swiper-pagination-bullet"></span>
									<span class="swiper-pagination-bullet swiper-pagination-bullet-active"></span>
									<span class="swiper-pagination-bullet"></span>
								</div>
							</div>
						</div>
					</figure>
				</div>
				<aside class="ProjectIntroduction__ProjectIntroductionSubColumn-sc-1kf21am-10 gLbMmE">
					<div class="ProjectIntroduction__FundingStatus-sc-1kf21am-11 HbjsT">
						<div class="ProjectIntroduction__Metric-sc-1kf21am-12 fXsdBd">
							<div class="ProjectIntroduction__StatusTitle-sc-1kf21am-13 fPBHBs">모인금액</div>
							<div class="ProjectIntroduction__StatusValue-sc-1kf21am-14 ePQNCs">
								<span class="ProjectIntroduction__Price-sc-1kf21am-15 kzkxoz">0<span class="ProjectIntroduction__Small-sc-1kf21am-17 hPYEXD">원</span>
								</span>
								<span class="ProjectIntroduction__FundingRate-sc-1kf21am-16 hIweQS">0%</span>
							</div>
						</div>
						<div class="ProjectIntroduction__Metric-sc-1kf21am-12 fXsdBd">
							<div class="ProjectIntroduction__StatusTitle-sc-1kf21am-13 fPBHBs">남은시간</div>
							<div class="ProjectIntroduction__StatusValue-sc-1kf21am-14 ePQNCs">0<span class="ProjectIntroduction__Small-sc-1kf21am-17 hPYEXD">일</span></div>
						</div>
						<div class="ProjectIntroduction__Metric-sc-1kf21am-12 fXsdBd">
							<div class="ProjectIntroduction__StatusTitle-sc-1kf21am-13 fPBHBs">후원자</div>
							<div class="ProjectIntroduction__StatusValue-sc-1kf21am-14 ePQNCs">0<span class="ProjectIntroduction__Small-sc-1kf21am-17 hPYEXD">명</span></div>
						</div>
					</div>
					<div class="FundingInformation__Wrap-sc-84xkqs-0 jGpUCY">
						<div class="FundingInformation__InfoWrap-sc-84xkqs-1 dLRgOT">
							<dl class="FundingInformation__InfoItem-sc-84xkqs-2 dsitt">
								<dt class="FundingInformation__Title-sc-84xkqs-3 cSBHrX">목표금액</dt>
								<dd class="FundingInformation__Desc-sc-84xkqs-4 Hysth">${pro.pro_goal }원</dd>
							</dl>
							<dl class="FundingInformation__InfoItem-sc-84xkqs-2 dsitt">
								<dt class="FundingInformation__Title-sc-84xkqs-3 cSBHrX">펀딩 기간</dt>
								<dd class="FundingInformation__Desc-sc-84xkqs-4 Hysth">${pro.pro_startDt} ~ ${pro.pro_endDt}<span class="FundingInformation__DdayLabel-sc-84xkqs-5 cfyFBE">14일 남음</span></dd>
							</dl>
							<dl class="FundingInformation__InfoItem-sc-84xkqs-2 dsitt">
								<dt class="FundingInformation__Title-sc-84xkqs-3 cSBHrX">결제</dt>
								<dd class="FundingInformation__Desc-sc-84xkqs-4 Hysth">목표금액 달성시 ${pro.pro_endDt + 1}에 결제 진행</dd>
							</dl>
						</div>
					</div>
					<div class="ProjectIntroduction__ProjectButtons-sc-1kf21am-18 kmnGjD">
						<div class="ProjectIntroduction__ProjectButtonsInner-sc-1kf21am-19 jDhSeE">
							<div class="ProjectIntroduction__PrimaryButton-sc-1kf21am-20 gpBnlK">
								<div class="PledgeButton__Wrapper-sc-19585pn-0 kzJnkH">
									<button class="Button-sc-16r5v81-0 PledgeButton__StyledButton-sc-19585pn-1 eXFpDs hrOCcK" type="button">후원하기</button>
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
								</ul>
							</div>
								<div class="Card-sc-101a3bk-0 ljUlEU">
									<div class="style__StoryCardInner-y9rrh6-1 boXLUs">
										<div id="purpose" class="style__StorySection-ygs6af-7 ktoIwn">
											<div class="style__StorySectionTitle-y9rrh6-6 eARawo">프로젝트 소개</div>
											<div class="storyContent">
												 <img src="${pageContext.request.contextPath }/resources/upload/${pro.pro_content }" alt="프로젝트 내용 이미지">
											</div>
										</div>
										<div id="budget" class="style__StorySection-y9rrh6-7 dxcJNl">
											<div class="style__StorySectionTitle-y9rrh6-6 eARawo">프로젝트 예산</div>
											<div class="storyContent">
												 <img src="${pageContext.request.contextPath }/resources/upload/${pro.pro_budget }" alt="프로젝트 예산 이미지">
											</div>
										</div>
										<div id="schedule" class="style__StorySection-y9rrh6-7 dxcJNl">
											<div class="style__StorySectionTitle-y9rrh6-6 eARawo">프로젝트 일정</div>
											<div class="storyContent">
												 <img src="${pageContext.request.contextPath }/resources/upload/${pro.pro_sch }" alt="프로젝트 일정 이미지">
											</div>
										</div>
										<div id="introduction" class="style__StorySection-y9rrh6-7 dxcJNl">
											<div class="style__StorySectionTitle-y9rrh6-6 eARawo">프로젝트 팀 소개</div>
											<div class="storyContent">
												<img src="${pageContext.request.contextPath }/resources/upload/${pro.pro_team }" alt="프로젝트 팀 이미지">
											</div>
										</div>
										<div id="rewardsDescription" class="style__StorySection-y9rrh6-7 dxcJNl">
											<div class="style__StorySectionTitle-y9rrh6-6 eARawo">리워드 설명</div>
											<div class="storyContent">
												<img src="${pageContext.request.contextPath }/resources/upload/${pro.pro_reward }" alt="프로젝트 리워드 이미지">
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
						<div class="Card-sc-101a3bk-0 gOXjRK style__StyledCreatorCard-qovng2-13 doOMJs">
							<div class="style__CreatorCardInner-sc-1kqdyt-6 fpENpF">
								<div class="style__CreatorCardLabel-sc-1kqdyt-7 dkwthg">창작자 소개</div>
									<div class="style__CreatorProfile-sc-1kqdyt-8 jqFoCK">
										<div class="style__CreatorWrapper-sc-1kqdyt-9 iNlJa-D">
											<a target="_blank" href="/u/baeunmangdeokcats">
												<span class="ProfileImg__StyledProfileImg-sc-1es2i1m-0 izmTNc profileImage" style="background-image: url('${pageContext.request.contextPath }/resources/upload/${pro.pro_profile }');">
												</span>
											</a>
											<div class="style__CreatorInfo-sc-1kqdyt-10 gFiWmy">
												<div class="style__TopWrap-sc-1kqdyt-11 cUKpnq">
													<a target="_blank" href="/u/baeunmangdeokcats">
														<span class="style__CreatorName-sc-1kqdyt-12 ktUknF">${pro.pro_creator }</span>
													</a>
												</div>
											</div>
										</div>
									</div>
								<div class="style__CreatorBiography-sc-1kqdyt-15 jZceGY">${pro.pro_createrInfo }</div>
							</div>
						</div>
						<div class="Sticker__Ghost-sc-1si6lg8-1 cMGroX"></div>
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