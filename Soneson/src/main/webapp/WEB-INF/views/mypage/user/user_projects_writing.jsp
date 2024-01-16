<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>    
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Anime Template">
    <meta name="keywords" content="Anime, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>손에손</title>
	
	<!-- 손에손 타이틀 아이콘 -->
	<link rel="shortcut icon" href="${pageContext.request.contextPath }/resources/soneson/img/header/son33.ico" type="image/x-icon">
	<script src="${pageContext.request.contextPath }/resources/soneson/js/jquery-3.7.0.js"></script>
    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Mulish:wght@300;400;500;600;700;800;900&display=swap"
    rel="stylesheet">

    <!-- Css Styles -->
   	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/soneson/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/soneson/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/soneson/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/soneson/css/plyr.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/soneson/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/soneson/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/soneson/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/mypage/css/admin_mypage.css" rel="stylesheet">
    <!-- 류우성 CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/user/style.css" type="text/css">
    
    <script type="text/javascript">
    	let pointColor = "#F86453";
    	
    	function projectDeleteForm(project_code) {
			if(confirm("삭제하시겠습니까?")) {
				location.href= 'projectDeletePro?project_code=' + project_code;
			}
		}
    	
    </script>
    
<style>
	.Category {
	 	margin-top: 30px;
	 	float: inherit;
 	    width: 60%; 
 	    margin: auto; 
        display: flex; 

	 }
	.Category_ul {
	    display: -ms-flexbox; 
	    display: flex;
	    -ms-flex-pack: justify;  
 	    justify-content: space-between;  
	    white-space: nowrap;
	    float: inherit;
 	    width: 70%; 
	    padding-bottom: 1.1em;
	    
	}
	.Category_button {
	    display: block;
	    height: 42px;
	    padding: 0 12px 0 10px;
	    border: 1px solid #eee;
	    border-radius: 30px;
	   
	}
	.Category_text {
	    display: inline-block;
	    font-family: "NanumSquareNeo",dotum,Sans-serif;
	    font-size: 15px;
	    margin-top: 1px;
	    vertical-align: middle;
	}
	.DonationTodayCategory_list_item__agFbi .item_1:before {
	    background-image: url(/build/static/media/icon_category_1.2f477b61.svg);
	}
	.DonationTodayCategory_list_item__agFbi .Category_button_:before {
	    display: inline-block;
	    width: 27px;
	    height: 27px;
	    margin-right: 4px;
	    background-repeat: no-repeat;
	    background-size: 100%;
	    vertical-align: middle;
	    content: "";
	}
	
	.DonationTodayCategory_list_item__agFbi[aria-current=true] .Category_button {
	    background-color: #F86453;
	    border-color: #F86453;
	}
	
	
</style>

</head>

<body>

	<jsp:include page="../../inc/header.jsp"></jsp:include>

    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>


	<c:set var="pageNum" value="1" />
	<c:if test="${not empty param.pageNum }">
		<c:set var="pageNum" value="${param.pageNum }" />
	</c:if>    

    
    <section class="blog-details spad">
        <div class="container">
		    <div class="blog__details__comment">
				<div class="blog__details__comment__item">
				    <div class="blog__details__comment__item__text">
				        <h3>
				        	<b>내가 만든 프로젝트</b>
				        </h3>
				        
				    </div>
				</div>
			</div>
		</div>
	</section>

    <!-- Product Section Begin -->
    <section class="product-page spad">
	    <div class="Category">
			<ul class="Category_ul">
				<li class="DonationTodayCategory_list_item__agFbi item_1" aria-current="false">
					<button type="button" class="Category_button" onclick="location.href='userProjectsCreated'">
						<span class="Category_text">&nbsp;&nbsp;전체&nbsp;&nbsp;</span>
					</button>
				</li>
				<li class="DonationTodayCategory_list_item__agFbi item_2" aria-current="true">
					<button type="button" class="Category_button" onclick="location.href='userProjectsWriting'">
						<span class="Category_text">&nbsp;&nbsp;작성중&nbsp;&nbsp;</span>
					</button>
				</li>
				<li class="DonationTodayCategory_list_item__agFbi item_3" aria-current="false">
					<button type="button" class="Category_button" onclick="location.href='userProjectExam'">
						<span class="Category_text">&nbsp;&nbsp;심사중&nbsp;&nbsp;</span>
					</button>
				</li>
				<li class="DonationTodayCategory_list_item__agFbi item_4" aria-current="false">
					<button type="button" class="Category_button" onclick="location.href='userProjectApprove'">
						<span class="Category_text">&nbsp;&nbsp;승인됨&nbsp;&nbsp;</span>
					</button>
				</li>
				<li class="DonationTodayCategory_list_item__agFbi item_5" aria-current="false">
					<button type="button" class="Category_button" onclick="location.href='userProjectReject'">
						<span class="Category_text">&nbsp;&nbsp;반려됨&nbsp;&nbsp;</span>
					</button>
				</li>
				<li class="DonationTodayCategory_list_item__agFbi item_6" aria-current="false">
					<button type="button" class="Category_button" onclick="location.href='userProjectRelease'">
						<span class="Category_text">&nbsp;&nbsp;공개예정&nbsp;&nbsp;</span>
					</button>
				</li>
				<li class="DonationTodayCategory_list_item__agFbi item_7" aria-current="false">
					<button type="button" class="Category_button" onclick="location.href='userProjectProceed'">
						<span class="Category_text">&nbsp;&nbsp;진행중&nbsp;&nbsp;</span>
					</button>
				</li>
				<li class="DonationTodayCategory_list_item__agFbi item_9" aria-current="false">
					<button type="button" class="Category_button" onclick="location.href='userProjectEnd'">
						<span class="Category_text">&nbsp;&nbsp;종료&nbsp;&nbsp;</span>
					</button>
				</li>
			</ul>
		</div>	
	</section>
	
	<br>
	<div class="Container__ContainerComponent">
		<div class="MyProjectListWrapper">
			<div align="center">
				<br>
				<c:if test="${!empty WritingProjectList }">
					<section class="product-page spad">                                                                                                          
   						<div class="container">                                                                                                                  
   					    	<div class="row">                                                                                                                      
   								<div class="col-lg-12">                                                                                                          
   									<div class="product__page__content" >
                           				<div class="row">  
										<c:forEach var="WritingProject" items="${WritingProjectList}">
											<div class="col-lg-4 col-md-6 col-sm-6" style="">                                                
												<div class="product__item">
					    							<a>
 					    								<c:choose>
															<c:when test="${fn:contains(WritingProject.pro_thumbsnail, 'https')}">
																<img src="${WritingProject.pro_thumbsnail}" alt="프로젝트 썸네일 이미지" style="width:350px; height:200px">
															</c:when>
 					    									<c:when test="${empty WritingProject.pro_thumbsnail}">
																<img src="${pageContext.request.contextPath }/resources/soneson/img/project/default.png" alt="프로젝트 썸네일 이미지" style="width:350px; height:200px">
															</c:when>
															<c:otherwise>
																<img src="${pageContext.request.contextPath }/resources/upload/${WritingProject.pro_thumbsnail }" alt="프로젝트 썸네일 이미지 DB" style="width:350px; height:200px">
															</c:otherwise>
														</c:choose>
													</a>
														<div class="product__item__text">                                                   
															<ul>                                                                            
																<li>${WritingProject.pro_categorie }</li>                                           
																<li>작성중</li>                                           
															</ul>                                                                           
															<h5 style="margin-bottom: 7px;">                                                
															<a href="#">                            
																${WritingProject.pro_title }
															</a>                                                                            
															</h5>                                                                           
			    										</div>
			    										<form action="projectUpdateForm" method="post">
															<input type="hidden" name="isNewInsert" value="N"> 
															<input type="hidden" value="${WritingProject.pro_code }" name="pro_code">
															<input type="hidden" value="${WritingProject.user_id }" name="user_id">
															<input class="donerSelectBtn" type="submit" value="이어서 작성 하기">
															<input class="donerSelectBtn" type="button" value="삭제하기" style="background: #7d7d7d" onclick="projectDeleteForm(${WritingProject.pro_code })"
															>
														</form>
			    									</div>                                                                                   
			    								</div>
										</c:forEach>
										</div>                                                                               
									</div>
								</div>                                                                                                                            
							</div>                                                                                                                                
				    	</div>                                                                                                                                    
					</section>                                                                                                                               
				</c:if>
				<c:if test="${empty WritingProjectList }">
					<img src="${pageContext.request.contextPath }/resources/user/writer.png" class="writer.png" width="180">
					<br>
					<br>
					<div class=""><h4>작성한 프로젝트가 없습니다.</h4></div>
					<br>
					<button type="button" class="btn btn-primary"
						onclick="location.href='projectStartForm'">&nbsp;&nbsp;&nbsp;&nbsp;프로젝트 올리기&nbsp;&nbsp;&nbsp;&nbsp;
					</button>
					<br>
				</c:if>
				<div id="user_content">
				</div>
			</div>
		</div>
	</div>
	
	
	
	
	
	
	<!-- Product Section End -->
	
	<jsp:include page="../../inc/footer.jsp"></jsp:include>

	<!-- Search model Begin -->
	<div class="search-model">
		<div class="h-100 d-flex align-items-center justify-content-center">
			<div class="search-close-switch"><i class="icon_close"></i></div>
			<form class="search-model-form">
				<input type="text" id="search-input" placeholder="Search here.....">
			</form>
		</div>
	</div>
	<!-- Search model end -->

	<!-- Js Plugins -->
	<script src="${pageContext.request.contextPath }/resources/soneson/js/jquery-3.3.1.min.js"></script>
	<script src="${pageContext.request.contextPath }/resources/soneson/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath }/resources/soneson/js/player.js"></script>
	<script src="${pageContext.request.contextPath }/resources/soneson/js/jquery.nice-select.min.js"></script>
	<script src="${pageContext.request.contextPath }/resources/soneson/js/mixitup.min.js"></script>
	<script src="${pageContext.request.contextPath }/resources/soneson/js/jquery.slicknav.js"></script>
	<script src="${pageContext.request.contextPath }/resources/soneson/js/owl.carousel.min.js"></script>
	<script src="${pageContext.request.contextPath }/resources/soneson/js/main.js"></script>

</body>

</html>