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
		<div class = "subcategory">
		<form method="GET" action="/goguma/center/faq.do">
			<ul class = "center-submenu">
				<li onclick = "location.href='/goguma/center/questionlist.do?search=1&page=1'">계정/인증</li>
				<li onclick = "location.href='/goguma/center/questionlist.do?search=2&page=1'">구매/판매</li>
				<li onclick = "location.href='/goguma/center/questionlist.do?search=3&page=1'">운영정책</li>
				<li onclick = "location.href='/goguma/center/questionlist.do?search=4&page=1'">서비스이용</li>
				<li onclick = "location.href='/goguma/center/questionlist.do?search=5&page=1'">기타</li>
			</ul>
		</form>
		</div>
			<section class="center">
			<div><h2>문의사항</h2></div>
			<table class="table table-bordered list">
				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>작성자</th>
					<th>날짜</th>
				</tr>
				<c:forEach items="${list}" var="dto">
				
				<tr>
					<td>${dto.seq}</td>
					<td>
						<a href="/goguma/center/questionview.do?seq=${dto.seq}&page=${nowPage}">${dto.title}</a>
						<c:if test="${dto.isNew == 1}">
						<span class="orange">N</span>
						</c:if>
					</td>
					<td>${dto.user}</td>
					<td>${dto.regdate}</td>
				</tr>
				
				</c:forEach>
				<c:if test="${list.size() == 0}">
				<tr>
					<td colspan="4">게시물이 없습니다.</td>
				</tr>
				</c:if>
			</table>
			<div class="pagebar">${pagebar}</div>
			<div class="btns">
		
			<c:if test="${not empty id}">
			<input type="button" value="글쓰기"
				class="btn btn-primary"
				onclick="location.href='/goguma/center/questionadd.do';">
			</c:if>
				
			</div>
		</section>
		
		<%--<%@include file="/WEB-INF/views/inc/footer.jsp" %> --%>
	</main>
	
	<script>
	
		
	</script>
</body>
</html>

