<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Code</title>
<%@ include file="/WEB-INF/views/inc/asset.jsp" %>
<style>
	.question{
			width : 1150px;
	}
	
	.question th{
		text-align : center;
		vertical-align : middle;
	}
	
	.btns{
		float : right;
		
	}
	
	.btns .btn{
		margin-bottom : 20px;
	}
	
	.question .title{
		height : 50px;
	}
	
	.question textarea{
		height : 300px;
	}
</style>
</head>
<body>
	<!-- faqEdit.jsp -->
	<main class="main">
		<%@include file="/WEB-INF/views/inc/header.jsp" %>
		<section class="question">
			
			<form method="POST" action="/goguma/center/questioneditok.do">
			<div class = "head-title"><h2>문의사항 수정</h2></div>
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
					<th>종류</th>
					<td>
						<select name = "type">
							<option value = "1">계정/인증</option>
							<option value = "2">구매/판매</option>
							<option value = "3">운영정책</option>
							<option value = "4">서비스이용</option>
							<option value = "5">기타</option>
						</select>
					</td>
				</tr>
				<tr>
					<th>사진</th>
					<td>${dto.path}</td>
				</tr>
				<tr>
					<th>내용</th>
					<td><textarea name="content" class="form-control" required>${dto.content}</textarea></td>
				</tr>
				
			</table>
			
			<div class="btns">
				<input type="button" value="돌아가기"
					class="btn btn-default"
					onclick="location.href='/goguma/center/questionview.do?seq=${dto.seq}';">
				<input type="submit" value="수정하기"
					class="btn btn-primary">										
			</div>
			<input type="hidden" name="seq" value="${dto.seq}">
			</form>
		</section>
			
		
		<%-- <%@include file="/WEB-INF/views/inc/footer.jsp" %> --%>
	</main>
	
	<script>
	
		
	</script>
</body>
</html>

