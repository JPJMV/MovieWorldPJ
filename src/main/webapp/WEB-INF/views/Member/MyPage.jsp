<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/MyPage.css">
<title>MyPage</title>
</head>
<body>
<script>
setTimeout(function(){
location.reload();
},2000); // 3000밀리초 = 3초
</script>
   <%@ include file="../include/header.jsp" %>
   <%@ include file="../include/menu.jsp" %>
<br><br><br><br>
<center>
<div style="width: 70%;">
<table width="70%" cellspacing="0" cellpadding="10">
                        <tr>
                           <td rowspan="7" align="center">
                           	<img height="200" src="${pageContext.request.contextPath }/resources/img/member.png">
                           </td>
                           <td class="my" class="input_text01">아 이 디 : </td>
                           <td class="my" width="300">${MemberDto.mid}</td> 
                        </tr>
                        <tr>
                           <td class="my" class="input_text01">이&nbsp;&nbsp;&nbsp;&nbsp;름 : </td>
                           <td class="my">${MemberDto.mname}</td>
                        </tr>
                        <tr>
                           <td class="my" class="input_text01">생년월일 : </td>
                           <td class="my">${MemberDto.mbirth}</td>
                        </tr>
                        <tr>
                           <td class="my" class="input_text01">전화번호 : </td>
                           <td class="my">${MemberDto.mphone}</td> 
                        </tr> 
                        <tr>
                           <td class="my" class="input_text01">이 메 일 : </td>
                           <td class="my">${MemberDto.memail}</td> 
                        </tr>
                         <tr>
                           <td class="my" class="input_text01">가입일시 : </td>
                           <td class="my">${MemberDto.mdate}</td> 
                        </tr>
                        <tr>
                           <td class="my" class="input_text01">포 인 트 : </td>
                           <td class="my">${MemberDto.mpoint}</td> 
                        </tr>
                         <tr>
                           <td colspan="3" align="center"><input type="button" value="정보수정" onclick="script:window.location='memberModify'"></td>
                        </tr>  
                        <tr>
                           <td colspan="3"><h3>예매 내역</h3></td>
                        </tr>
      </td>
   </tr>
   <tr>
<td colspan="3">
<cetner>
<div>

<div style="float: left; width: 40%;">
<table class="reserv" cellspacing="0" cellpadding="10">
<tr>
<td	class="rtitle" width="130">영화이름</td><td	class="rtitle">상영일자</td>
</tr>
<c:forEach items="${memberSchedule}" var="s">
<tr>
<td	class="rlist">${s.mname}</td><td	class="rlist">2023년 3월 ${s.sday}일 ${s.sschedule}시</td>
</tr>
</c:forEach>
</table>
</div>

<div style="float: left; width: 60%;">
<table class="reserv" cellspacing="0" cellpadding="10">
<tr>
<td	class="rtitle">좌석번호</td><td	class="rtitle">예매번호</td><td	class="rtitle" colspan="2">예매한 시각</td>
</tr>
<c:forEach items="${MemberReservation}" var="r">
<tr>
<td	class="rlist">${r.rseat}</td><td class="rlist">${r.rnum}</td><td	class="rlist">${r.rdate}</td><td	class="rlist"><input type="button" value="예매취소" onclick="script:window.location='reservDelete?rnum=${r.rnum}'"></td>
</tr>
</c:forEach>
</table>
</tr>
</div>
</div>
<tr><td colspan="3" align="center"><input type="button" value="이전화면" onclick="history.back(-1)"></td></tr>
</cetner>
</td>
</table>
</div>
</center>
<%@ include file="../include/footer.jsp" %>
</body>
</html>