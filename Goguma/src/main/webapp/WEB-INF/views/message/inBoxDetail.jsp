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
			<table class="table">
				<tr>
					<th>보낸 사람</th>
					<th>내용</th>
					<th>날짜</th>
				</tr>
				<c:forEach items="${list}" var="dto">
				<tr>
					<td>${dto.senderNickname}</td>
					<td onclick="location.href='/goguma/message/inBoxDetail.do?message_seq=${dto.messageSeq}';">
						${dto.content}
					</td>
					<td>${dto.sendTime}</td>
				</tr>
				</c:forEach>
			</table>
		</section>
	</main>
	
	<script>
	
	</script>
</body>
</html>