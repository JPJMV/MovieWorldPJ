<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${bdto.goodsname}</title>
</head>
<body>
<%@ include file="../include/header.jsp" %>
<%@ include file="../include/menu.jsp" %>
   <center>
   <table width="75%" border="0" cellspacing="0" cellpadding="20">
      <tr>
         <td align="center">
            <table width="80%" border="0" cellspacing="0" cellpadding="10">
               <tr class="contentbox">
                  <td class="content">
                     <center>
                     <table border="0" cellspacing="0" cellpadding="10">   
                     <ul>
                            <li><h2>${bdto.goodsname}</h2></li>
                            <hr>
                        </ul>
                        <tr>
                     <td rowspan="4" class="cont">
                     <img src="resources/img/Store/${bdto.img }">
                     </td>
                  </tr>
                  <tr>
                     <th>가격</th>
                     <th>${bdto.price}</th>
                  </tr>
                  <tr>
                     <th>상품구성</th>
                     <td>${bdto.composition}</td>
                  </tr>
                  </table>
                  <hr>
                  <ul>
                     <li><h2>${bdto.introduction}</h2></li>
                  </ul>
                     </center>
                  </td>
               </tr>
            </table>
         </td>
      </tr>   
   </table>
   </center>
   <%@ include file="../include/footer.jsp" %>
</body>
</html>