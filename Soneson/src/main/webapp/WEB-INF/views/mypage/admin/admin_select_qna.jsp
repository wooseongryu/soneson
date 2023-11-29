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

<script>
	function confirmDelete(qna_idx) {
		let result = confirm(qna_idx  + "번 게시글을 삭제하시겠습니까?");
		
		if(result) {
			location.href = "adminEventDelete?qna_idx=" + qna_idx;
			
		}
	}
</script>


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
					<h1 class="h3 mb-2 text-gray-800">자주묻는질문 조회 페이지</h1>

					<!-- DataTales Example -->
					<div class="card shadow mb-4">
						<div class="card-header py-3">
							<h6 class="m-0 font-weight-bold text-primary">자주묻는질문 조회 내역</h6>
						</div>
						<div class="card-body">
							<div class="table-responsive">
								<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
									<thead>
										<tr>
                                            <th>글번호</th>
                                            <th>카테고리</th>
                                            <th>제목</th>
                                            <th>수정 및 삭제</th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
											<td colspan="4">
												<button type="button" class="btn btn-primary" onclick="location.href='adminQNAInsert'">등록</button>&nbsp;&nbsp;
												<button type="button" class="btn btn-primary" onclick="location.href='adminQNACategoryInsert'">카테고리 관리</button>
											</td>
                                        </tr>
                                    </tfoot>
                                    <tbody>
                                    	<c:forEach var="qna" items="${qnaList }">
	                                        <tr>
	                                            <td>${qna.qna_idx }</td>
	                                            <td>${qna.qnaCate_subject }</td>
	                                            <td>${qna.qna_title }</td>
												<td>
													<button type="button" class="btn btn-primary" onclick="location.href='adminQNAUpdate?qna_idx=${qna.qna_idx}'">수정</button>
													<button type="button" class="btn btn-primary" onclick="confirmDelete('${qna.qna_idx }')">삭제</button>
												</td>
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