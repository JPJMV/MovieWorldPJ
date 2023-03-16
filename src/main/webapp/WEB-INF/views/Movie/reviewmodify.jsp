<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/Reviewmodi.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/Moviecss/Review.css">
<title>리뷰 게시판</title>
</head>
<body>
<%@ include file="../include/header.jsp" %>
<%@ include file="../include/menu.jsp" %>
<br><br><br><br>
<center>
<div style="width: 70%; height: 650px;">
	<table width="70%" border="0" cellspacing="0" cellpadding="10">
		<tr>
<form action="ReviewModifyOk" id="Rmodi" name="Rmodi" method="post">
<input type="hidden" value="${rdto.rnum }" name="rnum">
		<tr>
			<td class="write_title" width="10%">
				영화제목
			</td>
			<td class="write_title"  width="45%">
				[ ${rdto.rmovie } ]
			</td>
			<td class="write_title" width="10%"><input type="hidden" name="rid" value="${memberId }">작성자 </td>
			<td class="write_title" width="20%"><input type="hidden" name="rname" value="${memberDto.mname}">${rdto.rname}</td>
		</tr>
		<tr>
			<td class="write_title" width="">리뷰제목</td>
			<td class="write_title"><input type="text" name="rtitle" value="${rdto.rtitle }"></td>
						<td class="write_title" width="10%">평점</td>
			<td class="write_title" colspan="3">
    <fieldset>
        <input type="radio" name="rgrade" value="5" id="rate1"><label for="rate1">⭐</label>
        <input type="radio" name="rgrade" value="4" id="rate2"><label for="rate2">⭐</label>
        <input type="radio" name="rgrade" value="3" id="rate3"><label for="rate3">⭐</label>
        <input type="radio" name="rgrade" value="2" id="rate4"><label for="rate4">⭐</label>
        <input type="radio" name="rgrade" value="1" id="rate5"><label for="rate5">⭐</label>
    </fieldset>
			</td>
		</tr>
		<tr>
			<td colspan="4">
				<textarea rows="15" cols="130" name="rcontent">${rdto.rcontent }</textarea>
			</td>
		</tr>						
		<tr>
			<td colspan="4" align="center">
				<input class="button_type01" type="button" value="수정완료" onclick="RmodiCheck()">
				<input class="button_type01" type="button" value="취소" onclick="history.back()">
				<input type="button" value="글목록" onclick="script:window.location='reviewList'">
			</td>
		</tr>
</form>
   		</tr>
</table>

</div>
</center>

   <%@ include file="../include/footer.jsp"%>
</body>
</html>