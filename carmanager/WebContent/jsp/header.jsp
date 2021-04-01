<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<Style>
header h1{
text-align:left;
heidht:25%;
width:100%;
}

html,body{
width:100%;
height:100%;
}
*{
padding:0%;
margin:0%;
}
#app{
width:100px;
}
hh{
flat: left;
font-size: 70px;
}
jj{
float: right;
font-size:20px;
vertical-align: middle;
}
</Style>
</head>
<body>
<header>
<%
	String checkName="";
	checkName=(String)session.getAttribute("s_Name");
	if(checkName==null){
%>
<hh>
카 센터(붕붕이 나라)
</hh>
<jj>
<form method="post" action="login.jsp">
<fieldset>
<label for="ID">회원ID:</label>
<input id="app" type="text" name="id" size="10" maxlength="10" required="required"/>
<label for="pswd">비밀번호:</label>
<input id="app" type="text" name="passwd" size="10" maxlength="10" required="required"/>|
<input type="submit" value="로그인" data-inline="true">
<input type="button" value="회원가입" onclick="location.href='member.jsp'">
</fieldset>
</form>
</jj>
</header>
<%}else{session.setMaxInactiveInterval(500);%>
<hh><label onclick="location.href='main.jsp'">카센터(붕붕이 나라)</label></hh>
<%=checkName %>님 환영합니다.
	<a href="logout.jsp">logout</a>
	<a href="member.jsp">회원가입</a>
	<%} %>
</body>
</html>