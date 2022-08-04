<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Css룸 소개</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/header.css?after">
</head>
<body>

<%@ include file="include/header.jsp" %>
<center>

<h2>Css room</h2>
<hr>
<table width="1000">
	<tr>
		<td align="center" width="30%" rowspan="6">
			Css Room<br>
			디럭스, 바다전망
		</td>
		
		<td width="10%">
			객실타입	
		</td>
	
		<td width="60%">
		원룸형(더블배드) + 테라스
		</td>
	</tr>
				
	<tr>
		<td>
			객실평수
		</td>
		<td>
			40평
		</td>
	</tr>
	
	<tr>
		<td>
			입실안내
		</td>
		<td>
			입실: 오후 16시 / 퇴실 : 오전 11시
		</td>
	</tr>
		
	<tr>
		<td>
			기준인원 
		</td>
		<td>
			기준 2인 / 최대 3인(추가요금 : 성인 20000원 , 아동 10000원)
		</td>
	</tr>	
	
	<tr>
		<td>
			특이사항
		</td>
		<td>
			침대에 누워서 바다를 조망하실 수 있는 커플을 위한 객실입니다.
		</td>
	</tr>	
		
	<tr>
		<td>
			어메니티
		</td>
		<td>
			TV, 침대, 식탁, 에어컨, 냉장고, 전자레인지, 드라이기, 취사도구, 전기밥솥,<br> 핫플레이트, 욕실용품
		</td>
	</tr>		
</table>


<table>
	<tr>
		<td>
			<table width="1000">
				<tr>
					<td><a href="${pageContext.request.contextPath }/resources/img/css1.jpg" target="_blank"><img align="middle" alt="" src="${pageContext.request.contextPath }/resources/img/css1.jpg" width="500" height="300"></a></td>
					<td><a href="${pageContext.request.contextPath }/resources/img/css2.jpg" target="_blank"><img align="middle" alt="" src="${pageContext.request.contextPath }/resources/img/css2.jpg" width="500" height="300"></a></td>
					 
					</td>
					
				</tr>
				<tr>
					<td><a href="${pageContext.request.contextPath }/resources/img/css2.png" target="_blank"><img align="middle" alt="" src="${pageContext.request.contextPath }/resources/img/css2.jpg" width="500" height="300"></a></td>
					<td><a href="${pageContext.request.contextPath }/resources/img/css1.png" target="_blank"><img align="middle" alt="" src="${pageContext.request.contextPath }/resources/img/css1.jpg" width="500" height="300"></a></td>
				</tr>
				<tr>
				<td>&nbsp; </td>
				</tr>
				<tr>
					<td align="center" colspan="2">	<input class="" type="button" value="예약하러가기" onclick="location.href='calendar'"></td>
				</tr>
			</table>
			<br>
			
			<hr>
			<table width="1000">
				<tr>
					<td>다른 방 구경하기<td>
				</tr>
				<tr>
					<td width="33%" align="center"><a href="java"><img align="middle" alt="" src="${pageContext.request.contextPath }/resources/img/java2.jpg" width="300" height="200"></a></td>
					<td width="33%" align="center"><a href="python"><img align="middle" alt="" src="${pageContext.request.contextPath }/resources/img/python2.jpg" width="300" height="200"></a></td>
					<td width="33%" align="center"><a href="oracle"><img align="middle" alt="" src="${pageContext.request.contextPath }/resources/img/ora2.png" width="300" height="200"></a></td>
				</tr>
				<tr>
					<td align="center"><a href="java">java room</a>
					<td align="center"><a href="python">python room</a>
					<td align="center"><a href="oracle">oracle room</a>
				</tr>
				
				
				
			</table>
		</td>
	</tr>
</table>

</center>
</body>
</html>