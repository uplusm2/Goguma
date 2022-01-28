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
		margin : 10px;
	}
	
	.question .title{
		height : 75px;
	}
	
	.question textarea{
		height : 300px;
	}
</style>
</head>
<body>
	<!-- questionadd.jsp -->
	<main class="main">
		<%@include file="/WEB-INF/views/inc/header.jsp" %>
		<section class="question">
			
			<form method="POST" action="/goguma/center/questionaddok.do" enctype="multipart/form-data">
				<table class="table table-bordered add">
					<tr>
						<th class = "title">제목</th>
						<td><input type="text" name="subject" class="form-control" required></td>
					</tr>
					<tr>
						<th class = "type">종류</th>
						<td><select name = "type">
								<option value = "1">계정/인증</option>
								<option value = "2">구매/판매</option>
								<option value = "3">운영정책</option>
								<option value = "4">서비스이용</option>
								<option value = "5">기타</option>
							</select>
						</td>
					</tr>
					<tr>
						<th class = "content">내용</th>
						<td><textarea name="content" class="form-control" required></textarea></td>
					</tr>
					<tr>
						<th>사진</th>
						<td><input type="file" name="file"></td>
					</tr>
				</table>
				
				<div class="btns">
					<input type="button" value="돌아가기"
						class="btn btn-default"
						onclick="location.href='/goguma/center/questionlist.do?search=1&page=1';">
					<input type="submit" value="글쓰기"
						class="btn btn-primary">										
				</div>
			</form>
			
			
		</section>
			
		
		<%--<%@include file="/WEB-INF/views/inc/footer.jsp" %> --%>
	</main>
	
	<script>
	
		
	</script>
</body>
</html>

