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
		<section class="message-in">
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
			<div class="title" onclick="location.href='/goguma/message/inBox.do';">
				<h2>받은 메시지</h2>
			</div>
			<table class="detail">
				<tr>
					<td><b>보낸 사람</b></td>
					<td>${dto.senderNickname}</td>
				</tr>
				<tr>
					<td><b>보낸 시간</b></td>
					<td>${dto.sendTime}</td>
				</tr>
				<tr>
					<td colspan="2">${dto.content}</td>
				</tr>
				<tr>
					<td><input type="button" value="답장" class="btn"
						onclick="location.href='/goguma/community/communityDetail.do?seq=${seq}';">
					</td>
					<td><input type="button" value="삭제" class="btn"
						onclick="location.href='/goguma/community/communityDetail.do?seq=${seq}';">
					</td>
				</tr>
			</table>
			<div class="button common">
				<input type="button" value="목록" class="btn list"
					onclick="location.href='/goguma/message/inBox.do';">
			</div>
		</section>
	</main>
	
	<script>
	
	</script>
</body>
</html>