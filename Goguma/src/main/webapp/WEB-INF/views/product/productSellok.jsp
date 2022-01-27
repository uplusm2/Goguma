<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<%@ include file="/WEB-INF/views/inc/asset.jsp" %>
<style>
.ok{
	margin: 0px 20px;
}
</style>
</head>
<body>
	<!-- user/loginok.jsp -->
	
	<section class="community add">
			
			
			<div class="add">
				<p>판매완료 되었습니다.</p>
				<br><br>
				<div class="button">
					<input type="button" value="확인하기" class="btn check ok"
						onclick="location.href='/goguma/product/productDetail.do?seq=${seq}';"> 
					<input type="button" value="목록으로" class="btn list ok"
						onclick="location.href='/goguma/product/productList.do';"> 
				</div>
			</div>
			

		</section>
	
</body>
</html>