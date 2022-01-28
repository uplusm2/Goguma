<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Code</title>
<%@ include file="/WEB-INF/views/inc/asset.jsp" %>
<style>
	.bi{
		color : tomato;
	}
</style>
</head>
<body>

	
	<!-- favorite.jsp -->
	<main class="main">
		<%@include file="/WEB-INF/views/inc/header.jsp" %>
		<section class="favorite">
		
			<c:if test="${check eq '0'}">
				<form method="GET" action="/goguma/favorite/favoriteadd.do">
					<div class="bi bi-heart" onclick="location.href='/goguma/favorite/favoriteadd.do?seq=${seq}&id=${id}'"></div>
				</form>
			</c:if>
			<c:if test="${check eq '1'}">
				<form method="GET" action="/goguma/favorite/favoritedel.do">
					<div class="bi bi-heart-fill" onclick="location.href='/goguma/favorite/favoritedel.do?seq=${seq}&id=${id}'"></div>
				</form>
			</c:if>
			
			<input type="button" value="찜목록으로" onclick= "location.href='/goguma/favorite/favorite.do?id=${id}'">
		</form>
		</section>
		<%@include file="/WEB-INF/views/inc/footer.jsp" %>
	</main>
	
	<script>
	
		
	</script>
</body>
</html>

