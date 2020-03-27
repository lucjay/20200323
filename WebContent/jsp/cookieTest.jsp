<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
		<div>
			<h1>쿠키값을 테스트</h1>
		</div>
		<div>
			<%
				Cookie cookie = new Cookie("name", "홍길동"); //쿠키생성
				cookie.setMaxAge(60 * 60); //1시간
				response.addCookie(cookie); //쿠키값 내려보내기
				cookie = new Cookie("pw", "1234");
				response.addCookie(cookie);
			%>
		</div>
		<div>
			<a href="cookieResult.jsp">쿠키값 확인하기</a>
		</div>
	</div>
</body>
</html>