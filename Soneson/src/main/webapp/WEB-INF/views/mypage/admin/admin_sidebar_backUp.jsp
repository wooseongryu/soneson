<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>SB Admin 2 - Dashboard</title>

    <!-- Custom fonts for this template-->
    <link href="${pageContext.request.contextPath }/resources/mypage/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

</head>

<body id="page-top">

	<!-- Page Wrapper -->
	<div id="wrapper" style="padding-top: 50px;">

		<!-- Sidebar -->
		<ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">


            <!-- Nav Item - Dashboard -->
            <li class="nav-item active">
            	<a class="nav-link" href="admin">
            		<i class="fas fa-fw fa-user-secret"></i>
            		<span>관리자페이지</span></a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider">


            <!-- 회원관리 -->
            <li class="nav-item">
            	<a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUser"
            		aria-expanded="true" aria-controls="collapseUser">
            		<i class="fas fa-fw fa-user"></i>
            		<span>회원관리</span>
            	</a>
				<div id="collapseUser" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">
						<a class="collapse-item" href="adminSelectUser">회원정보관리</a>
						<a class="collapse-item" href="adminSelectUserPay">회원결제관리</a>
						<a class="collapse-item" href="adminSelectReport">신고회원관리</a>
					</div>
				</div>
			</li>
        
            <!-- 메인페이지 관리 -->
            <li class="nav-item">
            	<a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseCate"
            		aria-expanded="true" aria-controls="collapseCate">
            		<i class="fas fa-fw fa-pager"></i>
            		<span>메인 페이지 관리</span>
            	</a>
				<div id="collapseCate" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">
						<a class="collapse-item" href="adminSelectMainCate">메인 카테고리 관리</a>
					</div>
				</div>
			</li>
           
            <!-- 펀딩 프로젝트 관리 -->
            <li class="nav-item">
            	<a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseProject"
            		aria-expanded="true" aria-controls="collapseProject">
            		<i class="fas fa-fw fa-handshake"></i>
            		<span>펀딩 프로젝트 관리</span>
            	</a>
				<div id="collapseProject" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">
						<a class="collapse-item" href="adminSelectFundAll">등록된 전체 펀딩 관리</a>
						<a class="collapse-item" href="adminSelectFundBefore">진행예정인 펀딩 관리</a>
						<a class="collapse-item" href="adminSelectFundOngoing">진행중인 펀딩 관리</a>
						<a class="collapse-item" href="adminSelectFundAfter">마감된 펀딩관리</a>
					</div>
				</div>
			</li>
            
            <!-- 커뮤니티 관리 (펀딩 후기 등등) -->
            <li class="nav-item">
            	<a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseReview"
            		aria-expanded="true" aria-controls=collapseReview>
            		<i class="fas fa-fw fa-comment-dots"></i>
            		<span>펀딩후기관리</span>
            	</a>
				<div id="collapseReview" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">
						<a class="collapse-item" href="adminSelectReview">펀딩후기관리</a>
					</div>
				</div>
			</li>

            <!-- 정산 관리 (프로젝트 마감 후 결제, 카드사 결제 등등) -->
            <li class="nav-item">
            	<a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseAccount"
            		aria-expanded="true" aria-controls=collapseAccount>
            		<i class="fas fa-fw fa-money-bill"></i>
            		<span>정산관리</span>
            	</a>
				<div id="collapseAccount" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">
						<a class="collapse-item" href="adminSelectAccount">정산관리</a>
					</div>
				</div>
			</li>



            <!-- 게시판 관련 (고객센터, 이벤트 등등) -->
            <li class="nav-item">
            	<a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseBoard"
            		aria-expanded="true" aria-controls=collapseBoard>
            		<i class="fas fa-fw fa-clipboard"></i>
            		<span>게시판관리</span>
            	</a>
				<div id="collapseBoard" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">
<!-- 						<a class="collapse-item" href="adminSelectNotice">공지사항</a> -->
						<a class="collapse-item" href="adminSelectQna">자주묻는질문</a>
						<a class="collapse-item" href="adminSelectOTO">1:1문의</a>
						<a class="collapse-item" href="adminSelectEvent">이벤트</a>
					</div>
				</div>
			</li>




			<!-- Divider -->
			<hr class="sidebar-divider d-none d-md-block">

			<!-- Sidebar Toggler (Sidebar) -->
			<div class="text-center d-none d-md-inline">
				<button class="rounded-circle border-0" id="sidebarToggle"></button>
			</div>

        </ul>
		<!-- End of Sidebar -->


	</div>
	<!-- End of Page Wrapper -->

	<!-- Scroll to Top Button-->
	<a class="scroll-to-top rounded" href="#page-top">
		<i class="fas fa-angle-up"></i>
	</a>

	<!-- Logout Modal-->
	<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
		aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
					<button class="close" type="button" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">Ã</span>
					</button>
				</div>
				<div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
				<div class="modal-footer">
					<button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
					<a class="btn btn-primary" href="login.html">Logout</a>
				</div>
			</div>
		</div>
	</div>

    <!-- Bootstrap core JavaScript-->
    <script src="${pageContext.request.contextPath }/resources/mypage/vendor/jquery/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources/mypage/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="${pageContext.request.contextPath }/resources/mypage/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="${pageContext.request.contextPath }/resources/mypage/js/sb-admin-2.min.js"></script>



</body>

</html>