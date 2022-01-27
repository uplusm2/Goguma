<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Code</title>
<%@ include file="/WEB-INF/views/inc/asset.jsp" %>
<style>
	.btns{
		float : right;
		margin-right : 100px;
	}
	.btns .btn{
		margin : 10px;
		margin-bottom : 30px;
		
	}
</style>
</head>
<body>
	<!-- noticelist.jsp -->
	<main class="main">
		<%@include file="/WEB-INF/views/inc/header.jsp" %>
		<section class="center">
			<div class="title" onclick="location.href='/goguma/center/questionlist.do?search=1&page=1';">
				<h2>문의사항</h2>
			</div>
			<table class="detail">
				<tr>
					<td id="title">${dto.title}</td>
					<c:if test="${id == dto.user}">
					<td class="button">
						<input type="button" value="수정하기" class="btn-edit"
							onclick="location.href='/goguma/center/questionedit.do?seq=${dto.seq}';">
					</td>
					</c:if>
					<c:if test="${id == dto.user || lv == 2}">
					<td class="button">
						<input type="button" value="삭제하기" class="btn-del"
							onclick="location.href='/goguma/center/questiondel.do?seq=${dto.seq}';">
					</td>
					</c:if>
				</tr>
				<tr>
					<td id="date" colspan = "3">작성일 : ${dto.regdate}   작성자 : ${dto.user}</td>
				</tr> 
				<tr>
					<td colspan = "3" id="image"><img src="/goguma/files/question/${dto.path}" ></td>
				</tr>
				<tr>
					<td colspan = "3" id="content">${dto.content}</td>
				</tr>
			</table>
			<c:if test="${reply.content != null}">
				<table class="detail">
					<tr>
						<td id="title" colspan = "3">Re : ${dto.title}</td>
					</tr>
					<tr>
						<td id="date" colspan = "3">작성일 : ${reply.regdate}</td>
					</tr> 
					<tr>
						<td colspan = "3" id="content">${reply.content}</td>
					</tr>
				</table>
			</c:if>
			
			<div class="btns">
				<input type="button" value="돌아가기"
					class="btn btn-default"
					onclick="location.href='/goguma/center/questionlist.do?search=${search}&page=${page}';">
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
			
			
		
		<%-- <%@include file="/WEB-INF/views/inc/footer.jsp" %> --%>
	</main>
	
	<script>
	
		
	</script>
</body>
</html>

