<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>상대방 프로필</h1>
	<form action="/goguma/profile/mypage.do" method="get">
		
		<input type="hidden" name="id" value="user17">
		<button type="submit">user17</button>
		
	</form>
	<h1>상대방 프로필</h1>
	<form action="/goguma/profile/user.do" method="get">
		
		<input type="text" name="userId">userId
		<input type="text" name="id">id
		<button type="submit"></button>
		
	</form>
</body>
</html>