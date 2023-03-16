<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/book.css">
<title>3월의 영화 일정</title>
</head>
<body>
<%@ include file="../include/header.jsp" %>
<%@ include file="../include/menu.jsp" %>

<center>
<br><br><br><br><br>

			<span class="title">3월의 영화 일정<br><br></span>
			<br>
<table>

	         <%int count=0; %>
<c:forEach items="${day}" var="days">
         	 <%if(count==0){ %>
	<tr>
	         <%} %>
		<td>
			<input class="daybutton" type="button" value="${days.sday} 일" onclick="script:window.location='Movielist?sday=${days.sday}'">
		</td>
		     <%count++; %>
             <%if(count==5) {
             count=0;%>
             	</tr>
             <%} %> 
</c:forEach>

</center>

<%@ include file="../include/footer.jsp" %>
</table>
</body>
</html>