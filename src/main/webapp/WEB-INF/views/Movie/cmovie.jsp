<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   
<!DOCTYPE html>
<html>
<head>
<style>
td.cmovie{ width: 100px; height: 100px; float: top;}
</style>
<meta charset="UTF-8">
<title>개봉영화 정보</title>
</head>
<body>
<%@ include file="../include/header.jsp" %>
<%@ include file="../include/menu.jsp" %>
<br><br><br><br>
<center>
<table width="50%" border="0" cellspacing="0" cellpadding="20">
	<tr >             
		<td class="cmovie">
			<img src="${pageContext.request.contextPath }/resources/img/cmovie/${movie.mimg}"><br>
		</td>
		<td class="cmovie"  colspan="2">
			<h1>제목 : ${movie.mname}</h1>
			<hr>
			<h3>정보</h3>
			상영타입 : ${movie.mtype} <br>
			감독 : ${movie.mdirector} <br>
			장르 : ${movie.mgenre} <br>
			상영시간 : ${movie.mtime} <br>
			등급 : ${movie.mgrade} <br>
			개봉일 : ${movie.mopen} <br>
			출연진 : ${movie.mcast}
			<br><br><br><br>
		</td>
	</tr>
	<tr>
		<td class="cmovie" colspan="3">

			<h2>줄거리</h2>
			${movie.mintroduction}
		</td>
		<tr><td colspan="3" align="center"><input type="button" value="목록" onclick="history.back(-1)"></td></tr>
	</tr>
</table>
</center>
<%@ include file="../include/footer.jsp"%>
</body>
</html>