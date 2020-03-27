<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
</head>
<jsp:include page="/jsp/menu.jsp"></jsp:include>
<%
	String url = request.getRequestURI();
	String context = request.getContextPath();
	String path = url.substring(context.length());
	String rIp = request.getRemoteAddr();
%>
<body>
	<div align="center">
		<div>
			<h1>여기는 홈 페이지 입니다</h1>
			<%=url%><br>
			<%=context%><br>
			<%=path%><br>
			<%=rIp%><br>
		</div>
		<div>
			<a href="jsp/memberJoin.jsp">회원가입</a> <a href="jsp/loginForm.jsp">로그인
				하세요</a>
		</div>
	</div>
</body>
<jsp:include page="/jsp/tail.jsp"></jsp:include>
</html>