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
	
</head>
<body>
	<div class="container">
		<form method="post" action="./userRegister">
			<table class="table" style="text-align: center; border:1px solid #ddd">
				<thead>
					<tr>
						<th colspan="3"><h4>회원 가입</h4></th>
					</tr>
				</thead>
				<tbody>
				<tr>
					<td style="width: 110px;"><h5>아이디</h5></td>
					<td><input class="form-control" type="text" name="userID" id="userID" maxLength="16"></td>
					<td style="width: 110px;"><button class="btn btn-primary" onclick="registerCheckFunction();" type="button">중복체크</button></td>
				</tr>
				<tr>
					<td style="width: 110px;"><h5>비밀번호</h5></td>
					<td><input class="form-control" type="password" id="userPassword1" name="userPassword1" maxLength="16"></td>
				</tr>
				<tr>
					<td style="width: 110px;"><h5>비밀번호확인</h5></td>
					<td><input class="form-control" type="password" id="userPassword2" name="userPassword2" maxLength="16"></td>
				</tr>
				<tr>
					<td style="width: 110px;"><h5>이름</h5></td>
					<td><input class="form-control" type="text" id="userName" name="userName" maxLength="15"></td>
				</tr>
				<tr>
					<td style="width: 110px;"><h5>성별</h5></td>
					<td>
						<div class="form-group" style="text-align: center; margin: 0 auto;">
							<label class="btn btn-primary active" style="margin: 30 auto;">
								<input type="radio" name="Gender" autocomplete="off" value="남자" checked>남자
							</label>
							<label class="btn btn-primary">
								<input type="radio" name="Gender" autocomplete="off" value="여자">여자
							</label>
						</div>
					</td>
				</tr>
				<tr>
					<td style="width: 110px;"><h5>이메일</h5></td>
					<td><input class="form-control" type="email" id="userEmail" name="userEmail" maxLength="50"></td>
				</tr>
				<tr>
					<td style="width: 110px;"><h5>생년월일</h5></td>
					<td><input class="form-control" type="text" id="userEmail" name="userEmail" maxLength="50"></td>
				</tr>
				<tr>
					<td style="text-align: left" colspan="3"><input class="btn btn-primary pull-right" type="submit" value="회원가입"></td>
				</tr>
				</tbody>
			</table>
		</form>
	</div>
</body>
</html>




