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
	<!-- faqdel.jsp -->
	<main class="main">
		<%@include file="/WEB-INF/views/inc/header.jsp" %>
			<section class="center">
			
			<div class="del">
				<div class="bi bi-trash"></div>
				<p>정말로 삭제하시겠습니까?</p>	
				<div class="panel-body">
					<input type="button" value="돌아가기"
						class="btn btn-default"
						onclick="history.back();">
					
					<input type="button" value="삭제하기"
						class="btn btn-primary"
						onclick="location.href='/goguma/center/noticedelok.do?seq=${seq}';">
					
				</div>
			</div>
			
		</section>
			
		
		<%--<%@include file="/WEB-INF/views/inc/footer.jsp" %> --%>
	</main>
	
	<script>
	
		
	</script>
</body>
</html>

