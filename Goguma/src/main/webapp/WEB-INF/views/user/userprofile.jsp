<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Code</title>
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
		
	}
	
</style>
</head>
<body>
	<!-- main.jsp -->
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
	<script>
		
	</script>
</body>
</html>







