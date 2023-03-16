<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/book.css">
<title>3월 ${sday }일 영화 목록</title>
</head>
<body>
<%@ include file="../include/header.jsp" %>
<%@ include file="../include/menu.jsp" %>


<center>

<br><br><br><br>
            <span class="title">3월 ${sday }일 영화 목록<br><br></span>

<div style="width: 50%;">
<div style="float: left; width: 35%;">
	<table>
<c:forEach items="${movie}" var="movie">
		<tr>
			<td class="movie">
			<img src="${pageContext.request.contextPath }/resources/img/cmovie/${movie.mimg}">
			</td>
		</tr>
		<tr>
			<td class="mname">
			${movie.mname}
			</td>
		</tr>
</c:forEach>
	</table>
</div>
<div style="float: left; width: 65%;">
      <table>
            <%int count=0; %>
         <c:forEach items="${day}" var="days">      
         <%if(count==0){ %>
         <tr>
         <%} %>
             <td class="schedule">${days.sschedule}시<br><input type="button" value="예매하기" onclick="script:window.location='rschedule?snum=${days.snum}'" >
             <br><br>
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

</body>
</html>