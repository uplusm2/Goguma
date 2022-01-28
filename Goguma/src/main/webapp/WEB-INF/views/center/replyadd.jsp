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
			<section class="reply">
			
				<form method="POST" action="/goguma/center/replyaddok.do">
					<table class="table table-bordered add">
						<tr>
							<th>제목</th>
							<td>${dto.title}"</td>
						</tr>
						<tr>
							<th>내용</th>
							<td>${dto.content}</td>
						</tr>
						<tr>
					</table>
					<table class="table table-bordered add">
						<tr>
							<th>제목</th>
							<td><input type="text" name="subject" class="form-control" required value=" re : ${dto.title}"></td>
						</tr>
						<tr>
							<th>내용</th>
							<td><textarea name="content" class="form-control" required></textarea></td>
						</tr>
						<tr>
					</table>
					<div class="btns">
						<input type="button" value="돌아가기"
							class="btn btn-default"
							onclick="location.href='/goguma/center/questionview.do?seq=${seq}';">
						<input type="submit" value="글쓰기"
							class="btn btn-primary">										
					</div>
					<input type="hidden" name="seq" value="${seq}">
				</form>
			</section>
			
		
		<%--<%@include file="/WEB-INF/views/inc/footer.jsp" %> --%>
	</main>
	
	<script>
	
		
	</script>
</body>
</html>

