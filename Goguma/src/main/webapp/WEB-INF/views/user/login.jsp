<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Code</title>
<%@ include file="/WEB-INF/views/inc/asset.jsp" %>
<style>

	.panel {
		width: 400px;
		margin: 0 auto; 
		margin-top: 150px;
		text-align: center;
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
</head>
<body>

	<main class="main">
		<%@include file="/WEB-INF/views/inc/header.jsp" %>
		
		<section class="content">
			
			<div class="panel panel-default">
				<div class="panel-heading">로그인</div>
				<div class="panel-body">
				
					<form method="GET" action="/goguma/user/loginok.do">
						<input type="text" name="id" class="form-control" placeholder="아이디" required autofocus>
						<input type="password" name="pw" class="form-control" placeholder="비밀번호" required>
						<div align="right"><input type="submit" value="로그인" class="btn btn-default" >
						</div>
					</form>
					
					<div class = "bottom line">
					<li><a href="/goguma/user/userregister.do">아이디 찾기</a></li>
					<li><a href="/goguma/user/userregister.do">비밀번호 찾기</a></li>
					<li><a href="/goguma/user/userregister.do">회원가입</a></li>
					</div>
				</div>
			</div>
			
		</section>
		
		<%@include file="/WEB-INF/views/inc/footer.jsp" %>
	</main>
	
	<script>
	
	</script>
</body>
</html>
