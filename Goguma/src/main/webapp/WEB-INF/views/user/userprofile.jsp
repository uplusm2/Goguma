<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Code</title>
<<<<<<< HEAD
<%@ include file="/WEB-INF/views/inc/asset.jsp"%>
<style>
	.grid-container{
		display:grid;
		grid-template-columns: 15% 17% 20% 24% 24%;
		grid-template-rows: 150px 50px 150px;
	}
	.grid-container div:nth-child(1) {
		text-align: center; 
		grid-column-start :1;
		grid-column-end:3;
	}
	.grid-container div:nth-child(2) {
		margin-top : 15%;
		text-align: center; 
		grid-column-start :3;
		grid-column-end:4;
	}
	.grid-container div:nth-child(3) {
		grid-column-start :4;
		grid-column-end:6;
	}
	.grid-container div:nth-child(3) div:nth-child(1){
		margin-top : 5.7%;
		margin-bottom:0;
		margin-left:3%;
	}
	.grid-container div:nth-child(3) div:nth-child(2){
		margin-top : 6%;
		margin-bottom:0;
		margin-left:3%;
	}
	.grid-container div:nth-child(5) {
		margin-left:8%;
		grid-column-start :2;
		grid-column-end:6;
	}
	.grid-container div:nth-child(6) {
		margin-top : 5%;
		text-align: center;
	}
	.grid-container div:nth-child(7) {
		margin-left:15%;
		margin-top : 5%;
		text-align: center;
		
=======
<%@ include file="/WEB-INF/views/inc/asset.jsp" %>
<style>	
	.sidebar{
		margin-top:30px;
		margin-bottom:30px;
		height: 75vh;
		width:20vh;
		float: left;
>>>>>>> refs/remotes/origin/hyein
	}
<<<<<<< HEAD
	
=======
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
>>>>>>> refs/remotes/origin/hyein
</style>
</head>
<body>
	<!-- main.jsp -->
<<<<<<< HEAD
	<h2>${userProfileData.id} 님의 프로필 입니다.</h2>
	<div class="grid-container">
		<div>
			<img src="/goguma/asset/img/${userProfileData.path}" style="width: 130px">
		</div>
		
		<div>
			<div style="background-color:#EEECEC">NickName</div>
			<div style="background-color:#EEECEC">info </div>
		</div>
		
		<div>
			<div> ${userProfileData.nickName}</div>
			<div> ${userProfileData.intro}</div>
		</div>
		
		<div>
			<input type="button" value="구매 후기" class="btn important" 
				onclick="location.href='/goguma/user/salesReviewList.do?userId=${userProfileData.id}'">
		</div>
		
		<div>
			<input type="button" value="판매 후기" class="btn important" 
				onclick="location.href='/goguma/user/purchaseReviewList.do?userId=${userProfileData.id}'">
		</div>
		
		<div>
			<span style="color: gold;">★</span> <span style="color: gold;">★</span>
			<span style="color: gold;">★</span> <span style="color: gold;">★</span>
			<span style="color: gold;">★</span> 
			<!-- jquery 이횽해서 자식 위치 확인후  색을 지정  -->
			<div>구매점수</div>
		</div> 
		
		<div>
			<span style="color: gold;">★</span> <span style="color: #7777;">★</span>
			<span style="color: #7777;">★</span> <span style="color: #7777;">★</span>
			<span style="color: #7777;">★</span>
			<div>판매점수</div>
		</div>
	</div>
=======
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
>>>>>>> refs/remotes/origin/hyein
	<script>
	
	
	</script>
</body>
</html>







