<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Code</title>
<%@ include file="/WEB-INF/views/inc/asset.jsp" %>
<style>	
	.sidebar{
		margin-top:30px;
		margin-bottom:30px;
		height: 75vh;
		width:20vh;
		float: left;
	}
	.sidebar .profile{
		margin-top:60%;
		margin-left:28%
	}
	.sidebar .userPostList{
		margin-top:10%;
		margin-left:28%
	}
	.sidebar_line{
		background-color:#9B59B6;
		margin-top:30px;
		margin-bottom:30px;
		height: 75vh;
		width:3px;
		float: left;
	}
	.sidebar_line::after{
		clear: both;
	}
	.content{
		margin-top:5%;
		margin-left:20%;
	}
</style>
</head>
<body>
	<!-- main.jsp -->
	<div class="container" style="width:1200px; position:absolute; top:0px; left:18vw;">
		<main class="main">
			<%@include file="/WEB-INF/views/inc/header.jsp" %> 
			<div class= "sidebar">
				<div class="profile">Profile  <i class="bi bi-arrow-down-circle"></i></div>
				<div class="userPostList">작성글 내역</div>
			</div>
			<div class="sidebar_line"></div>
			<section class="content">
				<div>sweetPotato님의 프로필 입니다.</div>
				<table>
					<tr>
						<td><img src="/goguma/asset/img/defaultprofile.PNG" style="width:150px"></td>
						<td>
							<div>
								<span>NickName </span><span> sweetpotato</span>
							</div>
							<div>
								<span>info </span><span> 저는 고구마 같은 사람입니다. 제 물건을 많이 구매해 주세요!</span>
							</div>
						</td>
					</tr>
					<tr>
						<td>
							<input type="button" value="버튼" class="btn important">
							<input type="button" value="버튼" class="btn important">
						</td>
					</tr>
					<tr>
						<td>
							<div>
								<span style="color:gold;">★</span>
								<span style="color:gold;">★</span>
								<span style="color:gold;">★</span>
								<span style="color:gold;">★</span>
								<span style="color:gold;">★</span> <!-- jquery 이횽해서 자식 위치 확인후  색을 지정  -->
							</div>
							<span>구매별점</span>
						</td>
						<td>
							<div>
								<span style="color:gold;">★</span>
								<span style="color:#7777;">★</span>
								<span style="color:#7777;">★</span>
								<span style="color:#7777;">★</span>
								<span style="color:#7777;">★</span>
							</div>
							<span>판매별점</span>
						</td>
					</tr>
				</table>
				<!-- <div style="padding-top:100px;"><img src="/goguma/asset/img/defaultprofile.PNG" style="width:150px"></div> -->
			</section>
			<%@include file="/WEB-INF/views/inc/footer.jsp" %> 
		</main>
	</div>	
	<script>
	
	
	</script>
</body>
</html>







