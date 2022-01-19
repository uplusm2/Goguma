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
	<!-- main.jsp -->
	<main class="main">
		<%@include file="/WEB-INF/views/inc/header.jsp" %>
		<section class="community">
			<div class="title">
				<h2>커뮤니티</h2>
			</div>
			<table class="table">
				<tr>
					<th colspan="2">제목</th>
					<th>작성자</th>
					<th>작성일</th>
					<th>조회</th>
				</tr>
				<c:forEach items="${list}" var="dto">
				<tr>
					<td>${dto.seq}</td>
					<td>${dto.title}</td>
					<td>${dto.nickname}</td>
					<td>${dto.regDate}</td>
					<td>${dto.readcount}</td>
				</tr>
				</c:forEach>
			</table>

			<div class="pagebar">${pagebar}</div>
		</section>
	</main>
	
	<script>
	
	</script>
</body>
</html>
