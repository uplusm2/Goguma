<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Code</title>
<%@ include file="/WEB-INF/views/inc/asset.jsp"%>
<style>
</style>
</head>
<body>
	<!-- main.jsp -->
	<main class="main">
		<%@include file="/WEB-INF/views/inc/header.jsp"%>
		<%@include file="/WEB-INF/views/inc/admin/adminside.jsp"%>
		<section class="content">
			내용
		</section>
		<%@include file="/WEB-INF/views/inc/footer.jsp"%>
	</main>

	<script>
		$(".sidebar").children().eq(1).click(()=>{
			$(".sidebar").children().eq(2).toggle();
			$(".sidebar").children().eq(3).toggle();
			$(".sidebar").children().eq(4).toggle();
		});
		
		$(".sidebar").children().eq(5).click(()=>{
			$(".sidebar").children().eq(6).toggle();
			$(".sidebar").children().eq(7).toggle();
			$(".sidebar").children().eq(8).toggle();
		});
	</script>
</body>
</html>







