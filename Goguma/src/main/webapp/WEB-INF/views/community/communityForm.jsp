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
			<div class="title" onclick="location.href='/goguma/community/communityList.do';">
				<h2>커뮤니티</h2>
			</div>

			<c:if test="${empty dto}">
			<form method="POST" action="/goguma/community/communityAdd.do"
				enctype="multipart/form-data">
				<input type="text" name="title" placeholder="제목을 입력하세요." class="form-text" required>
				<textarea name="content" placeholder="내용을 입력하세요." class="form-text" required></textarea>
				
				<div class="button">
					<label><span class="glyphicon glyphicon-picture"></span>&nbsp;업로드</label>
					<input type="file" name="pathDir" class="file" multiple>
					<input type="button" value="취소" class="btn cancel"
						onclick="location.href='/goguma/community/communityList.do';">
					<input type="submit" value="등록" class="btn important add">
				</div>
			</form>
			</c:if>
			
			<c:if test="${not empty dto}">
			<form method="POST" action="/goguma/community/communityEdit.do">
				<input type="text" name="title" value="${dto.title}" placeholder="제목을 입력하세요." class="form-text" required>
				<textarea name="content" placeholder="내용을 입력하세요." class="form-text" required>${dto.content}</textarea>
				
				<div class="button">
					<input type="button" value="취소" class="btn cancel edit"
						onclick="location.href='/goguma/community/communityList.do';">
					<input type="submit" value="수정" class="btn important edit">
					<input type="hidden" name="seq" value="${dto.seq}">
				</div>
			</form>
			</c:if>
		</section>
	</main>
	<script>
	
	</script>
</body>
</html>
