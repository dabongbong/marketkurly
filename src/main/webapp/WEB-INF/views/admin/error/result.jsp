<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
div{
	padding-top: 100px;
	font-size:35px;
}

.button {
  padding: 15px 25px;
  font-size: 24px;
  text-align: center;
  cursor: pointer;
  outline: none;
  color: #fff;
  background-color: #330066;
  border: none;
  border-radius: 15px;
  /* box-shadow: 0 9px #999; */
}

.button:hover {background-color: #0099cc}

.button:active {
  background-color: #3e8e41;
  box-shadow: 0 5px #666;
  transform: translateY(4px);
}
</style>
</head>
<body align="center">
<%
	RuntimeException e = (RuntimeException)request.getAttribute("e");
%>
<div>이용에 불편을 드려 죄송합니다. 
<br><%=e.getMessage() %> </div><br>
<button type="button" class="button" onclick="location.href='/admin/login/form'">관리자 로그인 화면으로 가기</button>
<br>
<br>
<img src="/resources/admin/img/logologo.png">


</body>
</html>