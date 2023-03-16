<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/title.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/content.css">
<title>로그인</title>
</head>
<body>
<%@ include file="../include/header.jsp" %>
<%@ include file="../include/menu.jsp" %>
<br><br><br><br>
<br>
<br>
<br>
   <center>
   <table width="75%" border="0" cellspacing="0" cellpadding="20">
      <tr>
         <td align="center">
            <table width="80%" border="0" cellspacing="0" cellpadding="10">
               <tr class="contentbox">
                  <td class="content">
                     <center>                  
                     <table border="0" cellspacing="0" cellpadding="10">
                        <form action="loginOk" method="post">
                           <tr>
                              <td align="right" class="input_text01">아 이 디 : </td>
                              <td><input class="input_box01" type="text" name="mid"></td>
                           </tr>
                           <tr>
                              <td align="right" class="input_text01">비밀번호 : </td>
                              <td><input class="input_box01" type="password" name="mpw"></td>
                           </tr>
                           <tr>
                              <td colspan="2" align="center" >
                            	 <input class="button01" type="submit" value="로그인">
                                 <input class="button01" type="button" value="회원가입" onclick="script:window.location='join'">
                              </td>
                           </tr>
                        </form>                     
                     </table>
                     </center>                     
                  </td>                  
               </tr>
            </table>      
         </td>
      </tr>
   </table>
   </center>
   <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
   <%@ include file="../include/footer.jsp"%>
</body>
</html>