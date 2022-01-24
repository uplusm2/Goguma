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
		<section class="message">
			<nav class="left-side">
				<div class="menu">
					<ul>
						<li onclick="location.href='/goguma/message/inBox.do';"><span class="glyphicon glyphicon-envelope message"></span>
							<span class="glyphicon glyphicon-arrow-left arrow"></span> 받은 메시지
						</li>
						<li onclick="location.href='/goguma/message/outBox.do';"><span class="glyphicon glyphicon-envelope message"></span>
							<span class="glyphicon glyphicon-arrow-right arrow"></span> 보낸 메시지
						</li>
					</ul>
				</div>
			</nav>
			<div class="title"
				onclick="location.href='/goguma/message/inBox.do';">
				<h2>메시지</h2>
			</div>
			<form method="POST" class="form" action="/goguma/message/messageAdd.do">
				<p>받는 사람: ${dto.nickname}</p>
				<textarea name="content" class="content" maxlength="1000"
					placeholder="내용을 입력해주세요."></textarea>
				<div class="button">
					<input type="button" value="취소" class="btn check"
						onclick="location.href='/goguma/message/inBox.do';">
					<input type="hidden" name="receiver" value="${dto.id}">
					<input type="submit" value="보내기" class="btn check">
				</div>
			</form>
		</section>
	</main>
	<script>
	
	</script>
</body>
</html>