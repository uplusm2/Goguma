<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>bid</title>
<%@ include file="/WEB-INF/views/inc/asset.jsp" %>
<style>
</style>
</head>
<body>
	<main class="main">
		<%@include file="/WEB-INF/views/inc/header.jsp" %>
		
		<section class="community">
			<div class="title">
				<h2>${dto.name} 의 입찰내역</h2>
			</div>
			
			<table class="table">
				<tr>
					<th></th>
					<th>입찰자</th>
					<th>가격</th>
					<th>시간</th>
				</tr>
				<c:forEach items="${bidlist}" var="bdto">
				<tr>
					<td>${bdto.bid_seq}</td>
					<td>
						<%-- <a href="/goguma/product/productDetail.do?seq=${dto.seq}"> --%>
						${bdto.id}

					</td>
					<td>${bdto.price}</td>
					<td>${bdto.time}</td>
				</tr>
				</c:forEach>
			</table>
			
			<div class="button">
				<button type="button" class="btn important write"
					onclick="history.back();">
					돌아가기
				</button>
			</div>
			
			
			
		</section>
	</main>
	
	<script>
	
	</script>
</body>
</html>