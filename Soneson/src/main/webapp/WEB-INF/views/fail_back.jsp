<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>soneson</title>
<script type="text/javascript">
	// 요청 작업 실패 시 전달받은 오류 메세지(msg 속성값) 출력 후 이전페이지로 돌아가기
	alert("${msg}");
	if("${isClose}" == "true") { //true "" 안하면 문자열 존재하기만 해도 무조건 true가 됨
		window.close();
		
	} else {
		history.back();
	}
</script>
</head>
<body>

</body>
</html>
