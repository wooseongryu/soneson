<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>   
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>     
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>손에손</title>


    <!-- Custom styles for this template -->
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/mypage/css/admin_mypage.css" rel="stylesheet">

    <!-- Custom styles for this page -->
    <link href="${pageContext.request.contextPath }/resources/mypage/vendor/datatables/admin_dataTables.bootstrap4.css" rel="stylesheet">


</head>

<body id="page-top">

	<!-- header 위치 -->
	<jsp:include page="../../inc/header.jsp"></jsp:include>	

	<!-- Page Wrapper -->
	<div id="wrapper">
		
		
		<!-- Sidebar -->
		<jsp:include page="admin_sidebar.jsp"></jsp:include>
		<!-- End of Sidebar -->
		

		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column" >

			<!-- Main Content -->
			<div id="content">


				<!-- Begin Page Content -->
				<div class="container-fluid">

					<!-- Page Heading -->
					<h1 class="h3 mb-2 text-gray-800">진행중인 펀딩페이지</h1>

					<!-- DataTales Example -->
					<div class="card shadow mb-4">
						<div class="card-header py-3">
							<h6 class="m-0 font-weight-bold text-primary">진행중인 펀딩내역</h6>
						</div>
						<div class="card-body">
							<div class="table-responsive">
								<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
									<thead>
										<tr>
											<th width="5%">코드</th>
											<th width="25%">제목</th>
											<th width="10%">카테고리</th>
											<th width="10%">창작자</th>
											<th width="15%">기간</th>
											<th width="10%">후원금액</th>
											<th width="10%">목표금액</th>
											<th width="5%">달성률</th>
											<th width="5%">후원자 수</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="ongoingProject" items="${ongoingProjectList }">
	                                        <tr>
	                                            <td>${ongoingProject.project_code }</td>
	                                            <td>${ongoingProject.title }</td>
	                                            <td>${ongoingProject.category }</td>
	                                            <td>${ongoingProject.creator }</td>
	                                            <td>${fn:replace(ongoingProject.start_date ,"T", " ") } ~<br> ${fn:replace(ongoingProject.end_date ,"T", " ") }</td>
	                                            <td>${ongoingProject.now_amount }원</td>
	                                            <td>${ongoingProject.goal_amount }원</td>
	                                            <td>${ongoingProject.goal_rate }%</td>
	                                            <td>${ongoingProject.donor }명</td>
	                                        </tr>
                                        </c:forEach>
									</tbody>
								</table>
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
    <script src="${pageContext.request.contextPath }/resources/mypage/vendor/datatables/jquery.dataTables.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources/mypage/vendor/datatables/dataTables.bootstrap4.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="${pageContext.request.contextPath }/resources/mypage/js/demo/datatables-demo.js"></script>

</body>

</html>