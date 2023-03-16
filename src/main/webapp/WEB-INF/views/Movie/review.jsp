<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/Moviecss/Review.css">
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/board.js"></script>
<title>리뷰</title>
</head>
<body>	
<%@ include file="../include/header.jsp" %>
<%@ include file="../include/menu.jsp" %>
<br><br><br><br>
<center>
<div style="width: 70%; height: 650px;">
	<table width="70%" border="0" cellspacing="0" cellpadding="20">
		<tr>
			<td>
				<center>
				<table width="100%" border="0" cellspacing="0" cellpadding="10">
					<tr class="contentbox">
						<td class="content">
							<center>						
							<table border="0" cellspacing="0" cellpadding="10">
								<form action="ReviewModify" method="post" name="Review_frm">
									<input type="hidden" value="${rdto.rnum }" name="rnum">
									<tr>
										<td colspan="3">[ ${rdto.rmovie } ]</td>
									</tr>
									<tr>
										<td class="board_title" width="60%">리뷰제목 : ${rdto.rtitle }</td>
										<td class="board_title" width="20%">작성자 ${rdto.rname }</td>
										<td class="board_title" width="20%">등록일 ${rdto.rdate }</td>
									</tr>

									<tr>
										<td colspan="3"><br>${rdto.rcontent }<br><br><br><br><br><br></td>
									</tr>
									<tr>
										<td colspan="3" align="center">
										<%
											String rid = (String) request.getAttribute("rid");
										
											if((sessionId != null ) && (sessionId.equals(rid))) {
										%>
											<input class="button_type01" type="button" value="수정" onclick="script:window.location='reviewmodify?rnum=${rdto.rnum}'">
											<input class="button_type01" type="button" value="삭제" onclick="script:window.location='reviewDelete?rnum=${rdto.rnum}'">
											<input class="button_type01" type="button" value="글목록" onclick="script:window.location='reviewList'">
										<%
											} else {
										%>
											<input class="button_type01" type="button" value="글목록" onclick="script:window.location='reviewList'">
										<%
											}
										%>
										</td>
									</tr>
								</form>							
							</table>
							</center>							
						</td>						
					</tr>
				</table>
				</center>			
			</td>
		</tr>
	</table>
</div>
</center>
<%@ include file="../include/footer.jsp"%>
</body>
</html>