<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<%@ include file="/WEB-INF/views/inc/asset.jsp" %>
<style>

</style>
</head>
<body>
	<!-- user/loginok.jsp -->
	<main class="main">

	</main>
	
	
	<script>
		<c:if test="${dto.my == 'y'}">
			location.href = '/goguma/product/myproductDetail.do?seq=${dto.seq}';
		</c:if>

		<c:if test="${dto.my == 'n'}">
			location.href = '/goguma/product/productDetail.do?seq=${dto.seq}';
		</c:if>
		
	</script>
	
</body>
</html>