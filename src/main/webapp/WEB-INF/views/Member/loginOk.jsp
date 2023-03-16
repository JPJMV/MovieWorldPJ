<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/title.css">
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
				<table width="80%" height=500px; border="0" cellspacing="0" cellpadding="10">
					<tr class="contentbox">
						<td class="content">
							<%
								int checkIdFlag = Integer.parseInt(request.getAttribute("checkIdFlag").toString());
								int checkIdPwFlag = Integer.parseInt(request.getAttribute("checkIdPwFlag").toString());
								if(checkIdFlag  == 0) {
							%>
							<script type="text/javascript">
								alert("입력하신 아이디는 존재하지 않습니다. 다시 확인해 주세요.");
								history.go(-1);
							</script>						
							<%
								} else if(checkIdPwFlag == 0) {
							%>
							<script type="text/javascript">
								alert("입력하신 아이디의 비밀번호가 일치하지 않습니다. 다시 확인해 주세요.");
								history.go(-1);
							</script>
							<%
								}
							%>
							${mid }님 로그인 하셨습니다. 반갑습니다!<br>
							
							${memberDto.mname }님의 가입일은 [${memberDto.mdate }]입니다.
						</td>		
						<tr>
						<td align="center">
							<a href="Dayschedule"><input  class="loginOk" type="button" value="영화예매"></a>
							<a href="MyPage"><input  class="loginOk" type="button" value="마이페이지"></a>
						</td>
						</tr>				
					</tr>
					
				</table>
				</center>			
		</td>
	</tr>
</table>
</center>
<%@ include file="../include/footer.jsp" %>

</body>
</html>