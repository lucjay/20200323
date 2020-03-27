<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%
	Cookie cookie = new Cookie("id", "홍길동");
	cookie.setMaxAge(60 * 60);
	response.addCookie(cookie);
	cookie = new Cookie("pw", "1234");
	response.addCookie(cookie);
%>
<%
	String url = request.getRequestURI();
	String context = request.getContextPath();
	String path = url.substring(context.length());
	String rIp = request.getRemoteAddr();
%>
</head>
<body>
	<div align="center">
		<div align="center">
			<h1>로그인</h1>
		</div>
		<br />
		<div align="center">
			<form id="frm" name="frm" action="loginResult.jsp" method="post">
				<div>
					<table border="1">
						<tr>
							<th>아이디</th>
							<td><input type="text" id="id" name="id"></td>
						</tr>
						<tr>
							<th>패스워드</th>
							<td><input type="text" id="pw" name="pw"></td>
						</tr>
					</table>
				</div>

				<div>
					<br /> <input type="submit" value="로그인">&nbsp;&nbsp; <input
						type="reset" value="취소">&nbsp;&nbsp; <input type="button"
						value="홈으로" onclick="location.href='../index.jsp' ">
				</div>
			</form>

		</div>
		<%=url%><br>
		<%=context%><br>
		<%=path%><br>
		<%=rIp%><br>
	</div>
</body>
</html>