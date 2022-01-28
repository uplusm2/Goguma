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
		<section class="content">
			<div class="title">
				<h2>시작 페이지</h2>
				<input type="button" value="버튼" class="btn">
				<input type="button" value="버튼" class="btn important">
				<input type="text" class="text" placeholder="제목을 입력하세요.">
				<input type="text" class="new" value="N">
			</div>
			<nav class="leftside">
				<h3>check</h3>
				
			</nav>
		</section>
		<%@include file="/WEB-INF/views/inc/footer.jsp" %>
	</main>
	
	<script>
	
	</script>
</body>
</html>







