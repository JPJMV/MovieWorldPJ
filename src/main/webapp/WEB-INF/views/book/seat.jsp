<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/book.css">
<title>${sdata.mname } 예매</title>
</head>
<body>
<%@ include file="../include/header.jsp" %>
<%@ include file="../include/menu.jsp" %>
<center>
<br><br><br><br>
<script>
setTimeout(function(){
location.reload();
},3000); // 3000밀리초 = 3초
</script>
   		<span class="title">예 매<br><br></span>
   <div>
         <span class="info">영화 : ${sdata.mname }&nbsp;&nbsp;&nbsp;</span>
         <span class="info">상영시간 : ${sdata.sschedule }</span>
		 <br><br><br>
         <h1>screen</h1>
         <br>
         <% ArrayList<String> seatnum =(ArrayList<String>) request.getAttribute("sdto"); %>
         <div>
         <table>
            <% for (char i = 'A'; i <= 'E'; i++) { %>
            <tr>
               <td>
               <div>
                  <span class="seat-label"><%= i %>열&nbsp;&nbsp;</span>
               </td>
                  <% for (int j = 1; j < 8; j++) { %>
               <td>
              	  <% if(seatnum.contains(i+"-"+j)) { %>
               		<input class="seat" type="button" name="seats" value="<%= i %>-<%=j%>" disabled="disabled"> 
               		<% } else { %>
               		<input class="seat" type="button" name="seats" value="<%= i %>-<%=j%>" onclick="script:window.location='seatOk?rseat=<%= i %>-<%=j%>&snum=${sdata.snum}&rid=${memberId}'">
                  <% } %>
               </div>
               </td>
               <% } %>
            </tr>
            <% } %>
            <td colspan="9" align="center"><br><br><input type="button" value="이전화면" onclick="history.back(-1)"></td></tr>
         </table>
         </div>
   </div>
<script>
function removeCheck() {
	 if (confirm("정말 삭제하시겠습니까??") == true){    //확인
	     document.removefrm.submit();
	 }else{   //취소
	     return false;
	 }
	}
</script>
   
</center>
<%@ include file="../include/footer.jsp" %>
</body>
</html>