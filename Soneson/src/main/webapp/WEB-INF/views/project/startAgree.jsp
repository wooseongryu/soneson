<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/soneson/css/projectstyle.css" type="text/css">
<script src= "${pageContext.request.contextPath }/resources/soneson/js/jquery-3.7.0.js"></script>
<script>
	function backToStart() {
		history.back();
	}

	$(function() {
		//체크박스 전체선택 시 활성화
		$(".plan-agree-check").click(function() {
			let checks =$(".plan-agree-check:checked").length;
// 			alert(checks);
			if(checks == 3) {
				$("#step2_next").css("background","rgb(248, 100, 83)").prop("disabled",false);
			} else {
				$("#step2_next").css("background","rgb(240, 240, 240)").prop("disabled",true);
			}
			
		});
		
		$("#step2_next").on("click",function() {
			$(this).css({"background":"rgb(248, 100, 83)","color":"#ffffff"});
// 			location.href="projectInsertForm";
		});
		
	});
</script>

</head>
<body>
	<div class="pro-step1-container">
		<div class="pro-step1-start">
			<div>
				<div class="pro-step1-plan">
					<div class="plan-title">
						<h2>작성 전, 준비해 주세요.</h2>
						<p>프로젝트를 진행하시려면 아래 내용을 준비해주세요.</p>
					</div>
					<div class="plan-agree">
						<ul class="agree-list">
							<li>
								<label for="plan-agree1" class="agree-check">
									<input class="plan-agree-check" id="plan-agree1" style='zoom:1.4;' type="checkbox">
									<div>
										대표창작자는 <strong>만 19세 이상의 성인</strong>이어야 합니다.
									</div>
								</label>
							</li>
							<li>
								<label for="plan-agree2" class="agree-check">
									<input class="plan-agree-check" id="plan-agree2" style='zoom:1.4;' type="checkbox">
									<div>
										창작자의 <strong>본인 명의의 휴대폰 번호</strong>와 <strong>이메일 주소</strong>가 필요합니다.
									</div>
								</label>
							</li>
							<li>
								<label for="plan-agree3" class="agree-check">
									<input class="plan-agree-check" id="plan-agree3" style='zoom:1.4;' type="checkbox">
									<div>
										펀딩 성공 후 정산을 위해 <strong>신분증 또는 사업자 등록증, 국내 은행 계좌</strong>를 준비해주세요.
<%-- 										${param.pro_categorie } --%>
<%-- 										${param.pro_summary } --%>
									</div>
								</label>
							</li>
						</ul>
					</div>
					<form action="projectInsertForm" method="post">
						<div class="agree-next">
							<input type="hidden" name="pro_categorie" value="${param.pro_categorie }">
							<input type="hidden" name="pro_title" value="${param.pro_title }">
							<button type="button" id="step2_prev" onclick="backToStart()">돌아가기</button>
							<button id="step2_next" disabled="disabled">다음</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>