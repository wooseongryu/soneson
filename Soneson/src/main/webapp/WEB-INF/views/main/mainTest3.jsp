<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="${pageContext.request.contextPath }/resources/main/css/tumble/app.81892d40d14a84165880.css" rel="stylesheet">
<!--     개인 css 엄성윤 -->
<link href="${pageContext.request.contextPath }/resources/main/css/tumble/main.css" rel="stylesheet">
 
 
<link rel="shortcut icon" href="${pageContext.request.contextPath }/resources/soneson/img/header/son33.ico" type="image/x-icon">
<title>손에손</title>
<style>
.projectList {
    display: grid;
    grid-template-columns: 1ft 1fr 1fr 1fr;
}
</style>

</head>
<body>

<jsp:include page="../inc/header.jsp"></jsp:include>


<div class="mainContainer">
	<div class="frontPage homeWrapper">
		<div class="mainTopSection">
		
			<div class="heroAndSportlight">
			
				<div class="heroWidget">
					<div class="heroBanner">
						<img src="${pageContext.request.contextPath }/resources/soneson/img/main/main_pc_delitastollen.jpg ">
					</div>
					<div class="heroController">
					</div>
				</div>
				
				<div class="sportlightSection">
					<div class="listTitle">
					</div>
					<div class="listCardWrapper">
						<div class="listCardComponent">
						
						
						
							<div class="card-wrapper">
								<div></div>
								<div class="projectCardOnlyPercentage">
									<div class="image-wrapper">
										<a class="projectCardOnlyPercentageImage"></a>
										<div class="likeButtonWrapper">
											<button type="button" class="likeButton">
												<span>좋아요</span>
											</button>
										</div>
										
									</div>
									<div class="info-wrapper">
										<dl>
											<dd class="project-sub-info">
												<span>
													<a href="">아트북</a>
												<span>
												<span>
													<a href="">꽃피는책</a>
												</span>
											</dd>
											<dt>
												<a href="">
													<strong>앨리스부터 한여름 밤의 꿈까지 아서 래컴 빈티지 일러스트북</strong>
												</a>
											</dt>
										</dl>
										<div class="funding-status">
											<span class="percentage">2271% 달성
											</span>
										</div>
									</div>
								</div>
							</div>
							
							<!-- 하드코딩, 나중에 삭제 --->
							
							
							
							
							
							<!-- 하드코딩, 나중에 삭제 --->
							
							
						</div>
					</div>
				</div>
				
			</div>
		</div>
		
	</div>
</div>



<br>
<br>
<br>
<br>
<br>

<jsp:include page="../inc/footer.jsp"></jsp:include>

</body>
</html>