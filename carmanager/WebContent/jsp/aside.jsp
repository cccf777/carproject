<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<Style>
aside{
width:20%;
height:70%;
 background-color: green;
float:right;
button-align:center;
}
html,body{
                width:100%;
                height:100%;
            }
            *{
                padding:0%;
                margin:0%;
            }
</Style>
</head>
<body>
<aside>
<input type="button" value="고객등록" style="float:right" onclick="location.href='custom.jsp'"><br>
<input type="button" value="정비등록" style="float:right"><br>
<input type="button" value="부품등록" style="float:right" onclick="location.href='part.jsp'"><br>
<input type="button" value="현재위치" style="float:right"><br>
</aside>
</body>
</html>