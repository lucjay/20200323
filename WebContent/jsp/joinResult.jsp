<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입 결과</title>
<%!String name;
	String id;
	String pw;
	String pwc;
	String address;
	String call;
	String gender;
	String[] hobbys;%>
<%
	request.setCharacterEncoding("utf-8");
	name = request.getParameter("name");
	id = request.getParameter("id");
	pw = request.getParameter("pw");
	pwc = request.getParameter("pwc");
	address = request.getParameter("address");
	call = request.getParameter("call");
	gender = request.getParameter("gender");
	hobbys = request.getParameterValues("hobby");
%>
</head>
<body>
	<div align="center">
		<div>
			<h1>회원가입 결과 화면</h1>
		</div>
		<div>
			<h3>
				이름 :
				<%=name%></h3>
			<h3>
				아이디 :
				<%=id%></h3>
			<h3>
				패스워드 :
				<%=pw%></h3>
			<h3>
				패스워드확인 :
				<%=pwc%></h3>
			<h3>
				주소 :
				<%=address%></h3>
			<h3>
				전화번호 :
				<%=call%></h3>
			<h3>
				성별 :
				<%=gender%></h3>
			<h3>
				취미 :
				<%
				if (hobbys == null) {
			%>
				<%=""%>
				<%
					} else {
						for (String hobby : hobbys) {
				%>
				<%=hobby%>
				<%
					}
					}
				%>
			</h3>
		</div>
		<div>
			<button type="button" onclick="location.href='../index.jsp'">홈으로</button>
			&nbsp;&nbsp;
			<button type="button" onclick="location.href='login.jsp'">로그인하기</button>
			&nbsp;&nbsp;


		</div>

	</div>

</body>
</html>