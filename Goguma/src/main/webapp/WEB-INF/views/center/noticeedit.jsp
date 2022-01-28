<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Code</title>
<%@ include file="/WEB-INF/views/inc/asset.jsp" %>
<style>
	.notice{
		width : 1150px;
	}
	
	.notice th{
		text-align : center;
		vertical-align : middle;
	}
	
	.btns{
		float : right;
	}
	.btns .btn{
		margin : 10px;
	}
	
	.notice .title{
		height : 75px;
	}
	
	.notice textarea{
		height : 300px;
	}
</style>
</head>
<body>
	<!-- noticelist.jsp -->
	<main class="main">
		<%@include file="/WEB-INF/views/inc/header.jsp" %>
			<section class="notice">
			<form method="POST" action="/goguma/center/noticeeditok.do">
			<table class="table table-bordered add">
				<tr>
					<th>제목</th>
					<td><input type="text" name="subject" class="form-control" required value="${dto.title}"></td>
				</tr>
				<tr>
					<th>날짜</th>
					<td>${dto.regdate}</td>
				</tr>
				<tr>
					<th>내용</th>
					<td><textarea name="content" class="form-control" required>${dto.content}</textarea></td>
				</tr>
				<tr>
					<th>사진</th>
					<td>${dto.path}</td>
				</tr>
			</table>
			
			<div class="btns">
				<input type="button" value="돌아가기"
					class="btn btn-default"
					onclick="location.href='/goguma/center/noticeview.do?seq=${dto.seq}';">
				<input type="submit" value="수정하기"
					class="btn btn-primary">										
			</div>
			
			<input type="hidden" name="seq" value="${dto.seq}">
			</form>
			
		</section>
			
		
		<%--<%@include file="/WEB-INF/views/inc/footer.jsp" %> --%>
	</main>
	
	<script>
	
		
	</script>
</body>
</html>

