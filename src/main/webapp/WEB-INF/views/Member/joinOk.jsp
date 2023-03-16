<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/title.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/content.css">
<title>가입 성공</title>
</head>
<body>
<%@ include file="../include/header.jsp" %>
<%@ include file="../include/menu.jsp" %>
<br><br><br><br>
	<center>
	<table width="75%" border="0" cellspacing="0" cellpadding="20">
		<tr>
			<td>
				<center>
				<table width="80%" border="0" cellspacing="0" cellpadding="10">
					<tr class="contentbox">
						<td class="content">
							<u>${mname }</u>님 회원 가입을 축하드립니다!<br>
							가입하신 아이디는 <u>${mid }</u>입니다.						
						</td>						
					</tr>
					
				</table>
				</center>			
			</td>
			<tr>
						<td align="center"><br><br><br>
							<a href="Dayschedule"><input  class="loginOk" type="button" value="영화예매"></a>
							<a href="MyPage"><input  class="loginOk" type="button" value="마이페이지"></a>
						</td>
						</tr>				
					</tr>
		</tr>
	</table>
	</center>
	<%@ include file="../include/footer.jsp" %>
</body>
</html>