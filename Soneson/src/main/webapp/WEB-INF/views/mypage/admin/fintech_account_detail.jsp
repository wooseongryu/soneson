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

    <title>SB Admin 2 - Tables</title>


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
				location.href = "FintechMain";
			</script>
		</c:when>
	</c:choose>



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
					<h1 class="h3 mb-2 text-gray-800">핀테크 계좌 상세정보</h1>

					<!-- DataTales Example -->
					<div class="card shadow mb-4">
						<div class="card-header py-3">
							<h6 class="m-0 font-weight-bold text-primary">${user_name} 고객님의 계좌 상세정보 (사용자번호 :${sessionScope.user_seq_no})</h6>
						</div>
						<div class="card-body">
							<div class="table-responsive">
								<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
									<thead>
										<tr>
											<th>은행명</th>
											<th>계좌번호</th> <%-- 일반 계좌번호 대신 마스킹 된 계좌번호(account_num_masked)만 사용 가능 --%>
											<th>상품명</th>
											<th>계좌잔액</th>
											<th>출금가능금액</th>
											<th>핀테크이용번호</th>
											<th></th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>${accountDetail.bank_name}</td>
											<td>${account_num_masked}</td>
											<td>${accountDetail.product_name}</td>
											<td>${accountDetail.balance_amt}</td>
											<td>${accountDetail.available_amt}</td>
											<td>${accountDetail.fintech_use_num}</td>
											<td colspan="2">
												<form action="BankRefund" method="post">
													<input type="hidden" name="deposit_fintech_use_num" value="${accountDetail.fintech_use_num}">
													<input type="hidden" name="tran_amt" value="2000">	<%-- 거래금액(출금금액) --%>
													<input type="hidden" name="deposit_user_name" value="${user_name }">
													<input type="submit" value="상품환불">
												</form>
												<form action="BankPayment" method="post">
													<input type="hidden" name="withdraw_fintech_use_num" value="${accountDetail.fintech_use_num}">
													<input type="hidden" name="tran_amt" value="50000">	<%-- 거래금액(출금금액) --%>
													<input type="hidden" name="withdraw_user_name" value="${user_name }">	<%-- 고객성명 --%>
													<input type="submit" value="상품구매(결제)">
												</form>
												
												<form action="BankTransfer" method="post">
													<%-- 송금 요청 대상(출금계좌) 정보를 셋팅 --%>
													<input type="hidden" name="withdraw_fintech_use_num" value="${accountDetail.fintech_use_num}">
													<input type="hidden" name="tran_amt" value="35000">
													<input type="hidden" name="withdraw_user_name" value="${user_name }">
													<%-- ======================================================== --%>
													<%-- 송금 대상(입금계좌) 정보를 임의의 정보로 셋팅 --%>
													<%-- 실제로는 컨트롤러 - 서비스를 통해 해당 회원의 정보 조회 필요 --%>
													<input type="hidden" name="deposit_fintech_use_num" value="120211385488932387478941">
													<input type="hidden" name="deposit_user_name" value="류우성">
													<input type="hidden" name="deposit_bank_code" value="004">
													<input type="hidden" name="deposit_account_num" value="23062003005">
													<input type="submit" value="송금">
												</form>
											</td>
										</tr>
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