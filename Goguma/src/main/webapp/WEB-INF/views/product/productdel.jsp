<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>delete</title>
<%@ include file="/WEB-INF/views/inc/asset.jsp" %>
<style>

</style>
</head>
<body>
	<!-- user/loginok.jsp -->
	
	<section class="community add">
			
			
			<div class="add">
				<p>선택상품이 삭제되었습니다.</p>
				<br><br>
				<div class="button">
					<input type="button" value="목록으로" class="btn list"
						onclick="location.href='/goguma/product/productList.do';"> 
				</div>
			</div>
			

		</section>
	
</body>
</html>