<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고구마장터 대시보드</title>
<%@ include file="/WEB-INF/views/inc/asset.jsp"%>
<link rel="stylesheet" href="/bangterior/css/main_admin.css">
<style>
</style>
</head>
<body>
	<!-- main.jsp -->
	<main class="main">
		<%@include file="/WEB-INF/views/inc/header.jsp"%>
		<section class="content">
			<%--<%@ include file="/WEB-INF/views/inc/admin/nav.jsp"--%>
			<div>
				<table class="table table-bordered list">
					<tr>
						<th>아이디</th>
						<th>이름</th>
						<th>가입일</th>
						<th>평점</th>
						<th>상태</th>
					</tr>
					<tr>
						<c:forEach items="${list}" var="dto">
							<tr>
								<td>${dto.id}</td>
								<td>${dto.name}</td>
								<td>${dto.since}</td>
								<td>${dto.score}</td>
								<td>${dto.state}</td>
							</tr>
						</c:forEach>
						<c:if test="${list.size() == 0 }">
							<tr>
								<td colspan="5">일치하는 회원이 없습니다.</td>
							</tr>
						</c:if>
				</table>

				<div class="pagebar">${pagebar}</div>

				<div class="search">
					<form method="GET" action="/goguma/admin/userlist.do">
						<table style="width: 500px; margin: 20px auto">
							<tr>
								<td>
									<select name="column" class="form-control">
										<option value="subject">아이디</option>
										<option value="name">이름</option>
									</select>
								</td>
								<td>
									<input type="text" name="word" class="form-control" required>
								</td>
								<td>
									<input type="submit" value="검색하기" class="btn btn-default">
								</td>
							</tr>
						</table>
					</form>


				</div>
			</div>
		</section>

		<%-- <%@include file="/WEB-INF/views/inc/footer.jsp" %> --%>

	</main>

	<script>
		
	</script>
</body>
</html>