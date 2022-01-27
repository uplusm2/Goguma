<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Code</title>
<%@ include file="/WEB-INF/views/inc/asset.jsp" %>
<style>
	table, th, td{
		border : 1px solid #aaaaaa;
	}
	
	.favorite{
		margin : 0 auto;
	}
	
	
	
</style>
</head>
<body>

	
	<!-- favorite.jsp -->
	<main class="main">
		<%@include file="/WEB-INF/views/inc/header.jsp" %>
		<section class="favorite">
		
		</section>
		<%@include file="/WEB-INF/views/inc/footer.jsp" %>
	</main>
	
	<script>
	<c:if test="${result == 1}">
		location.href = '/goguma/favorite/favorite.do?id=${id}';
	</c:if>
	<c:if test="${result == 0}">
		//실패
		alert('failed');
		history.back();
	</c:if>
		
	</script>
</body>
</html>

