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

	<title>SB Admin 2 - Dashboard</title>

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
												총 가입 회원 수</div>
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
											<div class="text-xs font-weight-bold text-info text-uppercase mb-1">금일 펀딩 금액
											</div>
											<div class="row no-gutters align-items-center">
												<div class="col-auto">
													<div class="h5 mb-0 mr-3 font-weight-bold text-gray-800">20000000원</div>
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
												금일 시작된 펀딩 프로젝트 수</div>
											<div class="h5 mb-0 font-weight-bold text-gray-800">1건</div>
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
							<!-- Card Header - Dropdown -->
								<div
									class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
									<h6 class="m-0 font-weight-bold text-primary">요일별 펀딩금액</h6>
									<div class="dropdown no-arrow">
										<a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink"
											data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
										</a>
									</div>
								</div>
								<!-- Card Body -->
								<div class="card-body">
									<div class="chart-area">
										<canvas id="myAreaChart"></canvas>
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
								<!-- Card Header - Dropdown -->
								<div
									class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
									<h6 class="m-0 font-weight-bold text-primary">프로젝트 카테고리별 분포도</h6>
									<div class="dropdown no-arrow">
										<a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink"
											data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
										</a>
									</div>
								</div>
								<!-- Card Body -->
								<div class="card-body">
									<div class="chart-pie pt-4 pb-2">
										<canvas id="myPieChart"></canvas>
									</div>
									<div class="mt-4 text-center small">
										<span class="mr-2">
											<i class="fas fa-circle text-primary"></i> 분류별 카테1
										</span>
										<span class="mr-2">
											<i class="fas fa-circle text-success"></i> 분류별 카테2
										</span>
										<span class="mr-2">
											<i class="fas fa-circle text-info"></i> 분류별 카테3
										</span>
									</div>
								</div>
							</div>
						</div>
						<!-- Content Column -->
						<div class="col-lg-8 mb-6">

							<!-- Project Card Example -->
							<div class="card shadow mb-4">
								<div class="card-header py-3">
									<h6 class="m-0 font-weight-bold text-primary">마감예정인 프로젝트 달성도</h6>
								</div>
								<div class="card-body">
								<c:forEach var="projectMy" items="${projectMyList }">
									<h4 class="small font-weight-bold">${projectMy.title }
										<span class="float-right">
											<c:choose>
												<c:when test="${projectMy.goal_rate > 100 }">달성완료</c:when>
												<c:otherwise>${projectMy.goal_rate }%</c:otherwise>
											</c:choose>
										</span>
									</h4>
									<div class="progress mb-4">
										<div class="progress-bar bg-danger" role="progressbar" style="width: ${projectMy.goal_rate }%"
											aria-valuenow="${projectMy.goal_rate }" aria-valuemin="0" aria-valuemax="100"></div>
									</div>
								</c:forEach>
<!-- 									<h4 class="small font-weight-bold">손에손 프로젝트2 <span -->
<!-- 											class="float-right">40%</span></h4> -->
<!-- 									<div class="progress mb-4"> -->
<!-- 										<div class="progress-bar bg-warning" role="progressbar" style="width: 40%" -->
<!-- 											aria-valuenow="40" aria-valuemin="0" aria-valuemax="100"></div> -->
<!-- 									</div> -->
<!-- 									<h4 class="small font-weight-bold">손에손 프로젝트3 <span -->
<!-- 											class="float-right">60%</span></h4> -->
<!-- 									<div class="progress mb-4"> -->
<!-- 										<div class="progress-bar" role="progressbar" style="width: 60%" -->
<!-- 											aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"></div> -->
<!-- 									</div> -->
<!-- 									<h4 class="small font-weight-bold">손에손 프로젝트4 <span -->
<!-- 											class="float-right">80%</span></h4> -->
<!-- 									<div class="progress mb-4"> -->
<!-- 										<div class="progress-bar bg-info" role="progressbar" style="width: 80%" -->
<!-- 											aria-valuenow="80" aria-valuemin="0" aria-valuemax="100"></div> -->
<!-- 									</div> -->
<!-- 									<h4 class="small font-weight-bold">손에손 프로젝트5 <span -->
<!-- 											class="float-right">Complete!</span></h4> -->
<!-- 									<div class="progress"> -->
<!-- 										<div class="progress-bar bg-success" role="progressbar" style="width: 100%" -->
<!-- 											aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div> -->
<!-- 									</div> -->
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
    <script src="${pageContext.request.contextPath }/resources/mypage/js/demo/chart-area-demo.js"></script>
    <script src="${pageContext.request.contextPath }/resources/mypage/js/demo/chart-pie-demo.js"></script>
    <script src="${pageContext.request.contextPath }/resources/mypage/js/demo/chart-bar-demo.js"></script>




</html>