<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<%request.setCharacterEncoding("utf-8"); %>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>고객 리스트</h1>
<form>
<!-- <table border="1">
<tr height="40px" bgcolor="gray" align="center">
	<td width="100px">고객ID</td>
	<td>고객이름</td>
	<td>자동차번호</td>
	<td>자동차종류</td>
	<td width="80px">핸드폰</td>
	<td width="80px">전화번호</td>
	<td width="200px">주소</td>
</tr> -->
<%
	Connection conn=null;
	PreparedStatement pstmt=null;
	String sql="";
	ResultSet rs=null;
	String str="";
	String msg="";
	
	String jdbc__Driver="com.mysql.cj.jdbc.Driver";
	String jdbc__url="jdbc:mysql://localhost/yangjung?serverTimezone=UTC";
	try{
	Class.forName(jdbc__Driver);
	conn = DriverManager.getConnection(jdbc__url,"root","1234");
	sql="select*from car_member";
	pstmt=conn.prepareStatement(sql);
	rs = pstmt.executeQuery();
	/* if(rs.next()){ */
	%>
	<table border="1">
<tr height="40px" bgcolor="gray" align="center">
	<td width="100px">고객ID</td>
	<td>고객이름</td>
	<td>자동차번호</td>
	<td>자동차종류</td>
	<td width="80px">핸드폰</td>
	<td width="80px">전화번호</td>
	<td width="200px">주소</td>
</tr>
<%
if(rs.next()){
	%>
	<tr>
		<td><%=rs.getString(1)%></td> 
		<td><%=rs.getString("name")%></td>
		<td><%=rs.getString("carNumber")%></td>
		<td><%=rs.getString("carType")%></td>
		<td><%=rs.getString("phone")%></td>
		<td><%=rs.getString("tel")%></td>
		<td><%=rs.getString("address")%></td>
	</tr>
<%
}}
catch(SQLException exx){
	exx.getMessage();
}
%>  
</table>
</form>
</body>
</html>