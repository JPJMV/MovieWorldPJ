<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/Store.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/book.css">
<title>음료</title>
</head>
<body>
<%@ include file="../include/header.jsp" %>
<%@ include file="../include/menu.jsp" %>
<br><br><br><br>
<center>
<span class="title">스 낵<br><br></span>
<div style="width: 80%;">
<table width="100%" border="0" cellspacing="0" cellpadding="20">
	<tr>
		<td align="center">
			<table width="80%" border="0" cellspacing="0" cellpadding="10">
				<tr class="contentbox">
					<td class="content">
						<center>
						<table border="0" cellspacing="0" cellpadding="10">	
						<tr>
							<ul>
	                            <li><h2>출출할땐 다양한 스낵이 정답이죠</h2></li>
	                            <hr>
                        	</ul>
                       	</tr>
                       	<%int count=0; %>
                       	<c:forEach items="${st}" var="st">
                       	<%if(count==0){ %>
                       	<tr>
                       	<%} %>
                       		<td style="text-align: center; font-weight: bold; font-size: 20px;">
                       			<a href="Bever?img=${st.img}">
                       				<img src="resources/img/store/${st.img}">
                       				<br>${st.goodsname}<br>
                       			</a>
                       		</td>
                       		
                       	<%count++; %>
			            <%if(count==2) {
			            count=0;%>
                       	</tr>
                       	<%} %> 
                       	</c:forEach>
						</table>
						</center>
					</td>
				</tr>
			</table>
		</td>
	</tr>	
</table>
</div>
</center>
<%@ include file="../include/footer.jsp" %>
</body>
</html>