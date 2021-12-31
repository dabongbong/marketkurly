<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%

	InitialContext context = new InitialContext();
	DataSource ds = (DataSource)context.lookup("java:comp/env/jdbc/mysql");
	
	Connection con = ds.getConnection();
	/* out.print(con);
	String sql = "select * from category"; */
	/* PreparedStatement pstmt=con.prepareStatement(sql);
	ResultSet rs =pstmt.executeQuery();
	rs.next();
	out.print(rs.getString(1)); */ 
	
	String sql = "insert into category(category_name, category_logo) values('sddf','banana')";
	PreparedStatement pstmt = con.prepareStatement(sql);
	pstmt.executeUpdate();
	
%>
ㄴㅇㄹㅎㅁㄴㅎ메
</body>
</html>