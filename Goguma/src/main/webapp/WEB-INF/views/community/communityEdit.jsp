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
		
		<section class="community edit">
			<div class="title">
				<h2>커뮤니티</h2>
			</div>
			
			<div class="add">
				<p>게시물이 수정되었습니다.</p>
				<div class="button">
					<input type="button" value="확인하기" class="btn check"
						onclick="location.href='/goguma/community/communityDetail.do?seq=${seq}';"> 
					<input type="button" value="목록으로" class="btn list"
						onclick="location.href='/goguma/community/communityList.do';"> 
				</div>
			</div>

		</section>
	</main>
	
	<script>
		
	</script>
</body>
</html>
