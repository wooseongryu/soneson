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
	
	
	
<script type="text/javascript">
	function adminOTOAnswerUpdate() {
		if (!confirm("답변을 수정 하시겠습니까?")) {
			return;
		}
		$.ajax({
			type: 'post',
			url: 'adminOTOAnswerUpdate',
			data: {
			},
			dataType: 'json',
			success: function(resp) {
// 				$("#answerBtn").hide();

				$("#adminAnswer").children().remove();
				
				$("#adminAnswer").append(
						  '	<div id="adminAnswer">                                                                                                                                                              			 '
						+ '		<div class="text-center">                                                                                                                                                                    '
						+ '			<h1 class="h4 text-gray-900 mb-4">1대1문의 답변 보기</h1>                                                                                                                                '
						+ '		</div>                                                                                                                                                                                       '
						+ '		<form class="user" action="adminOneToOneUpdatePro" method="post" enctype="multipart/form-data">                                                                                              '
						+ '			<input type="hidden" name="myQuestion_num" id="myQuestion_num" value="${question.myQuestion_num }">                                                                                      '
						+ '			<div class="form-group row">                                                                                                                                                             '
						+ '				<div class="col-sm-12 mb-6 mb-sm-0">                                                                                                                                                 '
						+ '					<label for="">질문 제목</label>                                                                                                                                                  '
						+ '					<input type="text" value="${question.myQuestion_subject }" class="form-control form-control-user" id="exampleFirstName" readonly="readonly">                                     '
						+ '				</div>                                                                                                                                                                               '
						+ '			</div>                                                                                                                                                                                   '
						+ '			<div class="form-group row">                                                                                                                                                             '
						+ '				<div class="col-sm-12 mb-6 mb-sm-0">                                                                                                                                                 '
						+ '				  <label for="floatingTextarea">질문 내용</label>                                                                                                                                    '
						+ '				  <textarea rows="10" class="form-control form-control-textarea" id="floatingTextarea" readonly="readonly">${question.myQuestion_content }</textarea>                                '
						+ '				</div>                                                                                                                                                                               '
						+ '			</div>                                                                                                                                                                                   '
						+ '			<div class="form-group row" >                                                                                                                                                            '
						+ '				<div class="col-sm-12 mb-6 mb-sm-0">                                                                                                                                                 '
						+ '					<label for="floatingTextarea">답변 내용</label>                                                                                                                                  '
						+ '					<textarea rows="10" name="myQuestion_answer" class="form-control form-control-textarea" id="floatingTextareaAnswer"></textarea>													 '
						+ '				</div>                                                                                                                                                                               '
						+ '			</div>                                                                                                                                                                                   '
						+ '			<div class="form-group row" align="center" id="answerBtn">                                                                                                                               '
						+ '				<div class="col-sm-12 mb-6 mb-sm-0">                                                                                                                                                 '
						+ '					<input type="button" class="btn btn-primary btn-user" onclick="adminOTOAnswerUpdatePro()" value="답변 변경하기">                                                                 '
						+ '					<input type="button" class="btn btn-primary btn-user" onclick="adminOTOAnswerCencel()" value="돌아가기">                                                                         '
						+ '				</div>                                                                                                                                                                               '
						+ '			</div>                                                                                                                                                                                   '
						+ '		</form>                                                                                                                                                                                      '
						+ '	</div>																																															 '
				); 
			},
			error: function() {
				alert("에러!");
			}
		});
	}
	
	function adminOTOAnswerUpdatePro() {
		if (!confirm("답변을 변경 하시겠습니까?")) {
			return;
		}
		
		$.ajax({
			type: 'post',
			url: 'adminOTOAnswerUpdatePro',
			data: {
				myQuestion_answer: $('#floatingTextareaAnswer').val(),
				myQuestion_num: $('#myQuestion_num').val()
			},
			dataType: 'json',
			success: function(resp) {
				
				alert("답변이 변경 되었습니다");
				
				$("#adminAnswer").children().remove();
				
				$("#adminAnswer").append(
						  '	<div id="adminAnswer">                                                                                                                                                           			     '
						+ '		<div class="text-center">                                                                                                                                                                    '
						+ '			<h1 class="h4 text-gray-900 mb-4">1대1문의 답변 보기</h1>                                                                                                                                '
						+ '		</div>                                                                                                                                                                                       '
						+ '		<form class="user" method="post" enctype="multipart/form-data">                                                                                              								 '
						+ '			<input type="hidden" name="myQuestion_num" id="myQuestion_num" value="${question.myQuestion_num }">                                                                                      '
						+ '			<div class="form-group row">                                                                                                                                                             '
						+ '				<div class="col-sm-12 mb-6 mb-sm-0">                                                                                                                                                 '
						+ '					<label for="">질문 제목</label>                                                                                                                                                  '
						+ '					<input type="text" value="${question.myQuestion_subject }" class="form-control form-control-user" id="exampleFirstName" readonly="readonly">                                     '
						+ '				</div>                                                                                                                                                                               '
						+ '			</div>                                                                                                                                                                                   '
						+ '			<div class="form-group row">                                                                                                                                                             '
						+ '				<div class="col-sm-12 mb-6 mb-sm-0">                                                                                                                                                 '
						+ '				  <label for="floatingTextarea">질문 내용</label>                                                                                                                                    '
						+ '				  <textarea rows="10" class="form-control form-control-textarea" id="floatingTextarea" readonly="readonly">${question.myQuestion_content }</textarea>                                '
						+ '				</div>                                                                                                                                                                               '
						+ '			</div>                                                                                                                                                                                   '
						+ '			<div class="form-group row" >                                                                                                                                                            '
						+ '				<div class="col-sm-12 mb-6 mb-sm-0">                                                                                                                                                 '
						+ '					<label for="floatingTextarea">답변 내용</label>                                                                                                                                  '
						+ '					<textarea rows="10" name="myQuestion_answer" class="form-control form-control-textarea" id="floatingTextareaAnswer" readonly="readonly">${question.myQuestion_answer }</textarea>'
						+ '				</div>                                                                                                                                                                               '
						+ '			</div>                                                                                                                                                                                   '
						+ '			<div class="form-group row" align="center" id="answerBtn">                                                                                                                               '
						+ '				<div class="col-sm-12 mb-6 mb-sm-0">                                                                                                                                                 '
						+ '					<input type="button" class="btn btn-primary btn-user" onclick="adminOTOAnswerUpdate()" value="수정하기">                                                                         '
						+ '					<input type="button" class="btn btn-primary btn-user" onclick="history.back()" value="돌아가기">                                                                                 '
						+ '				</div>                                                                                                                                                                               '
						+ '			</div>                                                                                                                                                                                   '
						+ '		</form>                                                                                                                                                                                      '
						+ '	</div>																																															 '
				);
				location.reload();
			},
			error: function() {
				alert("답변 변경 실패");
			}
		});
	}
	
	
	function adminOTOAnswerCencel() {
		if (!confirm("이전 화면으로 돌아가시겠습니까?")) {
			return;
		}
		$.ajax({
			type: 'post',
			url: 'adminOTOAnswerCencel',
			dataType: 'json',
			success: function(resp) {
				
					$("#adminAnswer").children().remove();
				
					$("#adminAnswer").append(
					  '	<div id="adminAnswer">                                                                                                                                                           			     '
					+ '		<div class="text-center">                                                                                                                                                                    '
					+ '			<h1 class="h4 text-gray-900 mb-4">1대1문의 답변 보기</h1>                                                                                                                                '
					+ '		</div>                                                                                                                                                                                       '
					+ '		<form class="user" method="post" enctype="multipart/form-data">                                                                                              								 '
					+ '			<input type="hidden" name="myQuestion_num" id="myQuestion_num" value="${question.myQuestion_num }">                                                                                      '
					+ '			<div class="form-group row">                                                                                                                                                             '
					+ '				<div class="col-sm-12 mb-6 mb-sm-0">                                                                                                                                                 '
					+ '					<label for="">질문 제목</label>                                                                                                                                                  '
					+ '					<input type="text" value="${question.myQuestion_subject }" class="form-control form-control-user" id="exampleFirstName" readonly="readonly">                                     '
					+ '				</div>                                                                                                                                                                               '
					+ '			</div>                                                                                                                                                                                   '
					+ '			<div class="form-group row">                                                                                                                                                             '
					+ '				<div class="col-sm-12 mb-6 mb-sm-0">                                                                                                                                                 '
					+ '				  <label for="floatingTextarea">질문 내용</label>                                                                                                                                    '
					+ '				  <textarea rows="10" class="form-control form-control-textarea" id="floatingTextarea" readonly="readonly">${question.myQuestion_content }</textarea>                                '
					+ '				</div>                                                                                                                                                                               '
					+ '			</div>                                                                                                                                                                                   '
					+ '			<div class="form-group row" >                                                                                                                                                            '
					+ '				<div class="col-sm-12 mb-6 mb-sm-0">                                                                                                                                                 '
					+ '					<label for="floatingTextarea">답변 내용</label>                                                                                                                                  '
					+ '					<textarea rows="10" name="myQuestion_answer" class="form-control form-control-textarea" id="floatingTextareaAnswer" readonly="readonly">${question.myQuestion_answer }</textarea>'
					+ '				</div>                                                                                                                                                                               '
					+ '			</div>                                                                                                                                                                                   '
					+ '			<div class="form-group row" align="center" id="answerBtn">                                                                                                                               '
					+ '				<div class="col-sm-12 mb-6 mb-sm-0">                                                                                                                                                 '
					+ '					<input type="button" class="btn btn-primary btn-user" onclick="adminOTOAnswerUpdate()" value="수정하기">                                                                         '
					+ '					<input type="button" class="btn btn-primary btn-user" onclick="history.back()" value="돌아가기">                                                                                 '
					+ '				</div>                                                                                                                                                                               '
					+ '			</div>                                                                                                                                                                                   '
					+ '		</form>                                                                                                                                                                                      '
					+ '	</div>																																															 '
					);
			},
			error: function() {
				alert("취소 실패");
			}
			
		});
	}
	

</script>
	
	
</head>

<body class="bg-gradient-primary">

    <div class="container">
        <div class="card o-hidden border-0 shadow-lg my-5">
            <div class="card-body p-0">
                <!-- Nested Row within Card Body -->
                <div class="row">
                    <div class="col-lg-12">
                        <div class="p-5" id="adminAnswer">
                            <div class="text-center">
                                <h1 class="h4 text-gray-900 mb-4">1대1문의 답변 보기</h1>
                            </div>
                            <form class="user" action="adminOneToOneUpdatePro" method="post" enctype="multipart/form-data">
                            	<input type="hidden" name="myQuestion_num" id="myQuestion_num" value="${question.myQuestion_num }">
                                <div class="form-group row">
                                    <div class="col-sm-12 mb-6 mb-sm-0">
										<label for="">질문 제목</label>
                                        <input type="text" value="${question.myQuestion_subject }" class="form-control form-control-user" id="exampleFirstName" readonly="readonly">
                                    </div>
                                </div>
								<div class="form-group row">
                                    <div class="col-sm-12 mb-6 mb-sm-0">
									  <label for="floatingTextarea">질문 내용</label>
									  <textarea rows="10" class="form-control form-control-textarea" id="floatingTextarea" readonly="readonly">${question.myQuestion_content }</textarea>
									</div>
                                </div>
                                <div class="form-group row" >
                                    <div class="col-sm-12 mb-6 mb-sm-0">
									  <label for="floatingTextarea">답변 내용</label>
									  <textarea rows="10" name="myQuestion_answer" class="form-control form-control-textarea" id="floatingTextareaAnswer" readonly="readonly">${question.myQuestion_answer }</textarea>
									</div>
                                </div>
                                <div class="form-group row" align="center" id="answerBtn">
									<div class="col-sm-12 mb-6 mb-sm-0">
		                                <input type="button" class="btn btn-primary btn-user" onclick="adminOTOAnswerUpdate()" value="수정하기">
		                                <input type="button" class="btn btn-primary btn-user" onclick="history.back()" value="돌아가기">
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

    <!-- Bootstrap core JavaScript-->
    <script src="${pageContext.request.contextPath }/resources/mypage/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="${pageContext.request.contextPath }/resources/mypage/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="${pageContext.request.contextPath }/resources/mypage/js/sb-admin-2.min.js"></script>

</body>

</html>