<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/header.css?after">
</head>
<body>
<%@ include file="include/header.jsp" %>
<center>

<form action ="loginOk" method="post">

<table>
	<tr >
		<td colspan="2" align="center">관리자 로그인</td>
	</tr>
	<tr>
		<td>아이디</td>
		<td>
		<input type="id" name="id">
		</td>
	</tr>

	<tr>
		<td>비밀번호</td>
		<td>
		<input type="password" name="pw">
		</td>
	</tr>

	<tr >
		<td colspan="2" align="right">
		<input type="submit" value="로그인">
		</td>
	</tr>

</table>
</form>
</center>

<%@ include file="include/footer.jsp" %>
</body>
</html>