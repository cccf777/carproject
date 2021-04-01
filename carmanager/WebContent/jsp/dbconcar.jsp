<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>To the moon111</h1>
<%
	Connection conn1=null;
	try{
	String jdbcDriver="com.mysql.cj.jdbc.Driver";
	String jdbcurl="jdbc:mysql://localhost/yangjung?serverTimezone=UTC";
	String user="root";
	String pass="1234";
	
	Class.forName(jdbcDriver);
	conn1 = DriverManager.getConnection(jdbcurl,user,pass);
	System.out.println("성공");
	}catch (SQLException e){
		e.printStackTrace();
		System.out.println("db연결 실패~!");
		/* System.out.println("SQLException: "+e.getMessage()); */
	}
%>
</body>
</html>