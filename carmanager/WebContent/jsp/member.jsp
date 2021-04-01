<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
#cc{
text-align: center;
}
</style>
 <script>  
 function check1(){
     if(document.form1.idbox.value==""){
         alert("아이디를 입력하시오");
         //document.form.id.focus();
     }
     if(document.form1.namebox.value==""){
         alert("이름을 입력하시오");
         //document.form.name.focus();
     }
     if(document.form1.mailbox.value==""){
         alert("메일을 입력하시오");
         //document.form.name.focus();
     }
     if(document.form1.addbox.value==""){
         alert("주소를 입력하시오");
         //document.form.name.focus();
     }
     if(document.form1.carnum.value==""){
         alert("차량번호를 입력하시오");
         //document.form.name.focus();
     }
 }
 
function id_chk(){
	window.open("id_dup.jsp?id="+document.form1.idbox.value,target="_self");
}            
 function checkwrite(){
	if(document.form1.idbox.value=="")
		alert("아이디를 입력하시오");
	if(document.form1.pass.value!=""&&document.form1.passh.value!="")
		if(document.form1.pass.value!=document.form1.passh.value){
			alert("비밀번호 불이치!");
		}
		else document.form1.submit();
} 
</script>
<body>

<form name="form1" method="post" action="id_dup.jsp">
 <table border="1" >
	<tr><!-- 첫번째 줄 시작 -->
	    <td id="cc">아이디</td>
	    <td><input type="text" name="idbox">
	    <input type="button" value="중복체크" onclick="id_chk()" ></td>
	</tr>
	<tr>
	    <td id="cc" >이름</td>
	    <td><input type="text" name="namebox"></td>
	</tr>
	<tr>
	    <td id="cc">비밀번호</td>
	    <td><input type="text" name="pass"></td>
	</tr>
	<tr>
	    <td id="cc">비밀번호확인</td>
	    <td><input type="text" name="passh"></td>
	</tr>
	<tr>
	    <td id="cc">성별</td>
	    <td>
	    <input type="radio" name="gender" value="1">남
	    <input type="radio" name="gender" value="2">여
	    </td>
	</tr>
	<tr>
	    <td id="cc">이메일</td>
	    <td><input type="text" name="mailbox">@
	    <select name="mailbox2">
	    <option>naver.com</option>
	    <option>hanmail.com</option>
	    </select>
	    </td>
	</tr>
	<tr>
	    <td id="cc">핸드폰</td>
	    <td>
	    <select name="num11">
	    <option>010</option>
	    <option>011</option>
	    </select>
	    -<input type="text" width="10" name="num12">
	    -<input type="text" width="10" name="num13">
	    </td>
	</tr>
	<tr>
	    <td id="cc">전화번호</td>
	    <td>
	    <input type="text" width="10" name="num21">
	    -<input type="text" width="10" name="num22">
	    -<input type="text" width="10" name="num23">
		</td>
	</tr>
	<tr>
	    <td id="cc">주소</td>
	    <td><input type="text" name="addbox"></td>
	</tr>
	<tr>
	    <td id="cc">차량번호</td>
	    <td><input type="text" name="carnum"></td>
	</tr>
	<tr>

	    <td id="cc">차량종류</td>
	    <td><input type="text" name="carsort"></td>
	</tr>
	<tr>
	    <td id="cc" colspan="2">
	    <input type="submit" value="회원가입" onclick="javascript:check1();checkwrite();">
	    <input type="reset" value="다시작성">
	    </td>
	</tr>
	</table>
	</form>
</body>
</html>