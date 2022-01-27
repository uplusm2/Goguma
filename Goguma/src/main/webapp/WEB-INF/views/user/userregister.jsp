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
	
	.container {
		margin-top: 50px;
	}
	
	h5 {
		margin-top: 10px;
		font-size: 15px;
	}
	
	#sido {
		font-size: 15px;
	}
	
	#sgg {
		font-size: 15px;
	}
	
	#emd {
		font-size: 15px;
	}
	
	h4 {
		text-align: center;
		font-size: 30px;
	}
	
	#guma {
    	width: 30px;
    	height: 30px;
    	margin-left: 10px;
    	margin-right: 10px;
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
						<th id="tttitle" colspan="3" ><h4><img id="guma" src="/goguma/asset/img/default image.jpg">회원 가입<img id="guma" src="/goguma/asset/img/default image.jpg"></h4></th>
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
					<td></td>
				</tr>
				<tr>
					<td style="width: 110px;"><h5>비밀번호 확인</h5></td>
					<td>
						<input class="form-control" placeholder="비밀번호 확인" type="password" onkeyup="passwordCheckFunction();" id="pw2" name="pw2" maxLength="16">
						<font id="checkPw" size = "2"></font>
					</td>
					<td></td>
				</tr>
				<tr>
					<td style="width: 110px;"><h5>이름</h5></td>
					<td><input class="form-control" placeholder="이름" type="text" id="name" name="name" maxLength="15"></td>
					<td></td>
				</tr>
					<tr>
							<td style="width: 110px;"><h5>성별</h5></td>
							<td>
								<div class="form-group"
									style="text-align: center; margin: 0 auto;">

									<input type="radio" id="gender" name="gender" value="m">남자
									<input type="radio" id="gender" name="gender" value="f">여자
									<td></td>

				<tr>
					<td style="width: 110px;"><h5>이메일</h5></td>
					<td><input class="form-control" placeholder="예시) xxx@naver.com" type="email" id="email" name="email" maxLength="50"></td>
					<td></td>
				</tr>
				<tr>
					<td style="width: 110px;"><h5>생년월일</h5></td>
					<td>
					<input class="form-control" placeholder="예시) 950525" type="text" id="birth" name="birth" maxLength="50">
					</td>
					<td></td>
				</tr>
				<tr>
					<td style="width: 110px;"><h5>전화번호</h5></td>
					<td><input class="form-control" placeholder="-없이 11자리 숫자만 입력해 주세요." type="text" id="tel" name="tel" maxLength="50"></td>
					<td></td>
				</tr>
				<tr>
					<td style="width: 110px;"><h5>주소</h5></td>
					<td><select id="sido" name="sido">
		                <option selected="selected">시도</option>
		                <option value="서울">서울</option>
		                <option value="부산">부산</option>
		                <option value="대구">대구</option>
		                <option value="대전">대전</option>
		                <option value="경기">경기</option>
		                <option value="세종">세종</option>
		                <option value="울산">울산</option>
		              </select>  
		              <select id="sgg" name="sgg">
		                <option selected="selected">시군구</option>
		                <option value="송파구">송파구</option>
		                <option value="강서구">강서구</option>
		                <option value="강북구">강북구</option>
		                <option value="서대문구">서대문구</option>
		                <option value="광진구">광진구</option>
		                <option value="마포구">마포구</option>
		                <option value="동작구">동작구</option>
		                <option value="종로구">종로구</option>
		              </select>
		              <select id="emd" name="emd">
		                <option selected="selected">읍면동</option>
		                <option value="1">석촌동</option>
		                <option value="2">석촌동</option>
		                <option value="3">성내동</option>
		                <option value="4">삼전동</option>
		                <option value="5">화곡동</option>
		                <option value="6">오쇠동</option>
		                <option value="7">등촌동</option>
		                <option value="8">마곡동</option>
		                <option value="9">우장산동</option>
		                <option value="10">개화동</option>
		                <option value="11">방화동</option>
		              </select>
		             </td>
		             <td></td>
				</tr>
					<tr>
						<td></td>
						<td></td>
						<td style="text-align: center" colspan="3"><input class="btn btn-primary" type="submit" value="회원가입"></td>

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




