<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>File Upload</title>
</head>
<body>
	<form name="fileForm" method="post" enctype="multipart/form-data" 
		action="fileupload_process.jsp">
		A4기준으로 한 장 이상 작성하시오. <br>
		관리자가 확인 후 정보를 지웁니다. <br>
		파일명 규칙: 메일주소.hwp<br>
		<p>	이 름  : <input type="text" name="name">
		<p>	파 일 : <input type="file" name="filename">
		<p>	<input type="submit" value="파일 올리기">
		</p>
	</form>
</body>
</html>