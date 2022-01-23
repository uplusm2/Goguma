<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고구마장터</title>
<%@ include file="/WEB-INF/views/inc/asset.jsp"%>
<link rel="stylesheet" href="/bangterior/css/main_admin.css">
<style>
</style>
</head>
<body>
	<!-- unblock.jsp -->
	<main class="main">
		<%-- <%@include file="/WEB-INF/views/inc/header.jsp"%> --%>
		<section class="content">
			<%-- <%@ include file="/WEB-INF/views/inc/admin/nav.jsp"%> --%>

			<div class="container">
				<form method="GET" action="/goguma/admin/unblockok.do">
					<table class="table table-bordered">
						<tr>
							<th>차단해제할 아이디</th>
							<td>${dto.id}</td>
						</tr>
						<tr>
							<th>차단 날짜</th>
							<td>${dto.regDate}</td>
						</tr>
						<tr>
							<th>차단 사유</th>
							<td>${dto.type}</td>
						</tr>
						<tr>
							<td colspan="2">
								<input type="hidden" name="id" value="${dto.id}">
								<input type="submit" value="차단해제" class="btn btn-default">
							</td>
						</tr>
					</table>
				</form>
			</div>
			
		</section>

		<%-- <%@include file="/WEB-INF/views/inc/footer.jsp" %> --%>

	</main>

	<script>
		
	</script>
</body>
</html>
