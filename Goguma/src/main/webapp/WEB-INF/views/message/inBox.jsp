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
	<main class="main">
		<%@include file="/WEB-INF/views/inc/header.jsp" %>
		
		<section class="message-in">
			<div class="title" onclick="location.href='/goguma/message/inBox.do';">
			
				<h2>받은 메시지</h2>
			</div>
		
		</section>
	</main>
	
	<script>
	
	</script>
</body>
</html>