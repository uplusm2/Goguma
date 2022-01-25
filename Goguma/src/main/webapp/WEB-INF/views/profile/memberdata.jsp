<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="/WEB-INF/views/inc/asset.jsp" %>
</head>
<style>
	.btn.important{
		border: 1px solid #9B59B6;
	    background: #9B59B6;
	    color: #fff;
	    margin-top:20px;
	    margin-left: 435px;
	}
	.grid-container{
		width:970px;
		height:500px;
		margin-top:5%;
		display:grid;
		grid-template-columns:1fr 1fr 1fr 1fr 1fr 1fr 1fr 1fr;
		grid-template-rows: 1fr 1fr 1fr 1fr 1fr 1fr 1fr 1fr;
	}
	.grid-container div{
		color : #444;
	}
	
	.grid-container div:nth-child(5n+2) div {
		margin-top:17px;
		background-color:#EEECEC;
		text-align: center;
	}
	.grid-container div:nth-child(5n+3){
		grid-column-start :3;
		grid-column-end:7;
	}
	.grid-container div:nth-child(5n+3) div{
		margin-top:17px;
		color:#EEECEC;
		text-align: center;
	}
	/* 5 개씩 증가 */
</style>
<body>
	<div class="container"
			style="width: 1200px; position: absolute; top: 0px; left: 18vw;">
			<main class="main">
				<%@include file="/WEB-INF/views/inc/header.jsp"%>
				<%@ include file="/WEB-INF/views/inc/user/mynav.jsp"%>
				<section class="content">
					<h2>${dto.id}   님의 회원 정보 입니다.</h2>
					<div class="grid-container">
	   <!-- dto.setId(rs.getString("id"));
			dto.setName(rs.getString("name"));
			dto.setNickname(rs.getString("nickname"));
			dto.setGender(rs.getString("gender"));
			dto.setTel(rs.getString("tel"));
			dto.setEmail(rs.getString("email"));
			dto.setAddress(rs.getString("address"));
			dto.setBirth(rs.getString("birth")); 
	    -->
						<div></div>
						<div>
							<div>ID</div>
						</div>
						<div>
							<div><label style="color:#777">${dto.id}</label></div>
						</div>
						<div></div> 
						<div></div> 
						
						<div></div>
						<div>
							<div>이름</div>
						</div>
						<div>
							<div><label style="color:#777">${dto.name}</label></div>
						</div>
						<div></div> 
						<div></div> 
						
						<div></div>
						<div>
							<div>닉네임</div>
						</div>
						<div>
							<div><label style="color:#777">${dto.nickname}</label></div>
						</div>
						<div></div> 
						<div></div> 
						
						<div></div>
						<div>
							<div>성별</div>
						</div>
						<div>
							<div><label style="color:#777">${dto.gender}</label></div>
						</div>
						<div></div> 
						<div></div> 
						
						<div></div>
						<div>
							<div>전화번호</div>
						</div>
						<div>
							<div><label style="color:#777">${dto.tel}</label></div>
						</div>
						<div></div> 
						<div></div> 
						
						<div></div>
						<div>
							<div>이메일</div>
						</div>
						<div>
							<div><label style="color:#777">${dto.email}</label></div>
						</div>
						<div></div> 
						<div></div> 
						
						<div></div>
						<div>
							<div>주소</div>
						</div>
						<div>
							<div><label style="color:#777">${dto.address}</label></div>
						</div>
						<div></div> 
						<div></div> 
						
						<div></div>
						<div>
							<div>생년월일</div>
						</div>
						<div>
							<div><label style="color:#777">${dto.birth}</label></div>
						</div>
						<div></div> 
						<div></div> 
						
						
					</div>
					<input type="button" value="회원 정보 수정" class="btn important" 
					onclick="location.href='/goguma'">
					
				</section>
			</main>
		</div>
</body>
</html>