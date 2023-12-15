<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
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
		<div id="content-wrapper" class="d-flex flex-column" >

			<!-- Main Content -->
			<div id="content">

				<!-- Begin Page Content -->
				<div class="container-fluid" style="padding-left: 23rem; padding-right:23rem; !important;">

					<!-- DataTales Example -->
					<div class="card shadow mb-4">
						<div class="card-header py-3">
							<h6 class="m-0 font-weight-bold text-primary">1대1 문의 조회 내역</h6>
						</div>
						<div class="card-body">
							<div class="table-responsive">
								<c:if test="${!empty userOTOList }">
									<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
	                                    <thead class="table-dark">
	                                        <tr>
	                                            <th>글번호</th>
	                                            <th>제목</th>
	                                            <th>내용</th>
	                                            <th>답변상태</th>
	                                            <th>등록일</th>
	                                            <th></th>
	                                        </tr>
	                                    </thead>
	                                    <tbody>
	                                    	<c:forEach var="userOTOList" items="${userOTOList }">
		                                        <tr>
		                                            <td>${userOTOList.myQuestion_num }</td>
		                                            <td>${userOTOList.myQuestion_subject }</td>
		                                            <td>${userOTOList.myQuestion_content }</td>
		                                            <td>${userOTOList.myQuestion_status }</td>
		                                            <td><fmt:formatDate value="${userOTOList.myQuestion_date }" pattern="yyyy-MM-dd"/></td>
		                                            <td><button type="button" class="btn btn-primary" onclick="location.href='userOTOAnswerSelect?myQuestion_num=${userOTOList.myQuestion_num}'">답변보기</button></td>
		                                        </tr>
	                                        </c:forEach>
	                                    </tbody>
	                                </table>
								</c:if>
                                <c:if test="${empty userOTOList}">
									<div class="" align="center"><h4>문의내역이 없습니다.</h4></div>
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