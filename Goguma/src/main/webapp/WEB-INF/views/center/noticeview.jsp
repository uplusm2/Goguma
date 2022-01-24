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
	<!-- noticeview.jsp -->
	<main class="main">
		<%@include file="/WEB-INF/views/inc/header.jsp" %>
		<section class="center">
			<table class="table table-bordered add">
				<tr>
					<th>제목</th>
					<td>${dto.title}</td>
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
			<div class="btns">
			
				<input type="button" value="돌아가기"
					class="btn btn-default"
					onclick="location.href='/goguma/center/noticeview.do?&page=${page}';">
				
				<c:if test="${not empty id && lv.equals("2")}">
					<input type="button" value="수정하기"
						class="btn btn-primary"
						onclick="location.href='/goguma/center/noticeedit.do?seq=${dto.seq}';">
					
					<input type="button" value="삭제하기"
						class="btn btn-primary"
						onclick="location.href='/goguma/center/noticedel.do?seq=${dto.seq}';">
				</c:if>						
			</div>
			</section>
		
		<%--<%@include file="/WEB-INF/views/inc/footer.jsp" %> --%>
	</main>
	
	<script>
	
		
	</script>
</body>
</html>

