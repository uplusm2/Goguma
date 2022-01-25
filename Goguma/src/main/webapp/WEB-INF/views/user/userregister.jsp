<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

	<meta http-equiv="Content-Type" content="text/html charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="css/bootstrap.css">
	<link rel="stylesheet" href="css/custom.css">
<title> 회원가입 </title>
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
	<%@ include file="/WEB-INF/views/inc/asset.jsp" %>
<style>
	.table {
		width:500px;
		margin: auto;
	}
</style>
	



</head>
<body>

	<main class="main">
		<%@include file="/WEB-INF/views/inc/header.jsp" %>
		<div></div>
		
		<div></div>
		
	<div class="container">
		<form name="joinform" method="POST" action="/goguma/user/userregisterok.do">
			<table class="table" style="text-align: center; border:1px solid #ddd">
				<thead>
					<tr>
						<th colspan="3"><h4>회원 가입</h4></th>
					</tr>
				</thead>
				<tbody>
				<tr>
					<td style="width: 110px;"><h5>아이디</h5></td>
					<td>
						<input class="form-control" placeholder="아이디" type="text" name="id" id="id" maxLength="16">
						<font id="checkId" size = "2"></font>
					</td>
					
					<td style="width: 110px;"><button class="btn btn-primary" onclick="registerCheckFunction();" type="button">중복체크</button></td>
				</tr>
				<tr>
					<td style="width: 110px;"><h5>비밀번호</h5></td>
					<td><input class="form-control" placeholder="비밀번호" type="password" id="pw" name="pw" maxLength="16"></td>
				</tr>
				<tr>
					<td style="width: 110px;"><h5>비밀번호 확인</h5></td>
					<td>
						<input class="form-control" placeholder="비밀번호 확인" type="password" onkeyup="passwordCheckFunction();" id="pw2" name="pw2" maxLength="16">
						<font id="checkPw" size = "2"></font>
					</td>
				</tr>
				<tr>
					<td style="width: 110px;"><h5>이름</h5></td>
					<td><input class="form-control" placeholder="이름" type="text" id="name" name="name" maxLength="15"></td>
				</tr>
				<tr>
					<td style="width: 110px;"><h5>성별</h5></td>
					<td>
						<div class="form-group" style="text-align: center; margin: 0 auto;">
							<div class="btn-group" data-toggle="buttons">
							<label class="btn btn-primary active" style="margin: 30 auto;">
								<input type="radio" id="gender" name="gender" autocomplete="off" value="m" checked>남자
							</label>
							<label class="btn btn-primary">
								<input type="radio" id="gender" name="gender" autocomplete="off" value="f">여자
							</label>
							</div>
						</div>
					</td>
				</tr>
				<tr>
					<td style="width: 110px;"><h5>이메일</h5></td>
					<td><input class="form-control" placeholder="예시) xxx@naver.com" type="email" id="email" name="email" maxLength="50"></td>
				</tr>
				<tr>
					<td style="width: 110px;"><h5>생년월일</h5></td>
					<td>
					<input class="form-control" placeholder="예시) 950525" type="text" id="birth" name="birth" maxLength="50">
					</td>
				</tr>
				<tr>
					<td style="width: 110px;"><h5>전화번호</h5></td>
					<td><input class="form-control" placeholder="-없이 11자리 숫자만 입력해 주세요." type="text" id="tel" name="tel" maxLength="50"></td>
				</tr>
				<tr>
					<td style="width: 110px;"><h5>주소</h5></td>
					<td><input class="form-control" type="text" id="address" name="address" maxLength="50"></td>
				</tr>
				<tr>
					<td style="text-align: left" colspan="3"><input class="btn btn-primary pull-right" type="submit" value="회원가입"></td>
				</tr>
				</tbody>
			</table>
		</form>
	</div>
	<div></div>
	<div></div>
	
	<script type="text/javascript">

	function registerCheckFunction() {
		
		$.ajax({
			type: 'POST',
			url: '/goguma/user/useridcheck.do',
			data: 'id=' + $('#id').val(),	
			success: function(result){
				if (result == '1'){
					$('#checkId').text('사용할 수 없는 아이디입니다.');
					$('#checkId').attr('color', 'red')
				} else {
					$('#checkId').html('사용할 수 있는 아이디입니다.');
					$('#checkId').attr('color', 'green')
				}
			}
		});
		
	}
	
	function passwordCheckFunction() {
		
			var password = document.getElementById('pw');
			var passwordConfirm = document.getElementById('pw2');

			if(password.value == passwordConfirm.value){
				$('#checkPw').text('비밀번호 일치');
				$('#checkPw').attr('color', 'cornflowerblue')
			}else{
				$('#checkPw').text('비밀번호 불일치');
				$('#checkPw').attr('color', 'red')
			}
		
	}
	
	</script>
			
	</main>
</body>
</html>




