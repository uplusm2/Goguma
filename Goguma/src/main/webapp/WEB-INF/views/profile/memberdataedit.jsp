<%@page import="com.test.main.profile.ProfileDAO"%>
<%@page import="com.test.main.user.UserDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String id = (String) session.getAttribute("id");

UserDTO dto = new UserDTO();

ProfileDAO dao = new ProfileDAO();

dto = dao.getAllUserData(id);

request.setAttribute("dto", dto);
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/custom.css">
<title>회원 정보 수정</title>
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="js/bootstrap.js"></script>
<%@ include file="/WEB-INF/views/inc/asset.jsp"%>
<style>
.table {
	width: 50%;
	margin: auto;
}

form {
	width: 1150px;
	height:
	padding: 0px;
}
</style>


</head>
<body>
	
			<%@include file="/WEB-INF/views/inc/header.jsp"%>
	<div class="container">
		<main class="main">
			<%@ include file="/WEB-INF/views/inc/user/mynav.jsp"%>
			<div class="title">
				<h2>문의 내역</h2>
			</div>
			<form name="joinform" method="POST"
				action="/goguma/profile/memberdataeditok.do">
				<table class="table"
					style="text-align: center; border: 1px solid #ddd">
					<thead>
						<tr>
							<th colspan="3"><h4>회원 정보 변경</h4></th>
						</tr>
					</thead>
					<tbody><!--pw  nickname gender email  address-->
						<tr>
							<td style="width: 110px;"><h5>아이디</h5></td>
							<td><input class="form-control" placeholder="아이디"
								type="text" name="id" id="id" maxLength="16" value="${id}"
								disabled></td>
						</tr>
						<tr>
							<td style="width: 110px;"><h5>새 비밀번호</h5></td>
							<td><input class="form-control" placeholder="비밀번호"
								type="password" id="pw"
								name="pw" maxLength="16"></td>
						</tr>
						<tr>
							<td style="width: 110px;"><h5>비밀번호 확인</h5></td>
							<td><input class="form-control" placeholder="비밀번호 확인"
								type="password" onkeyup="passwordCheckFunction();" id="pw2"
								name="pw2" maxLength="16"> <font id="checkPw" size="2"></font>
							</td>
						</tr>
						<tr>
							<td style="width: 110px;"><h5>이름</h5></td>
							<td><input class="form-control" placeholder="이름" value="${dto.name}" type="text"
								id="name" name="name" maxLength="15"disabled></td>
						</tr>
						<tr>
							<td style="width: 110px;"><h5>닉네임</h5></td>
							<td><input class="form-control" placeholder="닉네임"
								type="text" id="nickname" name="nickname" maxLength="15"></td>
						<tr>
							<td style="width: 110px;"><h5>성별</h5></td>
							<td>
								<div class="form-group"
									style="text-align: center; margin: 0 auto;">

									<input type="radio" id="gender" name="gender" value="m">남자
									<input type="radio" id="gender" name="gender" value="f">여자

								</div>
							</td>
						</tr>
						<tr>
							<td style="width: 110px;"><h5>이메일</h5></td>
							<td><input class="form-control"
								placeholder="예시) xxx@naver.com" type="email" id="email"
								name="email" maxLength="50"></td>
						</tr>
						<tr>
							<td style="width: 110px;"><h5>생년월일</h5></td>
							<td><input class="form-control" placeholder="예시) 950525"
								type="text" id="birth" value="${dto.birth}" name="birth" maxLength="50" disabled></td>
						</tr>
						<tr>
							<td style="width: 110px;"><h5>전화번호</h5></td>
							<td><input class="form-control"
								placeholder="-없이 11자리 숫자만 입력해 주세요." type="text" id="tel"
								name="tel" value="${dto.tel}" maxLength="50" disabled></td>
						</tr>
						<tr>
							<td style="width: 110px;"><h5>주소</h5></td>
							<td><select id="sido" name="sido">
				                <option value="서울" selected="selected">서울</option>
				                <option value="부산">부산</option>
				                <option value="대구">대구</option>
				                <option value="대전">대전</option>
				              </select>  
				              <select id="sgg" name="sgg">
				                <option value="송파구" selected="selected">송파구</option>
				                <option value="강서구">강서구</option>
				                <option value="강북구">강북구</option>
				                <option value="서대문구">서대문구</option>
				                <option value="광진구">광진구</option>
				                <option value="마포구">마포구</option>
				                <option value="동작구">동작구</option>
				                <option value="종로구">종로구</option>
				              </select>
				              <select id="emd" name="emd">
				                <option value="1" selected="selected">풍납동</option>
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
						</tr>
						<tr>
							<td style="text-align: left" colspan="3"><input
								class="btn btn-primary pull-right" type="submit" value="정보 수정"></td>
						</tr>
					</tbody>
				</table>
			</form>
		</main>
	</div>
	<div></div>
	<div></div>
<%@include file="/WEB-INF/views/inc/footer.jsp" %>
	<script type="text/javascript">
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

</body>
</html>




