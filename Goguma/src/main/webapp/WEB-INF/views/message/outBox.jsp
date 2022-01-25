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
			
			<c:if test="${totalPage > 1}">
			<div class="pagebar">${pagebar}</div>
			</c:if>
			
			<c:if test="${map.searchmode == 'y'}">
			<div class="search-result">
				'${map.word}'(으)로 검색한 ${list.size()}개의 게시물이 있습니다.
			</div>
			</c:if>
			
			<div class="search">
				<form method="GET" action="#!">
					<select name="column" class="text">
						<option value="receiver_nickname">닉네임</option>
						<option value="content">내용</option>
					</select> 
					<input type="text" name="word" placeholder="검색어를 입력하세요." required class="text"> 
					<input type="image" src="/goguma/asset/img/search.png" class="search-img">
				</form>
			</div>
		</section>
	</main>
	
	<script>
		<c:if test="${map.searchmode == 'y'}">
		$('select[name=column]').val('${map.column}');
		$('input[name=word]').val('${map.word}');
		</c:if>
	</script>
</body>
</html>