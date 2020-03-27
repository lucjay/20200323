<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키값확인</title>
</head>
<body>
	<%
		Cookie[] cookies = request.getCookies(); //쿠키값 가져오기
		for (int i = 0; i < cookies.length; i++) {
			out.println("cookies[" + i + "]name:" + cookies[i].getName() + "<br />");
			out.println("cookies[" + i + "]value:" + cookies[i].getName() + "<br />");
			out.println("=======================<br />");
		}
	%>
</body>
</html>