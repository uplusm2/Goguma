<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	<main class="main">
		<%@include file="/WEB-INF/views/inc/header.jsp" %>
		
		<section class="community form">
			<div class="title">
				<h2>커뮤니티</h2>
			</div>

			<form method="POST" action="/goguma/community/communityAdd.do">
				<input type="text" name="title" placeholder="제목을 입력하세요." class="form-text" required>
				<textarea name="content" placeholder="내용을 입력하세요." class="form-text" required></textarea>
				
				<div class="button">
					<input type="button" value=취소 class="btn cancel"
						onclick="location.href='/goguma/community/communityList.do';"> 
					<input type="submit" value=등록 class="btn important add">
				</div>
			</form>

		</section>
	</main>
	
	<script>
	
	</script>
</body>
</html>
