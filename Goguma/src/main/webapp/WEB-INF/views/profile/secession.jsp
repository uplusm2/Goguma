<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String id = (String) request.getSession().getAttribute("id");
%>
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
	grid-template-columns: 1fr 1fr 1fr 1fr 1fr 1fr;
	grid-template-rows: 1fr 1fr 1fr 1fr 1fr;
}

/* .grid-container div {
	border: 1px solid black;
} */

.grid-container div:nth-child(2) {
	grid-column-start: 2;
	grid-column-end: 5;
}

.grid-container div:nth-child(5) div {
	border: 1px solid black;
	margin-top : 30px;
	margin-left	 : 30px;
	background-color: #EEECEC;
	text-align: center;
	margin-top: 30px;
}

.grid-container div:nth-child(6) {
	margin-top: 30px;
	margin-right: 30px;
	text-align: center;
	vertical-align: middle;
	
}

.grid-container div:nth-child(7) {
	margin-top: 30px;
	margin-left: 100px;
	text-align: center;
	grid-column-start: 3;
	grid-column-end: 6;
	grid-row-start: 2;
	grid-row-end: 5;
}
/* .grid-container div:nth-child(12) div{
		border:1px solid black;
		margin-top:30px;
		background-color:#EEECEC;
		text-align: center;
	}
	.grid-container div:nth-child(13) div{
		border:1px solid black;
		margin-top:30px;
		background-color:#EEECEC;
		text-align: center;
		grid-column-start :3;
		grid-column-end:5;
	}
	.grid-container div:nth-child(18) div{
		border:1px solid black;
		margin-top:30px;
		background-color:#EEECEC;
		text-align: center;
	} */
option {
	text-align: center;
}
</style>
<body>

			<%@include file="/WEB-INF/views/inc/header.jsp"%>
	<div class="container">
		<main class="main">
			<%@ include file="/WEB-INF/views/inc/user/mynav.jsp"%>
			<section class="content">
			<div class="title">
				<h2>회원 탈퇴</h2>
			</div>
			<form method="POST" action="/goguma/profile/reconfirmsecession.do">
				<div class="grid-container">

					<div></div>
					<div>회원 탈퇴를 위해 현재 로그인 중인 회원의 아이디와 비밀번호 탈퇴 사유를 입력해 주세요.</div>
					<div></div>
					<div></div>

					<div>
						<div>탈퇴사유</div>
					</div>
					<div>
						<select id="withdrawtype" name="type">
							<option value="1" selected="selected">UI 불만</option>
							<option value="2">서버 불만</option>
							<option value="4">타 사이트 이용</option>
							<option value="5">개인 사유</option>
							<option value="6">이용자 부족</option>
							<option value="7">기타</option>
						</select>
					</div>
						<div class="panel panel-default">
							<div class="panel-heading">정보 확인</div>
							<div class="panel-body">
							
								<input type="text" name="id" class="form-control"
									placeholder="아이디" required autofocus> <input
									type="password" name="pw" class="form-control"
									placeholder="비밀번호" required>
								<div align="right">
									<input type="submit" value="로그인" class="btn btn-default">
								</div>
							
						</div>
						</div>
					</div>
					</form>
			</section>
		</main>
	</div>
	<%@include file="/WEB-INF/views/inc/footer.jsp" %>
</body>
</html>