<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>soneson</title>
<script type="text/javascript">
	// 요청 작업 성공/실패 시 
	// 전달받은 오류메세지(msg)를 출력하고, 지정된 페이지(targetURL)로 이동 처리
	alert("${msg}");
	${script};
	location.href = "${targetURL}";
</script>
</head>
<body>

</body>
</html>