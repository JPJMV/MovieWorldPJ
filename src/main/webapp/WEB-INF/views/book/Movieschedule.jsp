<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/book.css">
<title>${mname }의 상영일정</title>
</head>
<body>
<%@ include file="../include/header.jsp" %>
<%@ include file="../include/menu.jsp" %>

<center>
<br><br><br><br>

<span class="title">${mname }의 상영일정<br><br></span>

<div style="width: 30%; height: 650px;">
<div style="float: left; width: 10%;">
<table>
	<c:forEach items="${movieday}" var="movieday">
		<tr>
			<td class="movietd" width="60px;" height="80px;">
			${movieday.sday} 일
			</td>
		</tr>
	</c:forEach>
</table>
</div>
<div style="float: left; width: 90%;">
<table>
	<%int count=0; %>
<c:forEach items="${moviedata}" var="movies">
	<%if(count==0){ %>
	<tr>
		<%} %>
		<td class="scheduletd" width="500px;" height="80px;">
			<input class="daybutton" type="button" value="${movies.sschedule} " onclick="script:window.location='Cmovielist?snum=${movies.snum}'">
		</td>
		<%count++; %>
            <%if(count==2) {
            count=0;%>
          </tr>
    		<%} %>
    </c:forEach>
    </table>
     </div>
      
      
      </div>
</center>

<%@ include file="../include/footer.jsp" %>
</table>
</body>
</html>