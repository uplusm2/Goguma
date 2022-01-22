<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고구마장터 차단</title>
<%@ include file="/WEB-INF/views/inc/asset.jsp"%>
<link rel="stylesheet" href="/bangterior/css/main_admin.css">
<style>
</style>
</head>
<body>
	<!-- block.jsp -->
	<main class="main">
		<%@include file="/WEB-INF/views/inc/header.jsp"%>
		<section class="content">
			<%-- <%@ include file="/WEB-INF/views/inc/admin/nav.jsp"%> --%>

			<div class="container">
				<form method="GET" action="/goguma/admin/blockok.do">
					<table class="table table-bordered">
						<tr>
							<th>차단할 회원</th>
							<td>${name}</td>
						</tr>
						<tr>
							<th>차단할 아이디</th>
							<td>${id}</td>
						</tr>
						<tr>
							<th>차단 사유</th>
							<td>
								<select class="form-control">
									<option value="1">사기</option>
									<option value="2">잠수</option>
									<option value="3">욕설</option>
									<option value="4">타 사이트 광고</option>
									<option value="5">불법</option>
								</select>
							</td>
						</tr>
						<tr>
							<td colspan="2"><input type="submit" value="차단하기" class="btn btn-default"></td>
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
