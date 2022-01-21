<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Code</title>

<style>

</style>
</head>
<body>
	<!-- member/loginok.jsp -->
	<main class="main">
		<%@include file="/WEB-INF/inc/header.jsp" %>
		<section class="content">
					
		</section>
		<%@include file="/WEB-INF/inc/footer.jsp" %>
	</main>
	
	<script>
	
		<c:if test="${not empty id}">
			location.href = '.do';
		</c:if>
		
		<c:if test="${empty id}">
			alert('실패;;');
			history.back();
		</c:if>
		
	</script>
</body>
</html>







