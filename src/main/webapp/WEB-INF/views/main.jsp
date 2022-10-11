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
<div>
<img src="${pageContext.request.contextPath }/resources/img/main2.jpg" class="" width="80%" height="">
</div>

<br>

<div style="float:left; width:50%">
<table width="">
	<tr>
		<td width="" align="center"><a href="java"><img align="middle" alt="" src="${pageContext.request.contextPath }/resources/img/java2.jpg" width="300" height="200"></a></td>
		<td width="" align="center"><a href="python"><img align="middle" alt="" src="${pageContext.request.contextPath }/resources/img/python2.jpg" width="300" height="200"></a></td>
		
	</tr>
	<tr>
		<td width="" align="center"><a href="oracle"><img align="middle" alt="" src="${pageContext.request.contextPath }/resources/img/ora2.png" width="300" height="200"></a></td>
		<td width="" align="center"><a href="css"><img align="middle" alt="" src="${pageContext.request.contextPath }/resources/img/css2.jpg" width="300" height="200"></a></td>
	</tr>	
</table>
</div>
<div style="float:left; width:50%">

<table width= "" align="left">
	<tr class="">
		<th colspan="4">최근 리뷰</th>
	</tr>
	<tr class="">
		<th>방이름</th>
		<th>리뷰내용</th>
		<th>평점</th>
		<th>작성일</th>
	</tr>
	<tr class="">
		<td>${review01.rname}</td>
		<td>
			<c:choose>
					<c:when test="${fn:length(review01.rcontent) > 30}">
						<c:out value="${fn:substring(review01.rcontent,0,29) }" /> ...
					</c:when> 
					<c:otherwise>
						<c:out value="${review01.rcontent}"/>
					</c:otherwise>
			</c:choose>
		</td>
		<td>${review01.rscore}</td>
		<td>${review01.rvdate}</td>
	</tr>
	<tr class="">
		<td>${review02.rname}</td>
		<td>
			<c:choose>
					<c:when test="${fn:length(review02.rcontent) > 30}">
						<c:out value="${fn:substring(review02.rcontent,0,29) }" /> ...
					</c:when> 
					<c:otherwise>
						<c:out value="${review02.rcontent}"/>
					</c:otherwise>
			</c:choose>
		</td>
		<td>${review02.rscore}</td>
		<td>${review02.rvdate}</td>
	</tr>
	<tr class="">
		<td>${review03.rname}</td>
		<td>
			<c:choose>
					<c:when test="${fn:length(review03.rcontent) > 40}">
						<c:out value="${fn:substring(review03.rcontent,0,29) }" /> ...
					</c:when> 
					<c:otherwise>
						<c:out value="${review03.rcontent}"/>
					</c:otherwise>
			</c:choose>
		</td>
		<td>${review03.rscore}</td>
		<td>${review03.rvdate}</td>
	</tr>
	<tr class="">
		<td>${review04.rname}</td>
		<td>
			<c:choose>
					<c:when test="${fn:length(review04.rcontent) > 40}">
						<c:out value="${fn:substring(review04.rcontent,0,29) }" /> ...
					</c:when> 
					<c:otherwise>
						<c:out value="${review04.rcontent}"/>
					</c:otherwise>
			</c:choose>
		</td>
		<td>${review04.rscore}</td>
		<td>${review04.rvdate}</td>
	</tr>
	<tr class="">
		<td>${review05.rname}</td>
		<td>
			<c:choose>
					<c:when test="${fn:length(review05.rcontent) > 40}">
						<c:out value="${fn:substring(review05.rcontent,0,29) }" /> ...
					</c:when> 
					<c:otherwise>
						<c:out value="${review05.rcontent}"/>
					</c:otherwise>
			</c:choose>
		</td>
		<td>${review05.rscore}</td>
		<td>${review05.rvdate}</td>
	</tr>
</table>
</div>
<hr>
<div style=" float:left">
<table>
	<tr>
		<th colspan="3">성수기 가격 안내</th>			  			  
	</tr>
	<tr>
		<th>방이름</th>
		<th>주말</th>
		<th>일반</th>
	</tr>
	<tr>
		<td align="center">java</td>
		<td align="center">100만원</td>
		<td align="center">80만원</td>
	</tr>	
	<tr>
		<td>oracle</td>
		<td align="center">100만원</td>
		<td align="center">80만원</td>
	</tr>
	<tr>
		<td>css</td>
		<td align="center">100만원</td>
		<td align="center">80만원</td>
	</tr>
	<tr>
		<td>python</td>
		<td align="center">100만원</td>
		<td align="center">80만원</td>
	</tr>
</table>
</div>

<div style=" float:left">
<table>
	<tr>
		<th colspan="3">비수기 가격 안내</th>			  			  
	</tr>
	<tr>
		
		<th>주말</th>
		<th>일반</th>
	</tr>
	<tr>
		
		<td align="center">80만원</td>
		<td align="center">60만원</td>
	</tr>	
	<tr>
		
		<td align="center">80만원</td>
		<td align="center">60만원</td>
	</tr>
	<tr>
		
		<td align="center">80만원</td>
		<td align="center">60만원</td>
	</tr>
	<tr>
		
		<td align="center">80만원</td>
		<td align="center">60만원</td>
	</tr>
</table>
</div>		

</center>
<%@ include file="include/footer.jsp" %>
</body>
</html>