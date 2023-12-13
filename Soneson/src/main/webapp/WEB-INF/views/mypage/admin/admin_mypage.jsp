<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

	<title>손에손</title>

	<!-- Custom styles for this template-->
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/mypage/css/admin_mypage.css" rel="stylesheet">

</head>

<!-- header -->
<body id="page-top">

	<!-- header 위치 -->
	<jsp:include page="../../inc/header.jsp"></jsp:include>
	
	<!-- Page Wrapper -->
	<div id="wrapper">
		
		<!-- Sidebar -->
		<jsp:include page="admin_sidebar.jsp"></jsp:include>
		<!-- End of Sidebar -->
		
		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">

			<!-- Main Content -->
			<div id="content">
			
				<!-- Begin Page Content -->
				<div class="container-fluid">

					<!-- Page Heading -->
					<div class="d-sm-flex align-items-center justify-content-between mb-4">
						<h1 class="h3 mb-0 text-gray-800">관리자 마이페이지</h1>
					</div>

					<!-- Content Row -->
					<div class="row">

						<!-- Earnings (Monthly) Card Example -->
						<div class="col-xl-3 col-md-6 mb-4">
							<div class="card border-left-primary shadow h-100 py-2">
								<div class="card-body">
									<div class="row no-gutters align-items-center">
										<div class="col mr-2">
											<div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
												가입 회원 수</div>
											<div class="h5 mb-0 font-weight-bold text-gray-800">${joinUserCount }명</div>
										</div>
									</div>
								</div>
							</div>
						</div>

						<!-- Earnings (Monthly) Card Example -->
						<div class="col-xl-3 col-md-6 mb-4">
							<div class="card border-left-success shadow h-100 py-2">
								<div class="card-body">
									<div class="row no-gutters align-items-center">
										<div class="col mr-2">
											<div class="text-xs font-weight-bold text-success text-uppercase mb-1">
												탈퇴한 회원 수</div>
											<div class="h5 mb-0 font-weight-bold text-gray-800">${deleteUserCount }명</div>
										</div>
									</div>
								</div>
							</div>
						</div>

						<!-- Earnings (Monthly) Card Example -->
						<div class="col-xl-3 col-md-6 mb-4">
							<div class="card border-left-info shadow h-100 py-2">
								<div class="card-body">
									<div class="row no-gutters align-items-center">
										<div class="col mr-2">
											<div class="text-xs font-weight-bold text-info text-uppercase mb-1">주간 펀딩 금액
											</div>
											<div class="row no-gutters align-items-center">
												<div class="col-auto">
													<div class="h5 mb-0 mr-3 font-weight-bold text-gray-800">
													${costAmount[0].sum_cost }원
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>

						<!-- Pending Requests Card Example -->
						<div class="col-xl-3 col-md-6 mb-4">
							<div class="card border-left-warning shadow h-100 py-2">
								<div class="card-body">
									<div class="row no-gutters align-items-center">
										<div class="col mr-2">
											<div class="text-xs font-weight-bold text-warning text-uppercase mb-1">
												진행중인 펀딩 프로젝트 수</div>
											<div class="h5 mb-0 font-weight-bold text-gray-800">${projectCount[0].project_count}건</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

					<!-- Content Row -->

					<div class="row">

						<!-- Area Chart -->
						<div class="col-xl-12 col-lg-12">
							<div class="card shadow mb-4">
<!-- 							Card Header - Dropdown -->
								<div
									class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
									<h6 class="m-0 font-weight-bold text-primary">요일별 펀딩금액</h6>
									<div class="dropdown no-arrow">
										<a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink"
											data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
										</a>
									</div>
								</div>
<!-- 								Card Body -->
								<div class="card-body">
									<div class="chart-area">
										<canvas id="myBarChart"></canvas>
									</div>
								</div>
							</div>
						</div>
					</div>

					<!-- Content Row -->
					<div class="row">

						<!-- Pie Chart -->
						<div class="col-xl-4 col-lg-5">
							<div class="card shadow mb-4">
<!-- 								Card Header - Dropdown -->
								<div
									class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
									<h6 class="m-0 font-weight-bold text-primary">프로젝트 카테고리별 분포도</h6>
									<div class="dropdown no-arrow">
										<a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink"
											data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
										</a>
									</div>
								</div>
<!-- 								Card Body -->
								<div class="card-body">
									<div class="chart-pie pt-4 pb-2">
										<canvas id="myPieChart"></canvas>
									</div>
									<div class="mt-4 text-center small">
										<c:forEach var="AdminSelectMyPieChart" items="${AdminSelectMyPieChart }" varStatus="status">
										<span class="mr-2">
											<i class=
											<c:if test="${status.index eq 0 }">
											"fas fa-circle text-success"	
											</c:if>
											<c:if test="${status.index eq 1 }">
											"fas fa-circle text-warning"	
											</c:if>
											<c:if test="${status.index eq 2 }">
											"fas fa-circle text-danger"	
											</c:if>
											<c:if test="${status.index eq 3 }">
											"fas fa-circle text-primary"	
											</c:if>
											<c:if test="${status.index eq 4 }">
											"fas fa-circle text-info"	
											</c:if>
											<c:if test="${status.index eq 5 }">
											"fas fa-circle text-indigo"	
											</c:if>
											<c:if test="${status.index eq 6 }">
											"fas fa-circle text-pink"	
											</c:if>
											<c:if test="${status.index eq 7 }">
											"fas fa-circle text-blue"	
											</c:if>
											></i> ${AdminSelectMyPieChart.cate }
										</span>
										</c:forEach>
									</div>
								</div>
							</div>
						</div>
						<!-- Content Column -->
						<div class="col-xl-8 col-lg-8">

							<!-- Project Card Example -->
							<div class="card shadow mb-4">
								<div class="card-header py-3">
									<h6 class="m-0 font-weight-bold text-primary">마감예정인 프로젝트 달성도</h6>
								</div>
								<div class="card-body">
								<c:forEach var="projectMy" items="${projectMyList }" varStatus="status">
									<h4 class="small font-weight-bold">${projectMy.title }
										<span class="float-right">
											<c:choose>
												<c:when test="${projectMy.goal_rate > 100 }">달성완료</c:when>
												<c:otherwise>${projectMy.goal_rate }%</c:otherwise>
											</c:choose>
										</span>
									</h4>
									<div class="progress mb-4">
										<div class=
										<c:if test="${status.index eq 0 }">
										"progress-bar bg-danger"	
										</c:if>
										<c:if test="${status.index eq 1 }">
										"progress-bar bg-warning"	
										</c:if>
										<c:if test="${status.index eq 2 }">
										"progress-bar"	
										</c:if>
										<c:if test="${status.index eq 3 }">
										"progress-bar bg-info"	
										</c:if>
										<c:if test="${status.index eq 4 }">
										"progress-bar bg-success"	
										</c:if>
										role="progressbar" style="width: ${projectMy.goal_rate }%"
											aria-valuenow="${projectMy.goal_rate }" aria-valuemin="0" aria-valuemax="100"></div>
									</div>
								</c:forEach>
								</div>
							</div>
                        </div>
                    </div>
                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->


        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->
    
	<!-- footer -->
	<jsp:include page="../../inc/footer.jsp"></jsp:include>

	<!-- Scroll to Top Button-->
	<a class="scroll-to-top rounded" href="#page-top">
		<i class="fas fa-angle-up"></i>
	</a>

</body>

    <!-- Page level plugins -->
    <script src="${pageContext.request.contextPath }/resources/mypage/vendor/chart.js/Chart.min.js"></script>

    <!-- Page level custom scripts -->
<%--     <script src="${pageContext.request.contextPath }/resources/mypage/js/demo/chart-area-demo.js"></script> --%>
    <script src="${pageContext.request.contextPath }/resources/mypage/js/demo/chart-pie-demo.js"></script>
    <script src="${pageContext.request.contextPath }/resources/mypage/js/demo/chart-bar-demo.js"></script>




</html>