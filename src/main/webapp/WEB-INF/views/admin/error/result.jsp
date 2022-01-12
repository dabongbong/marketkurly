<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="gold" align="center">
<%
	RuntimeException e = (RuntimeException)request.getAttribute("e");
%>
이용에 불편을 드려 죄송합니다. <p>
에러원인 : <%=e.getMessage() %>
<button type="button" onclick="location.href='/admin/login/form'">관리자 로그인 화면으로 가기</button>
</body>
</html>