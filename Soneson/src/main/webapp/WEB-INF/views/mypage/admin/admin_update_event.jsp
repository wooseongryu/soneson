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

	<!-- 부트 스트랩 datepicker용 최신 jquery 링크 -->
	<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>


	<!-- 부트 스트랩 css cdn 링크 -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <link href="${pageContext.request.contextPath }/resources/mypage/css/admin_mypage.css" rel="stylesheet">

    <!-- 부트 스트랩 datepicker css 링크 -->
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/mypage/css/datepicker/bootstrap-datepicker.min.css">

    <!-- Custom fonts for this template-->
    <link href="${pageContext.request.contextPath }/resources/mypage/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    
    
    <style>
		label {
		    cursor: pointer;
		    font-size: 1em;
		}
		
		/* 못생긴 기존 input 숨기기 */
		#inputGroupFile04 {
		  /* display: none; */
		}
		
	</style>
	
	
</head>

<script>
	function confirmDelete(event_idx) {
		let result = confirm(event_idx  + "번 게시글을 삭제하시겠습니까?");
		
		if(result) {
			location.href = "adminEventDelete?event_idx=" + event_idx;
			
		}
	}
</script>


<body class="bg-gradient-primary">

    <div class="container">
        <div class="card o-hidden border-0 shadow-lg my-5">
            <div class="card-body p-0">
                <!-- Nested Row within Card Body -->
                <div class="row">
                    <div class="col-lg-12">
                        <div class="p-5">
                            <div class="text-center">
                                <h1 class="h4 text-gray-900 mb-4">게시글 수정</h1>
                            </div>
                            <form class="user" action="adminEventUpdatePro" method="post" enctype="multipart/form-data">
                            	<input type="hidden" name="event_idx" value="${event.event_idx }" >
                            	<div class="form-group row">
									<div class="col-sm-12 mb-6 mb-sm-0">
										<label for="">게시판 카테고리</label>
										<br>
	                                    <select class="form-select" name="event_category" aria-label="Default select example" >
									  		<c:forEach var="eventCategory" items="${eventCategoryList }">
												<c:choose>
													<c:when test="${eventCategory.eventCate_idx eq event.event_category }">
														<option value="${eventCategory.eventCate_idx }" selected="selected">${eventCategory.eventCate_subject }</option>
													</c:when>
													<c:otherwise>
														<option value="${eventCategory.eventCate_idx }">${eventCategory.eventCate_subject }</option>
													</c:otherwise>
												</c:choose>
											</c:forEach>
										</select>
								  	</div>
                                </div>
                            	<div class="form-group row">
                                    <div class="col-sm-12 mb-6 mb-sm-0">
										<label for="">게시글 제목</label>
                                        <input type="text" name="event_title" class="form-control form-control-user" id="exampleFirstName"
                                            value="${event.event_title }">
                                    </div>
                                </div>
                            	<div class="form-group row">
                                    <div class="col-sm-12 mb-6 mb-sm-0">
									  <label for="floatingTextarea">게시글 내용</label>
									  <textarea rows="10" name="event_content" class="form-control form-control-textarea" 
									  	placeholder="게시글내용작성" id="floatingTextarea" maxlength="3000">${event.event_content }</textarea>
									</div>
                                </div>
								<br>
								<div class="form-group row">
								  	<div class="col-sm-5 mb-2 mb-sm-0">
										<label for="">게시글 시작일</label>
										<input type="text" name="event_startDt" value="${event.event_startDt }" class="form-control form-control-user" id="fromDatepicker">
	                                </div>
								  	<div class="col-sm-5 mb-2 mb-sm-0">
										<label for="">게시글 종료일</label>
										<input type="text" name="event_endDt" value="${event.event_endDt }" class="form-control form-control-user" id="toDatepicker" >
	                                </div>
								</div>
								<br>
								<div class="form-group row">
									<div class="col-sm-5 mb-1 mb-sm-0">
									    <label for="">썸네일 사진</label>
										<input type="file" name="event_thumbnail_multi" />
								    </div>
									<div class="col-sm-5 mb-1 mb-sm-0">
								    	<label for="">게시글 사진</label>
										<input type="file" name="event_poster_multi" />
								    </div>
								</div>

                                
                                <div class="form-group row" align="center">
									<div class="col-sm-12 mb-6 mb-sm-0">
		                                <button type="submit" class="btn btn-primary">등록</button>
		                                &nbsp;
		                                <button type="reset" class="btn btn-primary">초기화</button>
		                                &nbsp;
		                                <button type="button" class="btn btn-primary" onclick="history.back()">돌아가기</button>
									</div>
								</div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>



	<!-- 부트 스트랩 js cdn 링크 -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>

	<!-- 부트 스트랩 datepicker js 링크 -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.10.0/js/bootstrap-datepicker.min.js" integrity="sha512-LsnSViqQyaXpD4mBBdRYeP6sRwJiJveh2ZIbW41EBrNmKxgr/LFZIiWT6yr+nycvhvauz8c2nYMhrP80YhG7Cw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
	
	<script src="${pageContext.request.contextPath }/resources/mypage/js/datepicker/bootstrap-datepicker.min.js"></script>
	
    <!-- Bootstrap core JavaScript-->
    <script src="${pageContext.request.contextPath }/resources/mypage/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="${pageContext.request.contextPath }/resources/mypage/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="${pageContext.request.contextPath }/resources/mypage/js/sb-admin-2.min.js"></script>

	<script>
	$("#fromDatepicker").datepicker({
			format: 'yyyy-mm-dd',
			autoclose: true,
		}).on('changeDate', function (selected) {
			var startDate = new Date(selected.date.valueOf());
			$('#toDatepicker').datepicker('setStartDate', startDate);
		}).on('clearDate', function (selected) {
			$('#toDatepicker').datepicker('setStartDate', null);
		});
		
	$("#toDatepicker").datepicker({
		format: 'yyyy-mm-dd',
		autoclose: true,
	}).on('changeDate', function (selected) {
		var endDate = new Date(selected.date.valueOf());
		$('#fromDatepicker').datepicker('setEndDate', endDate);
	}).on('clearDate', function (selected) {
		$('#fromDatepicker').datepicker('setEndDate', null);
	});
	</script>

</body>

</html>