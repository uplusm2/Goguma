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
			<div class="title" onclick="location.href='/goguma/message/outBox.do';">
				<h2>보낸 메시지</h2>
			</div>
			<table class="table">
				<tr>
					<th>받는 사람</th>
					<th>내용</th>
					<th>날짜</th>
				</tr>
				<c:forEach items="${list}" var="dto">
				<tr>
					<td>${dto.receiverNickname}</td>
					<td onclick="location.href='/goguma/message/outBoxDetail.do?message_seq=${dto.messageSeq}';">
						${dto.content}
						<c:if test="${dto.isNew <= 1}">
						<span class="orange">N</span>
						</c:if>
					</td>
					<td>${dto.sendTime}</td>
				</tr>
				</c:forEach>
			</table>
			
			<div class="pagebar">${pagebar}</div>
		</section>
	</main>
	
	<script>
	
	</script>
</body>
</html>