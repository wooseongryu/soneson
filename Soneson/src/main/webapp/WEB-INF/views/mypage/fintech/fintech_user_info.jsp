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


    <!-- Custom styles for this template -->
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/mypage/css/admin_mypage.css" rel="stylesheet">

    <!-- Custom styles for this page -->
    <link href="${pageContext.request.contextPath }/resources/mypage/vendor/datatables/admin_dataTables.bootstrap4.css" rel="stylesheet">


</head>

<body id="page-top">

	<c:choose>
		<c:when test="${empty sessionScope.sId}">
			<script type="text/javascript">
				alert("로그인 후 사용 가능합니다!");
				location.href = "login";
			</script>
		</c:when>
		<c:when test="${empty sessionScope.access_token}">
			<script type="text/javascript">
				alert("계좌 인증 후 사용 가능합니다!");
				location.href = "admin";
			</script>
		</c:when>
	</c:choose>



	<!-- header 위치 -->
	<jsp:include page="../../inc/header.jsp"></jsp:include>	

	<!-- Page Wrapper -->
	<div id="wrapper">
		
		<!-- Sidebar -->
		<jsp:include page="../admin/admin_sidebar.jsp"></jsp:include>
		<!-- End of Sidebar -->
		

		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">

			<!-- Main Content -->
			<div id="content">


				<!-- Begin Page Content -->
				<div class="container-fluid">

					<!-- Page Heading -->
					<h1 class="h3 mb-2 text-gray-800">핀테크 사용자 정보</h1>

					<!-- DataTales Example -->
					<div class="card shadow mb-4">
						<div class="card-header py-3">
							<h6 class="m-0 font-weight-bold text-primary">핀테크 사용자 정보</h6>
						</div>
						<div class="card-body">
							<div class="table-responsive">
							<c:forEach var="account" items="${userInfos}">
<%-- 							<c:forEach var="account" items="${userInfos.res_list}"> --%>
								<br>${account }<br>
<!-- 								---------- -->
							</c:forEach>
<!-- 								<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0"> -->
<!-- 									<thead> -->
<!-- 										<tr> -->
<!-- 											<th>계좌별칭</th> -->
<%-- 											<th>계좌번호</th> 일반 계좌번호 대신 마스킹 된 계좌번호(account_num_masked)만 사용 가능 --%>
<!-- 											<th>은행명(은행코드)</th> -->
<!-- 											<th>예금주명</th> -->
<!-- 											<th>핀테크이용번호</th> -->
<!-- 											<th></th> -->
<!-- 										</tr> -->
<!-- 									</thead> -->
<!-- 									<tbody> -->
<%-- 									<c:forEach var="account" items="${userInfos.res_list}"> --%>
<!-- 										<tr> -->
<%-- 											<td>${account.account_alias}</td> --%>
<%-- 											<td>${account.account_num_masked}</td> --%>
<%-- 											<td>${account.bank_name}(${account.bank_code_std})</td> --%>
<%-- 											<td>${account.account_holder_name}</td> --%>
<%-- 											<td>${account.fintech_use_num}</td> --%>
<!-- 											<td> -->
<%-- 												2.3.1. 잔액조회 API 서비스 요청을 위한 데이터 전송 폼 생성(각 계좌 당 1개) --%>
<%-- 												요청 URL : BankAccountDetail, 요청 방식 : POST --%>
<%-- 												핀테크이용번호, 예금주명, 계좌번호(마스킹) 전달 --%>
<!-- 												<form action="BankAccountDetail" method="post"> -->
<%-- 													<input type="hidden" name="fintech_use_num" value="${account.fintech_use_num}"> --%>
<%-- 													<input type="hidden" name="user_name" value="${userInfo.user_name}"> --%>
<%-- 													<input type="hidden" name="account_num_masked" value="${account.account_num_masked}"> --%>
<!-- 													<input type="submit" value="상세정보"> -->
<!-- 												</form> -->
<!-- 											</td> -->
<!-- 										</tr> -->
<%-- 									</c:forEach> --%>
<!-- 									</tbody> -->
<!-- 								</table> -->
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