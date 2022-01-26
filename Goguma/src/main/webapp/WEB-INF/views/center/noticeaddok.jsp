<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	<!-- center/faqaddok.jsp -->
	<main class="main">
		<%@include file="/WEB-INF/views/inc/header.jsp" %>
			<div class="add">
				<p>공지사항이 등록되었습니다.</p>
				<div class="button">
					<input type="button" value="확인하기" class="btn btn-default"
						onclick="location.href='/goguma/center/faq.do?search=1&page=1';"> 
				</div>
			</div>
		<%@include file="/WEB-INF/views/inc/footer.jsp" %>
	</main>
	
	<script>
		<c:if test="${result == 0}">
			//실패
			alert('failed');
			history.back();
		</c:if>
	</script>
</body>
</html>







