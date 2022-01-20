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
	iframe{
		margin-top:5%;
		width: 70%;
		height: 50vh;
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
				<h2>user1 님의 프로필 입니다.</h2>
				<iframe src="/goguma//user/userprofile.do?userId=user1"  frameborder=0 framespacing=0 marginheight=0 marginwidth=0 scrolling=no vspace=0>
				</iframe>
			</section>
			<%-- <%@include file="/WEB-INF/views/inc/footer.jsp"%>  --%>
		</main>
	</div>
	<script>
		
	</script>
</body>
</html>







