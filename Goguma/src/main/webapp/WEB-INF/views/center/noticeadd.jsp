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
	<!-- .jsp -->
	<main class="main">
		<%@include file="/WEB-INF/views/inc/header.jsp" %>
		<section class="center">
			
			<form method="POST" action="/goguma/center/noticeaddok.do">
				<table class="table table-bordered add">
					<tr>
						<th>제목</th>
						<td><input type="text" name="subject" class="form-control" required></td>
					</tr>
					<tr>
						<th>내용</th>
						<td><textarea name="content" class="form-control" required></textarea></td>
					</tr>
					<tr>
						<th>사진</th>
						<td><input type="file" name = "imgfile"></td>
					</tr> 
				</table>
				
				<div class="btns">
					<input type="button" value="돌아가기"
						class="btn btn-default"
						onclick="location.href='/goguma/center/faq.do?search=1&page=1';">
					<input type="submit" value="글쓰기"
						class="btn btn-primary">										
				</div>
			</form>
			
		</section>
			
		
		<%--<%@include file="/WEB-INF/views/inc/footer.jsp" %> --%>
	</main>
	
	<script>
	
		
	</script>
</body>
</html>

