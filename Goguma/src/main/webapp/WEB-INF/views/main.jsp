<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Code</title>
<%@ include file="/WEB-INF/views/inc/asset.jsp" %>
<style>

</style>
</head>
<body>
	<!-- main.jsp -->
	<main class="real-main">
		<%@include file="/WEB-INF/views/inc/header.jsp" %>
		<section class="main-img">
			<ul class="slide">
				<li><img src="/goguma/asset/img/main1.png">
					<img src="/goguma/asset/img/main-txt.png" class="txt">
				</li>
				<li><img src="/goguma/asset/img/main3.png">
					<img src="/goguma/asset/img/main-txt3.png" class="txt">
				</li>
				<li><img src="/goguma/asset/img/main2.png">
					<img src="/goguma/asset/img/main-txt4.png" class="txt">
				</li>
			</ul>
		</section>
		<section class="today-product">
			<div class="title" onclick="location.href='/goguma/main.do';">
				<h2>오늘의 상품 추천</h2>
				<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
			</div>
		</section>
		<section class="today-notice">
			<div class="title" onclick="location.href='/goguma/center/noticelist.do';">
				<h2>공지사항</h2>
				<br><br>
			</div>
		</section>
		<%@include file="/WEB-INF/views/inc/footer.jsp" %>
	</main>
	
	<script>
	
	</script>
</body>
</html>







