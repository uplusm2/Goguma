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
		
		<section class="community content">
			<div class="title">
				<h2>커뮤니티</h2>
			</div>
		
			<table class="detail">
				<tr>
					<td colspan="3">${dto.title}</td>
					<td class="button"><input type="button" value=수정 class="btn edit"></td>
					<td class="button"><input type="button" value=삭제 class="btn important del"></td>
				</tr>
				<tr>
					<td rowspan="2"><img src="/goguma/asset/img/logo.png" alt=""></td>
					<td colspan="2">${dto.nickname}</td>
				</tr>
				<tr>
					<td>${dto.regDate}</td>
					<td>조회 ${dto.readcount}</td>
				</tr>
				<tr>
					<td colspan="3">${dto.content}</td>
				</tr>

			</table>

			<div class="button common">
				<input type="button" value=목록 class="btn list"
					onclick="location.href='/goguma/community/communityList.do?page=${page}';">
			</div>
		</section>
	</main>
	
	<script>
	
	</script>
</body>
</html>