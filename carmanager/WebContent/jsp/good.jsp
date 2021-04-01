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
	String idbox=request.getParameter("idbox");//뒤의 아이디는 폼에서 넘어오는 아이디임 
	String namebox=request.getParameter("namebox");
	String pass=request.getParameter("pass");
	String passh=request.getParameter("passh");
	String gender=request.getParameter("gender");
	String mailbox=request.getParameter("mailbox")+"@"+request.getParameter("mailbox2");
	String num11=request.getParameter("num11")+"-"+request.getParameter("num12")+"-"+request.getParameter("num13");
	String num21=request.getParameter("num21")+"-"+request.getParameter("num22")+"-"+request.getParameter("num23");
	String addbox=request.getParameter("addbox");
	String carnum=request.getParameter("carnum");
	String carsort=request.getParameter("carsort");
	System.out.println("id :"+idbox);
	System.out.println("name :"+namebox);
	System.out.println("pass :"+pass);
	System.out.println("passh :"+passh);
	System.out.println("gender :"+gender);
	System.out.println("mail :"+mailbox);
	System.out.println("phonenum :"+num11);
	System.out.println("telnum :"+num21);
	System.out.println("add :"+addbox);
	System.out.println("carnum :"+carnum);
	System.out.println("carsort :"+carsort);
	
	PreparedStatement pstmt=null;
	try{
		String sql="insert into car_member(id,name,passwd,gender,email,phone,tel,address,carNumber,carType) values(?,?,?,?,?,?,?,?,?,?)";
		pstmt = conn1.prepareStatement(sql);
		pstmt.setString(1, idbox);//홈에서 넘어온 id임 k111이 들어온다 (첫번째값)
		pstmt.setString(2, namebox);//두번째 열 값
		pstmt.setString(3, pass);//세번째 열 값
		pstmt.setString(4, gender);
		pstmt.setString(5, mailbox);
		pstmt.setString(6, num11);
		pstmt.setString(7, num21);
		pstmt.setString(8, addbox);
		pstmt.setString(9, carnum);
		pstmt.setString(10, carsort);
		pstmt.executeUpdate();
		System.out.println("저장완료");
	}catch(SQLException e){
		e.printStackTrace();
		System.out.println("저장실패");
	}
%>
</body>
</html>