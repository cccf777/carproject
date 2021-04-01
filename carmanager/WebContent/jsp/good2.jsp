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
<%@ include file="dbconcar.jsp" %>
<%
	request.setCharacterEncoding("UTF-8");
	String partCode=request.getParameter("partCode");//뒤의 아이디는 폼에서 넘어오는 아이디임 
	String partName=request.getParameter("partName");
	String model=request.getParameter("model");
	String standard=request.getParameter("standard");
	String unit=request.getParameter("unit");
	String purchase=request.getParameter("purchase");
	String sales=request.getParameter("sales");
	String memo=request.getParameter("memo");
	System.out.println("partCode :"+partCode);
	System.out.println("partName :"+partName);
	System.out.println("model :"+model);
	System.out.println("standard :"+standard);
	System.out.println("unit :"+unit);
	System.out.println("purchase :"+purchase);
	System.out.println("sales :"+sales);
	System.out.println("memo :"+memo);
	
	PreparedStatement pstmt=null;
	try{
		String sql="insert into partbl(partCode,partName,model,standard,unit,purchase,sales,memo) values(?,?,?,?,?,?,?,?)";
		pstmt = conn1.prepareStatement(sql);
		pstmt.setString(1, partCode);//홈에서 넘어온 id임 k111이 들어온다 (첫번째값)
		pstmt.setString(2, partName);//두번째 열 값
		pstmt.setString(3, model);//세번째 열 값
		pstmt.setString(4, standard);
		pstmt.setString(5, unit);
		pstmt.setString(6, purchase);
		pstmt.setString(7, sales);
		pstmt.setString(8, memo);
		pstmt.executeUpdate();
		System.out.println("저장완료");
	}catch(SQLException e){
		e.printStackTrace();
		System.out.println("저장실패");
	}
%>
</body>
</html>