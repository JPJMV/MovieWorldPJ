<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/content.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/board.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/book.css">
<title>Membership</title>
</head>
<body>
   <%@ include file="../include/header.jsp" %>
   <%@ include file="../include/menu.jsp" %>
<br><br><br><br>
   <center>
   		<span class="title">MEMBER SHIP<br><br></span>
   <table width="80%" border="0" cellspacing="0" cellpadding="20">
      <tr>
         <td align="center">
            <table width="80%" border="0" cellspacing="0" cellpadding="10">
               <tr class="contentbox">
                  <td class="content">
                   
         <center>
         <table width="80%" border="0" cellspacing="0" cellpadding="10">
            <tr>
               <th colspan="2" width="100" >등급</th>
               <th>VVIP</th>
               <th>VIP</th>
               <th>GOLD</th>
               <th>SILVER</th>
               <th>BRONNZE</th>
            </tr>
            <tr>
               <th colspan="2">포인트</th>
               <td>
                  포인트 점수<br>
                  10,000이상
               </td>
               <td>
                  포인트 점수<br>
                  8,000이상
               </td>
               <td>
                  포인트 점수<br>
                  5,000이상
               </td>
               <td>
                  포인트 점수<br>
                  3,000이상
               </td>
               <td>
                  포인트 점수<br>
                  1,000이상
               </td>
            </tr>
            <tr>
               <th colspan="2">혜택</th>
               <td>
                  영화 무료쿠폰 5매<br>
                  스토어 무료쿠폰 3매<br> <!--스토어나 매점으로협의  -->
                  생일 무료영화 쿠폰 1매<br>
                  적립 10%
               </td>
               <td>
                  영화 무료쿠폰 3매<br>
                  스토어 무료쿠폰 1매<br> <!--스토어나 매점으로협의  -->
                  생일 무료영화 쿠폰 1매<br>
                  적립 10%
               </td>
               <td>
                  영화 무료쿠폰 1매<br>
                  생일 무료스토어 쿠폰 1매<br>
                  적립 5%
               </td>
               <td>
                  생일 무료스토어 쿠폰 1매<br>
                  적립 3%
               </td>
               <td>
                  생일 무료스토어 쿠폰 1매<br>
                  적립 1%
               </td>
            </tr>               
         </table>
         </center>
   </table>
   </center>
                  
   <%@ include file="../include/footer.jsp" %>
</body>
</html>