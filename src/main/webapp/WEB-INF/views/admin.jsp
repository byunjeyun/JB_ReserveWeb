<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>        
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>   
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
	<%
		String id=(String)session.getAttribute("id");
		if(id!=null){
	%>
<h2> 관리자 페이지 입니다</h2>

예약현황 나오면 페이지 링크를 걸거나 예약현황을 볼 수 있게 만들거에요 

<hr>

<a href="qna">QNA 게시판목록 바로가기</a> 


	<% 	
	} else if(id==null){
	%>
	관리자 로그인이 필요한 페이지 입니다.<br>
	세션 시간이 만료되어 재로그인이 필요 합니다.<br>   
<a href="login">로그인페이지 바로가기</a>	
	
	
	
	
	<%
	}
	%>
</center>
<%@ include file="include/footer.jsp" %>
</body>
</html>