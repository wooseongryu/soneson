<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="shortcut icon" href="${pageContext.request.contextPath }/resources/soneson/img/header/son33.ico" type="image/x-icon">
<script src="${pageContext.request.contextPath }/resources/soneson/js/jquery-3.7.0.js"></script>
<title>손에손</title>

<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/soneson/css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/soneson//css/font-awesome.min.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/soneson/css/elegant-icons.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/soneson//css/plyr.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/soneson//css/nice-select.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/soneson//css/owl.carousel.min.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/soneson//css/slicknav.min.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/soneson//css/style.css" type="text/css">


<style>
	.rate-all {
		background: url("${pageContext.request.contextPath }/resources/cinepick/img/age/all.png") center center no-repeat;
	}
	
	.rate-12 {
		background: url("${pageContext.request.contextPath }/resources/cinepick/img/age/12.png") center center no-repeat;
	}
	
	.rate-15 {
		background: url("${pageContext.request.contextPath }/resources/cinepick/img/age/15.png") center center no-repeat;
	}
	
	.rate-18 {
		background: url("${pageContext.request.contextPath }/resources/cinepick/img/age/18.png") center center no-repeat;
	}
	
	.rate-all, .rate-12, .rate-15, .rate-18 {
	    background-size: 30px 30px !important;
	    border-radius: 5px;
	    font-weight: bold;
	    color: #fff;
	    width: 40px;
	    height: 40px;
	    display: inline-block;
	    text-align: center;
	    margin-right: 7px;
	    position: relative;
	    padding: 0;
	    overflow: hidden;
	    text-indent: -10000em;
	    position: relative;
	    top: 4px;
	}
	
	.reviewStarMin {
		   position: relative;
		    display: inline-block;
		   width: 90px;
		    height: 15px;
		    background-position: 0;
		    background-repeat: no-repeat;
		    background-image: url("${pageContext.request.contextPath }/resources/cinepick/img/review_star/bg_star_min.png");
		}
		
	.reviewStarMin .bg_star {
	   width: 90px;
	    height: 15px;
	    background-position: 0;
	    background-repeat: no-repeat;
	    background-image: url("${pageContext.request.contextPath }/resources/cinepick/img/review_star/bg_star_min_on.png");
	}
	
	body {
		background: white;
	}
	
	.col-lg-3 {
	    -ms-flex: 0 0 25%;
	    flex: 0 0 25%;
	    max-width: 25%;
	}


</style>

<script>
	$(function() {
		
		$("#MvListType").change(function() {
			let MvListType = $(this).val();
			console.log(MvListType);

			$.ajax({
				type: "GET",
				url: "movieListJson",
				data: {"MvListType": MvListType},
				dataType: "json",
				success: function(data) {
					
					$('#movieListDiv').empty();
					
					var str = "";
					for(let movie of data) {
						
						str +='<div class="col-lg-3 col-md-6 col-sm-6">'
						str +=	'<div class="product__item">'
						str +=		'<a href="movieDetail?movie_code= ' + movie.movie_code + '">'
						str +=			'<div class="product__item__pic set-bg" data-setbg="' + movie.movie_poster + '" style="background-image: url(\'' + movie.movie_poster + '\');">'
// 						str +=			'<div class="product__item__pic set-bg" data-setbg="' + movie.movie_poster + '" style="background-image: url(https://tumblbug-pci.imgix.net/4b47313543b96b2826155b31ab4f1f9a6bacb921/14bec61d57bd5c1a1f98d774245389da35067770/cf80649689edf6cb074059992b33969d03900fed/f8c70ff6-2432-4864-8b17-7102fa5fdb0e.jpeg?ixlib=rb-1.1.0&amp;w=1240&amp;h=930&amp;auto=format%2Ccompress&amp;lossless=true&amp;fit=crop&amp;s=1b09749aaaecb44055af8d7e9df0afcd");">'
						str +=				'<div class="comment">'
						str +=					'<span class="' + movie.movie_rated + '"></span>'
						str +=				'</div>'
						str +=			'</div>'
						str +=		'</a>'
						str +=		'<div class="product__item__text">'
						str +=			'<ul>'
						if(movie.movie_audi > 0) {
							str +=				'<li>누적 관람객 ' + movie.movie_audi + '명</li>'
						}
						str +=				'<li>개봉일 ' + movie.movie_openDt + '</li>'
						if(movie.movie_status == '재개봉') {
							str +=				'<li>' + movie.movie_status + '</li>'
							
						}
						
						str +=			'</ul>'
						str +=			'<div class="reviewStarMin">'
						str +=				'<div class="bg_star" style="width:' + (movie.movie_avg * 20)  + '%;"></div>'
						str +=				'<div>'+ movie.movie_avg + '</div>'
						str +=			'</div>'
						str +=			'<h5><a href="movieDetail">' + movie.movie_nameK + '</a></h5>'
						str +=		'</div>'
						str +=	'</div>'
						str +='</div>'
					}
					
					$('#movieListDiv').append(str);
				},
				error: function() {
					console.log("실패");
				}
			
			});

			
		});
		
	});
	
	
</script>

</head>
<body>

<jsp:include page="../inc/header.jsp"></jsp:include>

	<c:forEach var="project" items="${projectList }">
   		${project.title }
   		<img src="${project.img1 }">
   	</c:forEach>

	<section class="product-page spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-11" style="float: none; margin: 0 auto;">
                    <div class="product__page__content">
                        <div class="product__page__title">
                            <div class="row">
                                <div class="col-lg-8 col-md-8 col-sm-6">
                                    <div class="section-title">
<!--                                         <h5> -->
<!--                                             <a style="color: #503396;">현재 상영작</a>  -->
<!--                                             &nbsp;&nbsp;&nbsp; -->
<!--                                             <a href="movieListUpComming">개봉 예정작 </a> -->
<!--                                         </h5> -->
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-4 col-sm-6">
                                    <div class="product__page__filter">
	                                    <form action="movieList" id="selectListType" style="color: #1c1c1c">
	                                    	<select name="MvListType" id="MvListType">
	                                    		<option id="boxoffice" value="boxoffice" selected>달성률</option>
	                                    		<option id="audi" value="audi" <c:if test="${param.MvListType eq 'audi' }">selected</c:if>>에디터 추천</option>
<%-- 	                                    		<option id="open" value="open" <c:if test="${param.MvListType eq 'open' }">selected</c:if>>개봉일순</option> --%>
<%-- 	                                    		<option id="rating" value="rating" <c:if test="${param.MvListType eq 'rating' }">selected</c:if>>평점순</option> --%>
	                                    	</select>
	                                    </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row" id="movieListDiv">
                        	<c:forEach var="project" items="${projectList }">
<%--                         	<c:forEach var="movie" items="${movieList }"> --%>
	                            <div class="col-lg-3 col-md-6 col-sm-6">
	                                <div class="product__item">
	                                	<a href="projectDetail?project_code=${project.project_code }" >
		                                    <div class="product__item__pic set-bg" data-setbg="${project.img1 }">
<%-- 		                                    <div class="product__item__pic set-bg" data-setbg="${movie.movie_poster }"> --%>
		                                        <div class="comment">
<%-- 			                                        <span class = "${movie.movie_rated}"></span> --%>
		                                        </div>
		                                    </div>
	                                    </a>
<!-- 	                                    <div class="product__item__text"> -->
<!-- 	                                        <ul> -->
<%-- 	                                        	<c:if test="${0 ne movie.movie_audi }"><li>누적 관람객 ${movie.movie_audi }명</li></c:if> --%>
<%-- 	                                            <li>개봉일 ${movie.movie_openDt }</li> --%>
<%-- 	                                        	<c:if test="${movie.movie_status eq '재개봉' }"><li>${movie.movie_status }</li></c:if> --%>
<!-- 	                                        </ul> -->
<!-- 	                                        <div class="reviewStarMin"> -->
<%-- 											   <div class="bg_star" style="width: ${movie.movie_avg * 20 }%;"></div> --%>
<%-- 											   <div>${movie.movie_avg }</div> --%>
<!-- 											</div> -->
<%-- 	                                        <h5><a href="movieDetail?movie_code=${movie.movie_code }">${movie.movie_nameK }</a></h5> --%>
<!-- 	                                    </div> -->
	                                </div>
	                            </div>
                        	</c:forEach>
                        </div>
					</div>     
                    <div class="product__pagination">
					</div>
				</div>
			</div>
		</div>
	</section>
	
<!-- 	<img src="https://tumblbug-pci.imgix.net/4b47313543b96b2826155b31ab4f1f9a6bacb921/14bec61d57bd5c1a1f98d774245389da35067770/cf80649689edf6cb074059992b33969d03900fed/f8c70ff6-2432-4864-8b17-7102fa5fdb0e.jpeg?ixlib=rb-1.1.0&amp;w=1240&amp;h=930&amp;auto=format%2Ccompress&amp;lossless=true&amp;fit=crop&amp;s=1b09749aaaecb44055af8d7e9df0afcd" alt="프로젝트 커버 이미지"> -->
	



<jsp:include page="../inc/footer.jsp"></jsp:include>



</body>
</html>