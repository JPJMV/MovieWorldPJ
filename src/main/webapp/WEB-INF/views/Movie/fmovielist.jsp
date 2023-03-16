<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/mv.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/book.css">
<title>개봉예정작</title>
</head>
<body>
<%@ include file="../include/header.jsp" %>
<%@ include file="../include/menu.jsp" %>
<br><br><br><br>
<center>
		<span class="title">개봉예정작<br><br></span>
   <table style="border-spacing: 20px;">
      <tr>
			<%int count=0; %>
			<c:forEach items="${mlist}" var="mlist">
      		<%if(count==0){ %>
      <tr>
        	<%} %>
			<td class="text01">
			<img src="${pageContext.request.contextPath }/resources/img/fmovie/${mlist.mimg}"><br>
			${mlist.mname}<br>
			<input class="button02" type="button" value="보기" onclick="script:window.location='fmovie?mnum=${mlist.mnum}'" >
			</td>
			<%count++; %>
            <%if(count==3) {
            count=0;%>
          </tr>
    		<%} %> 
			</c:forEach>
			
      </tr>
      </tr>
   </table>
   </center>
   <%@ include file="../include/footer.jsp"%>
</body>
</html>