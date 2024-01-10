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

<script>
	function confirmDelete(event_idx) {
		let result = confirm(event_idx  + "번 게시글을 삭제하시겠습니까?");
		
		if(result) {
			location.href = "adminEventDelete?event_idx=" + event_idx;
			
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
		<div id="content-wrapper" class="d-flex flex-column" >

			<!-- Main Content -->
			<div id="content">


				<!-- Begin Page Content -->
				<div class="container-fluid">

					<!-- Page Heading -->
					<h1 class="h3 mb-2 text-gray-800">게시판 조회 페이지</h1>

					<!-- DataTales Example -->
					<div class="card shadow mb-4">
						<div class="card-header py-3">
							<h6 class="m-0 font-weight-bold text-primary">게시판 조회 내역</h6>
						</div>
						<div class="card-body">
							<div class="table-responsive">
								<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
									<thead>
										<tr>
                                            <th width="5%">번호</th>
                                            <th width="10%">카테고리</th>
                                            <th width="40%">제목</th>
                                            <th width="10%">작성일</th>
                                            <th width="15%">이벤트 기간</th>
                                            <th width="10%">상태구분</th>
                                            <th width="15%">수정 및 삭제</th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
											<td colspan="7">
												<button type="button" class="btn btn-primary" onclick="location.href='adminEventInsert'">등록</button>&nbsp;&nbsp;
												<button type="button" class="btn btn-primary" onclick="location.href='adminEventCategoryInsert'">카테고리 관리</button>
											</td>
                                        </tr>
                                    </tfoot>
                                    <tbody>
                                    	<c:forEach var="event" items="${eventList }">
	                                        <tr>
	                                            <td>${event.event_idx }</td>
	                                            <td>${event.eventCate_subject }</td>
	                                            <td>${event.event_title }</td>
	                                            <td><fmt:formatDate value="${event.event_writeDate }" pattern="yyyy-MM-dd"/></td>
	                                            <td>
	                                            	<c:if test="${!empty event.event_startDt }">
	                                            		${event.event_startDt } ~ ${event.event_endDt }
                                           			</c:if>
                                           		</td>
	                                            <td>${event.event_status }</td>
												<td>
													<button type="button" class="btn btn-primary" onclick="location.href='adminEventUpdate?event_idx=${event.event_idx}'">수정</button>
													<button type="button" class="btn btn-primary" onclick="confirmDelete('${event.event_idx }')">삭제</button>
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