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
		
		

		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">

			<!-- Main Content -->
			<div id="content">


				<!-- Begin Page Content -->
				<div class="container-fluid"  style="padding-left: 15rem; padding-right:15rem; !important;">

					<!-- Page Heading -->
					<h1 class="h3 mb-2 text-gray-800">후원자 조회 페이지</h1>

					<!-- DataTales Example -->
					<div class="card shadow mb-4">
						<div class="card-header py-3">
							<h6 class="m-0 font-weight-bold text-primary">후원자 조회 내역</h6>
						</div>
						<div class="card-body">
							<div class="table-responsive">
								<c:if test="${!empty fundingDonerInfoList}">
									<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
										<thead>
											<tr>
												<th>프로젝트 제목</th>
	                                            <th>창작자 아이디</th>
	                                            <th>후원자 아이디</th>
	                                            <th>후원자 이름</th>
	                                            <th>후원 시간</th>
	                                            <th>주소코드</th>
	                                            <th>주소</th>
	                                            <th>폰번호</th>
	                                            <th>후원금액</th>
											</tr>
										</thead>
										<tbody>
	                                       <c:forEach var="fundingDonerInfo" items="${fundingDonerInfoList }">
												<tr>
													<td>${fundingDonerInfo.title }</td>
													<td>${fundingDonerInfo.creator_id }</td>
													<td>${fundingDonerInfo.doner_id }</td>
													<td>${fundingDonerInfo.doner_name}</td>
													<td>${fn:replace(fundingDonerInfo.fund_date ,"T", " ") }</td>
													<td>${fundingDonerInfo.address_code}</td>
													<td>${fundingDonerInfo.address_main}&nbsp;${fundingDonerInfo.address_sub}</td>
													<td>${fundingDonerInfo.phone}</td>
													<td>${fundingDonerInfo.cost}원</td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
								</c:if>
								<c:if test="${empty fundingDonerInfoList}">
									<div class="" align="center"><h4>프로젝트 후원자가 없습니다.</h4></div>
								</c:if>
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
	<!-- Product Section End -->
	
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