<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Code</title>
<%@ include file="/WEB-INF/views/inc/asset.jsp"%>
<!-- window.top.location.href 아이프레임에서 부모창 변경시 -->
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
			<%@include file="/WEB-INF/views/inc/header.jsp"%>
	<div class="container">
		<main class="main">
			<%@ include file="/WEB-INF/views/inc/user/usernav.jsp"%>
			<section class="content">
				<iframe class="frame" src="/goguma/profile/userprofile.do?userId=${userId}"  frameborder=0 framespacing=0 marginheight=0 marginwidth=0 scrolling=no vspace=0>
				</iframe>
			</section>
			<%-- <%@include file="/WEB-INF/views/inc/footer.jsp"%> --%>
		</main>
	</div>
	<script>
		$(".mainmenu1").click(()=>{
			$(".frame").attr("src","/goguma/profile/userprofile.do?userId=${userId}");
		});
		$(".sub").children().eq(0).click(()=>{
			$(".frame").attr("src","/goguma/profile/salesReviewList.do?userId=${userId}");
		});
		$(".sub").children().eq(1).click(()=>{
			$(".frame").attr("src","/goguma/profile/purchaseReviewList.do?userId=${userId}");
		});
	</script>
	<%@include file="/WEB-INF/views/inc/footer.jsp" %>
</body>
</html>







