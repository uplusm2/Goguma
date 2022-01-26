<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Code</title>
<%@ include file="/WEB-INF/views/inc/asset.jsp" %>
<style>
	/* .detail table, td, th{
		border : 1px solid black;
	} */
	.btns{
		float : right;
		margin-top : 20px;
	}
</style>
</head>
<body>
	<!-- noticeview.jsp -->
	<main class="main">
		<%@include file="/WEB-INF/views/inc/header.jsp" %>
		
		<section class="center content">
			<div class="title" onclick="location.href='/goguma/center/noticelist.do';">
					<h2>공지사항</h2>
			</div>
			<table class="detail">
				<tr>
					<td id="title">${dto.title}</td>
					<c:if test="${not empty id && lv.equals('2')}">
					<td class="button">
						<input type="button" value="수정하기" class="btn-edit"
							onclick="location.href='/goguma/center/noticeedit.do?seq=${dto.seq}';">
					</td>
					<td class="button">
						<input type="button" value="삭제하기" class="btn-del"
							onclick="location.href='/goguma/center/noticedel.do?seq=${dto.seq}';">
					</td>
					</c:if>
				</tr>
				<tr>
					<td colspan = "3" id="date">작성일 ${dto.regdate}</td>
				</tr>
				<tr>
					<td colspan = "3" id="image"><img src="/goguma/files/notice/${dto.path}" ></td>
				</tr>
				<tr>
					<td colspan = "3" id="content">${dto.content}</td>
				</tr>
			</table>
			<div class="btns">
			
				<input type="button" value="돌아가기"
					class="btn btn-default"
					onclick="location.href='/goguma/center/noticelist.do?&page=${page}';">
				
								
			</div>
			</section>
		
		<%--<%@include file="/WEB-INF/views/inc/footer.jsp" %> --%>
	</main>
	
	<script>
	
		
	</script>
</body>
</html>

