<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Code</title>
<%@ include file="/WEB-INF/views/inc/asset.jsp" %>
<style>

	*{
		  margin: 0px;
		  padding: 0px;
		  text-decoration: none;
		  font-family:sans-serif;
	
	}
	
	body {
	  back	ground-image: #34495e;
	}
	
	.loginForm {
		  position:absolute;
		  width:300px;
		  height:400px;
		  padding: 30px, 20px;
		  background-color:#f0f0f0;
		  text-align:center;
		  top:50%;
		  left:50%;
		  transform: translate(-50%,-50%);
		  border-radius: 15px;
		  border: solid 1px #dacce8;
	}
	
	.loginForm h2{
		  text-align: center;
		  margin: 30px;
	}
	
	.idForm{
		  border-bottom: 2px solid #adadad;
		  margin: 30px;
		  padding: 10px 10px;
	}
	
	.passForm{
		  border-bottom: 2px solid #adadad;
		  margin: 30px;
		  padding: 10px 10px;
	}
	
	.id {
		  width: 100%;
		  border:none;
		  outline:none;
		  color: #636e72;
		  font-size:16px;
		  height:25px;
		  background: none;
	}
	
	.pw {
		  width: 100%;
		  border:none;
		  outline:none;
		  color: #636e72;
		  font-size:16px;
		  height:25px;
		  background: none;
	}
	
	.btn {
		  position:relative;
		  left:40%;
		  transform: translateX(-50%);
		  margin-bottom: 40px;
		  width:80%;
		  height:40px;
		  background: linear-gradient(125deg,#81ecec,#6c5ce7,#81ecec);
		  background-position: left;
		  background-size: 200%;
		  color:white;
		  font-weight: bold;
		  border:none;
		  cursor:pointer;
		  transition: 0.4s;
		  display:inline;
	}
	
	.btn:hover {
	  back	ground-position: right;
	}
	
	.bottomText li {
		  float: left;
		  font-size: 15px;
		 margin-left: 8px;
	}
	

	
	
</style>
</head>
<body width="100%" height="100%">

	<main class="main">
		<%@include file="/WEB-INF/views/inc/header.jsp" %>
		
		<section class="content">
			
	<form action="/goguma/user/loginok.do" method="post" class="loginForm">
      <h2>Log in</h2>
      <div class="idForm">
        <input type="text" class="id" placeholder="아이디" name="id">
      </div>
      <div class="passForm">
        <input type="password" class="pw" placeholder="비밀번호" name="pw">
      </div>
      <button type="submit" class="btn" onclick="button()">
        로그인
      </button>
     
      <script>

      </script>
      <div class="bottomText">
			<li><a href="/goguma/user/findid.do">아이디 찾기</a></li>
			<li><a>|</a></li>
			<li><a href="/goguma/user/findpw.do">비밀번호 찾기</a></li>
			<li><a>|</a></li>
			<li><a href="/goguma/user/userregister.do">회원가입</a></li>
      </div>
    </form>
			
		</section>

	</main>
	
	<script>
	
	</script>
</body>
</html>
