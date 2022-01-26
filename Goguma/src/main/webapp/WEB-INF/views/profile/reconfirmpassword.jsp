<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="/WEB-INF/views/inc/asset.jsp"%>
</head>
<style>
.btn.important {
	border: 1px solid #9B59B6;
	background: #9B59B6;
	color: #fff;
}

.grid-container {
	width: 970px;
	height: 500px;
	margin-top: 5%;
	display: grid;
	grid-template-columns: 1fr 1fr 1fr 1fr 1fr;
	grid-template-rows: 1fr 1fr 1fr 1fr 1fr;
}

.grid-container div {
	border: 1px solid black;
}

.panel {
	width: 400px;
	margin: 0 auto;
	margin-top: 50px;
	text-align: center;
	height: 300px;
}

.panel input {
	margin-bottom: 5px;
}

.panel input[type=submit] {
	margin-top: 10px;
}

.bottomline {
	font-size: 15px;
}
</style>
<body>
	<div class="container"
		style="width: 1200px; position: absolute; top: 0px; left: 18vw;">
		<main class="main">
			<%@include file="/WEB-INF/views/inc/header.jsp"%>
			<%@ include file="/WEB-INF/views/inc/user/mynav.jsp"%>
			<section class="content">
				<h2>회원 정보를 변경하기 위해서 재 로그인해 주세요.</h2>
				<div class="panel panel-default">
					<div class="panel-heading">정보 확인</div>
					<div class="panel-body">

						<form method="POST" action="/goguma/profile/reconfirmpasswordok.do">
							<input type="text" name="id" class="form-control"
								placeholder="아이디" required autofocus> <input
								type="password" name="pw" class="form-control"
								placeholder="비밀번호" required>
							<div align="right">
								<input type="submit" value="로그인" class="btn btn-default">
							</div>
						</form>

						<div class="bottom line">
							<li><a href="/goguma/user/findid.do">아이디 찾기</a></li>
							<li><a href="/goguma/user/userregister.do">비밀번호 찾기</a></li>
							<li><a href="/goguma/user/userregister.do">회원가입</a></li>
						</div>
					</div>
				</div>


			</section>
		</main>
	</div>
</body>
</html>