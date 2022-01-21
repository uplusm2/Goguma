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
			<%@include file="/WEB-INF/views/user/userSideBar.jsp"%>
			<section class="content">
				<iframe class="frame" src="/goguma//user/userprofile.do?userId=${userId}"  frameborder=0 framespacing=0 marginheight=0 marginwidth=0 scrolling=no vspace=0>
				</iframe>
			</section>
			<%-- <%@include file="/WEB-INF/views/inc/footer.jsp"%> --%>
		</main>
	</div>
	<script>
		$(".sidebar").children().eq(0).click(()=>{
			$(".frame").attr("src","/goguma//user/userprofile.do?userId=${userId}");
		});
		$(".sidebar").children().eq(1).click(()=>{
			$(".frame").attr("src","/goguma/user/salesReviewList.do?userId=${userId}");
		});
		$(".sidebar").children().eq(2).click(()=>{
			$(".frame").attr("src","/goguma/user/purchaseReviewList.do?userId=${userId}");
		});
	</script>
</body>
</html>







