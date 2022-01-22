<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Code</title>
<%@ include file="/WEB-INF/views/inc/asset.jsp" %>
<style>

</style>
</head>
<body>
	<!-- noticelist.jsp -->
	<main class="main">
		<%@include file="/WEB-INF/views/inc/header.jsp" %>
		<%@include file="/WEB-INF/views/center/title.jsp" %>
		<section class="content">
		

			<div><h2>공지사항</h2></div>
			<table class="table table-bordered list">
				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>날짜</th>
				</tr>
				<c:forEach items="${list}" var="dto">
				
				<tr>
					<td>${dto.seq}</td>
					<td>
						<a href="/goguma/center/noticeview.do?seq=${dto.seq}&page=${nowPage}">${dto.title}</a>
					</td>
					<td>${dto.regdate}</td>
				</tr>
				</c:forEach>
				<c:if test="${list.size() == 0}">
				<tr>
					<td colspan="3">게시물이 없습니다.</td>
				</tr>
				</c:if>
			</table>
			<div class="pagebar">${pagebar}</div>
			<div class="btns">
		
				<%-- <c:if test="${not empty id}"> --%>
				<input type="button" value="글쓰기"
					class="btn btn-primary"
					onclick="location.href='/goguma/center/noticeadd.do';">
				<%-- </c:if> --%>
				
			</div>
			
		</section>
			
		
		<%--<%@include file="/WEB-INF/views/inc/footer.jsp" %> --%>
	</main>
	
	<script>
	
		
	</script>
</body>
</html>

