<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/MyPage.css">
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/join.js"></script>
<title>MyPage</title>
</head>
<body>
   <%@ include file="../include/header.jsp" %>
   <%@ include file="../include/menu.jsp" %>
<br><br><br><br>
<center>
<div style="width: 60%;">
<form action="memberModifyOk" name="member" method="post">
<table width="70%" cellspacing="0" cellpadding="10">
                        <tr>
                           <td rowspan="7" align="center">
                           	<img height="200" src="${pageContext.request.contextPath }/resources/img/member.png">
                           </td>
                           <td class="my" class="input_text01">아 이 디 : </td>
                           <td class="my" width="300"><input type="hidden" name="mid" value="${memberDto.mid}">${memberDto.mid}</td> 
                        </tr>
                        <tr>
                           <td class="my" class="input_text01">이&nbsp;&nbsp;&nbsp;&nbsp;름 : </td>
                           <td class="my">${memberDto.mname}</td>
                        </tr>
                        <tr>
                           <td class="my" class="input_text01">비밀번호 : </td>
                           <td class="my"><input type="text" name="mpw" value="${memberDto.mpw}"></td> 
                        </tr> 
                        <tr>
                           <td class="my" class="input_text01">생년월일 : </td>
                           <td class="my"><input type="date" name="mbirth" value="${memberDto.mbirth}"></td>
                        </tr>
                        <tr>
                           <td class="my" class="input_text01">전화번호 : </td>
                           <td class="my"><input type="text" name="mphone" value="${memberDto.mphone}"></td> 
                        </tr> 
                        <tr>
                           <td class="my" class="input_text01">이 메 일 : </td>
                           <td class="my"><input type="text" name="memail" value="${memberDto.memail}"></td> 
                        </tr>
                         <tr>
                           <td class="my" class="input_text01">가입일시 : </td>
                           <td class="my">${memberDto.mdate}</td> 
                        </tr>
                         <tr>
                           <td colspan="3" align="center"><input type="submit" value="수정완료">
                           <input type="button" value="취소" onclick="history.back(-1)"></td>
                        </tr> 
</table>
</form>
</div>
</center>
<%@ include file="../include/footer.jsp" %>
</body>
</html>