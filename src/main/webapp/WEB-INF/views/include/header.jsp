<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/header.css">
<title>header</title>
</head>
<body>
<center>
   <%
      String sessionId = (String) session.getAttribute("memberId");
 	  String boardId = (String) request.getAttribute("memberName");
      //로그인 성공시 memberId 이름으로 아이디가 세션에 set   
   %>
   <table width="70%" border="0" cellspacing="0" cellpadding="0">
      <tr class="header01">
         <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <a href="/"><img src="${pageContext.request.contextPath }/resources/img/header/logo.png" width="250" height="85" align="center" border="0"></a></td>
         <%
            if(sessionId == null) {
         %>         
         <td class="headertext01"><a href="login">
         <img src="${pageContext.request.contextPath }/resources/img/header/login.png" width="45" height="50" align="center" border="0"><br>
         로그인</a></td>
         <%
            } else {
         %>
         <td class="headertext01"></td>
         <%
            }
         %>
         <td class="margin02">&nbsp;</td>
         <%
            if(sessionId == null) {
         %>   
         <td class="headertext01"><a href="join">
         <img src="${pageContext.request.contextPath }/resources/img/header/join.png" width="45" height="50" align="center" border="0"><br>
         회원가입</a></td>
         <%
            } else {
         %>
         <td class="headertext01"><a href="logout">
         <img src="${pageContext.request.contextPath }/resources/img/header/logout.png" width="45" height="50" align="center" border="0"><br>
         로그아웃</a></td>
         <%
            }
         %>
         <td class="margin02">&nbsp;</td>
         <td class="headertext01"><a href="MyPage">
         <img src="${pageContext.request.contextPath }/resources/img/header/mypage.png" width="45" height="50" align="center" border="0"><br>
         MyPage</a></td>
         <td class="margin02">&nbsp;</td>
         
      </tr>      
      <tr class="header02">
         <td class="headertext02" colspan="11">&nbsp;</td>
      </tr>   
   </table>
</center>
</body>
</html>