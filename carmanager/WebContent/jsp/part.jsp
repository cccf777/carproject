<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
          
</script>
<body>
<form name="form1" method="post" action="good2.jsp">
 <table border="1" >
	<tr><!-- 첫번째 줄 시작 -->
	    <td id="cc">부품번호</td>
	    <td colspan="3"><input type="text" name="partCode"></td>
	</tr>
	<tr>
	    <td id="cc" >부품명</td>
	    <td colspan="3"><input type="text" name="partName"></td>
	</tr>
	<tr>
	    <td id="cc">모델명</td>
	    <td colspan="3"><input type="text" name="model"></td>
	</tr>
	<tr>
	    <td id="cc">규격</td>
	    <td colspan="3"><input type="text" name="standard"></td>
	</tr>
	<tr>
	    <td id="cc">단위</td>
	    <td colspan="3"><input type="text" name="unit"></td>
	</tr>
	<tr>
	    <td id="cc">매입가</td>
	    <td><input type="text" name="purchase"></td>
	    <td id="cc">매출가</td>
	    <td><input type="text" name="sales"></td>
	</tr>
	<tr>
	    <td id="cc">메모</td>
	    <td colspan="3"><input type="text" width="10" name="memo"></td>
	</tr>
	<tr>
	    <td id="cc" colspan="4">
	    <input type="submit" value="부품등록">
	    <input type="reset" value="다시작성">
	    </td>
	</tr>
	</table>
	</form>
</body>
</html>