<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<%request.setCharacterEncoding("utf-8"); %>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
request.setCharacterEncoding("utf-8");
String id=request.getParameter("id");
String passwd =request.getParameter("passwd");
String name="";

Connection conn =null;
PreparedStatement pstmt=null;
ResultSet rs=null;
String sql="";
String jdbc_driver="com.mysql.cj.jdbc.Driver";
String jdbc_url="jdbc:mysql://localhost/yangjung?serverTimezone=UTC";

try{
	Class.forName(jdbc_driver);
	conn=DriverManager.getConnection(jdbc_url,"root","1234");
	sql="select *from car_member where id=?";
	pstmt=conn.prepareStatement(sql);
	pstmt.setString(1,id);
	rs=pstmt.executeQuery();
	
	if(rs.next()){
		String userID=rs.getString("id");
		String userPWD=rs.getString("passwd");
		String userName=rs.getString("name");
		String pwd=rs.getString("passwd");
		if(passwd.equals(pwd)){%>
			<%=rs.getString("name")%>님 환영합니다.<%
			session.setAttribute("s_Name",userName);
			session.setAttribute("s_Id",userID);
			response.sendRedirect("main.jsp");
		}
		else{%>
		<script type="text/javascript">
		alert("비번오류\n 비번다시쳐")
		history.back();
		</script>
		<%
		}	
	 }else{%>
	<script type="text/javascript">
	alert("id오류\n다시치소");
	history.back();
	</script>
<%}
}catch(SQLException e){
	out.println(e.getMessage());
}finally{
	if(rs!=null)
		rs.close();
	if(pstmt !=null)
		pstmt.close();
	if(conn !=null)
		conn.close();
}
%>
</body>
</html>