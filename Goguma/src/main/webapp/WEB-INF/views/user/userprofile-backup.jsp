<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Code</title>
<%@ include file="/WEB-INF/views/inc/asset.jsp"%>
<style>
	.content {
		margin-top: 5%;
		margin-left: 20%;
	}
	
	/* .content h2:nth-child(1) {	
		margin-bottom: 3%;
	} */
	.content div:nth-child(2){
		padding-top:3%;
		padding-left:5%;
	}
	.content div:nth-child(2) img{
		margin-left : 6%;
		margin-bottom: 10%;
	}
	.profile{
		margin-top: 3%;
	}
	.profile-image{
		padding-left:10%;
	}
	.info div{
		text-align: left;
	}
	.info span{
		width:10000px;
		margin-left:10%;
		color: #697278;
		text-align: left;
	}
</style>
</head>
<body>
	<!-- main.jsp -->
	<div class="container"
		style="width: 1200px; position: absolute; top: 0px; left: 18vw;">
		<main class="main">
			<%@include file="/WEB-INF/views/inc/header.jsp"%>
			<%@include file="/WEB-INF/views/userSideBar.jsp"%>
			<section class="content">
				<h2>${userProfileData.id} 님의 프로필 입니다.</h2>
				<table class="profile">
					<tr>
						<td class="profile-image"><img src="/goguma/asset/img/${userProfileData.path}"
							style="width: 150px"></td>
						<td class="info">
							<div>
								<span style="background-color:#EEECEC">NickName</span><span> ${userProfileData.nickName}</span>
							</div>
							<div>
								<span style="background-color:#EEECEC">info </span><span> ${userProfileData.intro}</span>
							</div>
						</td>
					</tr>
					<tr>
						<td>
							<input type="button" value="구매 후기" class="btn important" 
								onclick="location.href='/goguma/user/salesReviewList.do?userId=${userProfileData.id}'">
							<input type="button" value="판매 후기" class="btn important" 
								onclick="location.href='/goguma/user/purchaseReviewList.do?userId=${userProfileData.id}'">
						</td>
					</tr>
					<tr>
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
					</tr>
				</table>
				<!-- <div style="padding-top:100px;"><img src="/goguma/asset/img/defaultprofile.PNG" style="width:150px"></div> -->
			</section>
			<%-- <%@include file="/WEB-INF/views/inc/footer.jsp"%> --%>
		</main>
	</div>
	<script>
		
	</script>
</body>
</html>







