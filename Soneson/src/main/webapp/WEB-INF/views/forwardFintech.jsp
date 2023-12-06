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
	
	if("${isClose}" == "true") { //true "" 안하면 문자열 존재하기만 해도 무조건 true가 됨
		debugger;
		window.close();
		
		window.opener.${functionName}();
		
// 		window.opener.location.href = "${targetURL}";
	} else {
		location.href = "${targetURL}";
		
	}
	
// 	${script};
// 	location.href = "${targetURL}";
</script>
</head>
<body>

</body>
</html>