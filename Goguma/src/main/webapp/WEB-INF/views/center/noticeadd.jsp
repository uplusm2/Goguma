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
	<!-- .jsp -->
	<main class="main">
		<%@include file="/WEB-INF/views/inc/header.jsp" %>
		<section class="notice">
			
			<form method="POST" action="/goguma/center/noticeaddok.do" enctype="multipart/form-data">
				<table class="table table-bordered add">
					<tr>
						<th>제목</th>
						<td><input type="text" name="subject" class="form-control" required></td>
					</tr>
					<tr>
						<th>내용</th>
						<td><textarea name="content" class="form-control" required></textarea></td>
					</tr>
					<tr>
						<th>사진</th>
						<td><input type="file" name = "imgfile" name="product_image" id="product_image" onchange="setThumbnail(event);"></td>
					</tr> 
					<tr>
						<th></th>
						<td id="image_container"></td>
					</tr>
					<input type="hidden" name="seq" values="${seq}">
				</table>
				
				<div class="btns">
					<input type="button" value="돌아가기"
						class="btn btn-default"
						onclick="location.href='/goguma/center/noticelist.do';">
					<input type="submit" value="글쓰기"
						class="btn btn-primary">										
				</div>
			</form>
			
		</section>
			
		
		<%--<%@include file="/WEB-INF/views/inc/footer.jsp" %> --%>
	</main>
	
	<script>
		function setThumbnail(event){
			var reader = new FileReader();
			
			reader.onload = function(event){
				var img = document.createElement("img");
				img.setAttribute("src", event.target.result);
				img.setAttribute("class", "col-lg-6");
				document.querySelector("#image_container").append(img);
			};
			
			reader.readAsDataURL(event.target.files[0]);
		}
	</script>
</body>
</html>

