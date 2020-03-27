<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<%!String id;
	String pw;
	Cookie[] cookies;
	String idCheck;
	String pwCheck;%>
<%
	request.setCharacterEncoding("utf-8");
	id = request.getParameter("id"); //폼에서 입력한값 읽기
	pw = request.getParameter("pw");

	cookies = request.getCookies(); //쿠키값 읽어오기
	for (Cookie cookie : cookies) {
		if (cookie.getName().equals("id")) {
			idCheck = cookie.getValue();
		}
		if (cookie.getName().equals("pw")) {
			pwCheck = cookie.getValue();
		}
	}
%>
</head>
<body>
	<div align="center">
		<h1>
			입력한 아이디 :
			<%=id%></h1>
		<h1>
			입력한 패스워드 :
			<%=pw%></h1>
		<%
			if (id.equals(idCheck) && pw.equals(pwCheck)) {
		%>
		<h1><%="로그인성공"%></h1>
		<%
			} else {
		%>
		<h1><%="로그인 실패"%></h1>
		<%
			}
		%>
		<br /> <a href="loginForm.jsp">로그인 화면으로</a><br /> <a
			href="../index.jsp">홈으로 가세요</a>
	</div>
</body>
</html>