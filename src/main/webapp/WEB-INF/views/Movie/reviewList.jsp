<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/Moviecss/Review.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/book.css">
<title>리뷰 게시판</title>
</head>
<body>
<%@ include file="../include/header.jsp" %>
<%@ include file="../include/menu.jsp" %>
<br><br><br><br>
   <center>
<div style="width: 70%; height: 650px;">
   <table width="100%" border="0" cellspacing="0" cellpadding="20">
      <tr>
         <td align="center">
            <table width="100%" border="0" cellspacing="0" cellpadding="10">
               <tr>
                  <td>
                     <center>   
						<span class="title">영화 리뷰<br><br></span>
                     <table cellspacing="0" cellpadding="10">
                        <tr>
									<td class="list_title" width="7%">번호</th>
									<td class="list_title" width="25%">영화제목</th>
									<td class="list_title" width="45%">리뷰제목</th>
									<td class="list_title" width="5%">평점</th>
									<td class="list_title" width="8%">작성자</th>
									<td class="list_title" width="10%">등록일</th>
								</tr>
								<c:forEach items="${rdtos }" var="rdto">
								<tr>
									<td class="board_content01" align="center">${rdto.rnum }</td>
									<td class="board_content01" align="center">${rdto.rmovie }</td>
									<td class="board_content02">
									<a href="review?rnum=${rdto.rnum }">
									<c:choose>
										<c:when test="${fn:length(rdto.rtitle) > 23 }">
											<c:out value="${fn:substring(rdto.rtitle,0,22) }"></c:out>...
										</c:when>
										<c:otherwise>
											<c:out value="${rdto.rtitle }"></c:out>
										</c:otherwise>
									</c:choose>
									</a>
									<td class align="center">${rdto.rgrade }</td>
									</td>
									<td class align="center"><input type="hidden" value="${rdto.rid}">${rdto.rname }</td>
									<td class align="center">
										<c:out value="${fn:substring(rdto.rdate,0,10) }"></c:out>										
									</td>
								</tr>						
								</c:forEach>
								<tr>
									<td colspan="8" align="center">
										<c:if test="${pageMaker.prev }">
											<a href="reviewList?pageNum=${pageMaker.startPage-5 }">Prev</a>&nbsp;&nbsp;&nbsp;
										</c:if>										
										<c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage }" var="num">
											<c:choose>
											<c:when test="${currPage == num}">
											<u>${num}</u>&nbsp;&nbsp;&nbsp;
											</c:when>
											<c:otherwise>
											<a href="reviewList?pageNum=${num}">${num}</a>&nbsp;&nbsp;&nbsp;
											</c:otherwise>
											</c:choose>																					
										</c:forEach>
										<c:if test="${pageMaker.next }">
											<a href="reviewList?pageNum=${pageMaker.startPage+5 }">Next</a>
										</c:if>	
									</td>
								</tr>	
								<tr>
									<td colspan="8" align="right">
										<input type="button" value="리뷰하기" class="button_type01" onclick="script:window.location='reviewwrite'">
									</td>
								</tr>              
                     </table>
                     </center>                     
                  </td>                  
               </tr>
            </table>      
         </td>
      </tr>
   </table>
</div>
   </center>
   <%@ include file="../include/footer.jsp"%>
</body>
</html>