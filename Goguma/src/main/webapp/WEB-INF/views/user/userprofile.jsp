<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Code</title>
<%@ include file="/WEB-INF/views/inc/asset.jsp"%>
<style>
	.container>img{
		float: left;
	}
	.container:nth-child(2){
		float: left;
	}
	.container:nth-child(3){
		float: left;
	}
	
</style>
</head>
<body>
	<!-- main.jsp -->
	<div class="container">
		<img src="/goguma/asset/img/${userProfileData.path}" style="width: 150px">
		<div style="background-color:#EEECEC">NickName</div>
		<div> ${userProfileData.nickName}</div>
		<div style="background-color:#EEECEC">info </div>
		<div> ${userProfileData.intro}</div>
		<input type="button" value="구매 후기" class="btn important" 
			onclick="location.href='/goguma/user/salesReviewList.do?userId=${userProfileData.id}'">
		<input type="button" value="판매 후기" class="btn important" 
			onclick="location.href='/goguma/user/purchaseReviewList.do?userId=${userProfileData.id}'">
		<td>
			<div>
				<span style="color: gold;">★</span> <span style="color: gold;">★</span>
				<span style="color: gold;">★</span> <span style="color: gold;">★</span>
				<span style="color: gold;">★</span> 
				<!-- jquery 이횽해서 자식 위치 확인후  색을 지정  -->
			</div> <span>구매별점</span>
		</td>
		<td>
			<div>
				<span style="color: gold;">★</span> <span style="color: #7777;">★</span>
				<span style="color: #7777;">★</span> <span style="color: #7777;">★</span>
				<span style="color: #7777;">★</span>
			</div> <span>판매별점</span>
		</td>
	</div>
	<script>
		
	</script>
</body>
</html>







