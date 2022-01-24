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
	<!-- noticelist.jsp -->
	<main class="main">
		<%@include file="/WEB-INF/views/inc/header.jsp" %>
		<section class="center">
			<table class="table table-bordered add">
				<tr>
					<th>제목</th>
					<td>${dto.title}</td>
				</tr>
				<tr>
					<th>작성자</th>
					<td>${dto.user}</td>
				</tr>
				<tr>
					<th>날짜</th>
					<td>${dto.regdate}</td>
				</tr>
				<tr>
					<th>내용</th>
					<td style="height:300px;vertical-align:middle;">${dto.content}</td>
				</tr>
			</table>
			<table class="table table-bordered add">
				<tr>
					<th>제목</th>
					<td>Re : ${dto.title}</td>
				</tr>
				<tr>
					<th>날짜</th>
					<td>${reply.regdate}</td>
				</tr>
				<tr>
					<th>내용</th>
					<td style="height:300px;vertical-align:middle;">${reply.content}</td>
				</tr>
			</table>
			<div class="btns">
				<input type="button" value="돌아가기"
					class="btn btn-default"
					onclick="location.href='/goguma/center/questionlist.do?search=1&page=1';">
				
				<c:if test="${not empty id && dto.user == id}">
					<input type="button" value="수정하기"
						class="btn btn-primary"
						onclick="location.href='/goguma/center/questionedit.do?seq=${dto.seq}';">
					
					<input type="button" value="삭제하기"
						class="btn btn-primary"
						onclick="location.href='/goguma/center/questiondel.do?seq=${dto.seq}';">
				</c:if>
				<c:if test="${lv.equals('2')}">
					<c:if test="${reply.content == null}">
						<input type="button" value="답변작성"
							class="btn btn-primary"
							onclick="location.href='/goguma/center/replyadd.do?seq=${dto.seq}';">
					</c:if>
					<c:if test="${reply.content != null}">
						<input type="button" value="답변수정"
							class="btn btn-primary"
							onclick="location.href='/goguma/center/replyedit.do?seq=${dto.seq}';">
					</c:if>
				</c:if>
			</div>
			
			
		
		<%--<%@include file="/WEB-INF/views/inc/footer.jsp" %> --%>
	</main>
	
	<script>
	
		
	</script>
</body>
</html>

