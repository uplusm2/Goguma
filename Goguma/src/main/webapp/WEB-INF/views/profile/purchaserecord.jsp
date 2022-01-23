<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="/WEB-INF/views/inc/asset.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="grid-container">
		<table class="table">
			<tr>
				<th>No.</th>
				<th>내용</th>
				<th>작성자</th>
				<th>날짜</th>
			</tr>
			<%int i=1; %>
			<c:forEach items="${list}" var="dto" >
			<tr>
				<td><%=i++ %></td>
				<td>${dto.contetnt}</td>
				<td>${dto.nickname}</td>
				<td>${dto.regdate}</td>
			</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>