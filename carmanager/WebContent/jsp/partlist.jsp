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
<h1>부품정보</h1>
<form>
<%
	Connection conn=null;
	PreparedStatement pstmt=null;
	String sql="";
	ResultSet rs=null;
	String str="";
	String msg="";
	
	String jdbc___Driver="com.mysql.cj.jdbc.Driver";
	String jdbc___url="jdbc:mysql://localhost/yangjung?serverTimezone=UTC";
	try{
	Class.forName(jdbc___Driver);
	conn = DriverManager.getConnection(jdbc___url,"root","1234");
	sql="select*from partbl";
	pstmt=conn.prepareStatement(sql);
	rs = pstmt.executeQuery();
	/* if(rs.next()){ */
	%>
	<table border="1">
<tr height="40px" bgcolor="gray" align="center">
	<td width="100px">부품코드</td>
	<td>부품명</td>
	<td>모델명</td>
	<td>규격</td>
	<td width="80px">단위</td>
	<td width="80px">매입단가</td>
	<td width="80px">매출단가</td>
	<td width="120px">메모</td>
</tr>
<%
if(rs.next()){
	%>
	<tr>
		<td><%=rs.getString(1)%></td> 
		<td><%=rs.getString("partName")%></td>
		<td><%=rs.getString("model")%></td>
		<td><%=rs.getString("standard")%></td>
		<td><%=rs.getString("unit")%></td>
		<td><%=rs.getString("purchase")%></td>
		<td><%=rs.getString("sales")%></td>
		<td><%=rs.getString("memo")%></td>
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