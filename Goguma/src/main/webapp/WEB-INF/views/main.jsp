<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Goguma</title>
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
			<nav class="right-side">
				<div class="favorite">
					<i class="bi bi-heart-fill"></i><span>2</span>
				</div>
				<div class="top">
					<i class="bi bi-arrow-up"></i>
				</div>
			</nav>
		</section>
		<section class="today-product">
			<div class="title" onclick="location.href='/goguma/main.do';">
				<h2>오늘의 상품 추천</h2>
			</div>
			<ul class="recommendation">
				<c:forEach items="${productList}" var="pdto">
				<li><a href=""><p class="img"><img src="/goguma/asset/img/${pdto.imgPath}"></p>
					<div class="content">
						<p class="price">${pdto.price}<small>원</small> <i class="bi bi-stopwatch">${pdto.interval} 전</i></p>
						<p class="intro">${pdto.name}</p>
					</div></a>
				</li>
				</c:forEach>
			</ul>
		</section>
		<section class="today-notice">
			<div class="title" onclick="location.href='/goguma/center/noticelist.do';">
      				<h3>공지사항<span class="glyphicon glyphicon-menu-right"></span></h3>
  			</div>
   			<p onclick="location.href='/goguma/center/noticeview.do?seq=${noticeDto.seq}';">${noticeDto.title}<small>${noticeDto.regdate}</small></p>
		</section>
		<%@include file="/WEB-INF/views/inc/footer.jsp" %>
	</main>
	
	<script>
	
	</script>
</body>
</html>







