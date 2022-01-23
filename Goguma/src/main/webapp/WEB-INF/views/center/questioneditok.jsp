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
	<!-- faqeditok.jsp -->
	<main class="main">
		<%@include file="/WEB-INF/views/inc/header.jsp" %>
		
			
		
		<%--<%@include file="/WEB-INF/views/inc/footer.jsp" %> --%>
	</main>
	
	<script>
		<c:if test="${result == 1}">
		//성공
		location.href = '/goguma/center/questionview.do?seq=${seq}';
		</c:if>
		
		<c:if test="${result == 0}">
		//실패
		alert('failed');
		history.back();
		</c:if>
	</script>
</body>
</html>

