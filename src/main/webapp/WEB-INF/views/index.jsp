<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/book.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/mv.css">
<title>Movie World</title>
</head>
<body>
<%@ include file="include/header.jsp" %>
<%@ include file="include/menu.jsp" %>
<br><br><br><br>
<center>
   <table border="0"  cellspacing="0" cellpadding="10">
      <tr>
            <tr>
            <tr><td class="index_title" colspan="3">현재상영작</td></tr>
         <c:forEach items="${rankdto}" var="rankdto">
            <td class="text01">
               <img src="${pageContext.request.contextPath}/resources/img/cmovie/${rankdto.mimg}"><br>${rankdto.mname}<br>
               <input class="button02" type="button" value="보기" onclick="script:window.location='cmovie?mnum=${rankdto.mnum}'">
               <input class="button02" type="button" value="예매" onclick="script:window.location='Movieschedule?mname=${rankdto.mname}'">
            </td>
         </c:forEach>
                   </tr>
                     <tr>
                     <tr><td class="index_title" colspan="3">개봉예정작</td></tr>
         <c:forEach items="${fankdto}" var="fankdto">
            <td class="text01">
               <img src="${pageContext.request.contextPath}/resources/img/fmovie/${fankdto.mimg}"><br>${fankdto.mname}<br>
               <input class="button02" type="button" value="보기" onclick="script:window.location='fmovie?mnum=${fankdto.mnum}'">
            </td>
         </c:forEach>
                   </tr>
                   <tr>
                   <tr><td class="index_title" colspan="3">스토어</td></tr>
         <c:forEach items="${sankdto}" var="sankdto">
            <td class="text01">
               <img width="200px" src="${pageContext.request.contextPath}/resources/img/store/${sankdto.img}"><br>${sankdto.goodsname}
            </td>
         </c:forEach>
                   </tr>
      </tr>
   </table>
   </center>
<%@ include file="include/footer.jsp" %>
</body>
</html>