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
				<div>${userProfileData.id} 님의 프로필 입니다.</div>
				<table>
					<tr>
						<td><img src="/goguma/asset/img/${userProfileData.path}"
							style="width: 150px"></td>
						<td>
							<div>
								<span>NickName</span><span> ${userProfileData.nickName}</span>
							</div>
							<div>
								<span>info </span><span> ${userProfileData.intro}</span>
							</div>
						</td>
					</tr>
					<tr>
						<td>
							<input type="button" value="버튼" class="btn important" onclick="/goguma/user/salesReviewList.do">
							<input type="button" value="버튼" class="btn important" onclick="/goguma/user/purchaseReviewList.do">
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
			<%@include file="/WEB-INF/views/inc/footer.jsp"%>
		</main>
	</div>
	<script>
		
	</script>
</body>
</html>







