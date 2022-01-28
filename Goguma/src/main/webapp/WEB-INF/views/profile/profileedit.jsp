<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Code</title>
<%@ include file="/WEB-INF/views/inc/asset.jsp"%>
<style>
	.btn.important{
		border: 1px solid #9B59B6;
	    background: #9B59B6;
	    color: #fff;
	}
	.content h2{
		margin-left:300px;
	}
	.grid-container{
		margin-top:5%;
		display:grid;
		grid-template-columns: 15% 17% 20% 24% 24%;
		grid-template-rows: 150px 50px 150px;
	}
	.grid-container div:nth-child(1) {
		text-align: center; 
		grid-column-start :1;
		grid-column-end:3;
	}
	.grid-container div:nth-child(2) {
		margin-top : 15%;
		text-align: center; 
		grid-column-start :3;
		grid-column-end:4;
	}
	.grid-container div:nth-child(3) {
		grid-column-start :4;
		grid-column-end:6;
	}
	.grid-container div:nth-child(3) div:nth-child(1){
		margin-top : 5.7%;
		margin-bottom:0;
		margin-left:3%;
	}
	.grid-container div:nth-child(3) div:nth-child(2){
		margin-top : 6%;
		margin-bottom:0;
		margin-left:3%;
	}
	.grid-container div:nth-child(4) {
		margin-left:0%;
		grid-column-start :1;
		grid-column-end:3;
	}
	.grid-container div:nth-child(5) {
		margin-left:8%;
		grid-column-start :3;
		grid-column-end:6;
	}
	.grid-container div:nth-child(6) {
		margin-top : 5%;
		text-align: center;
	}
	.grid-container div:nth-child(7) {
		margin-left:15%;
		margin-top : 5%;
		text-align: center;
		
	}
	.grid-container div:nth-child(8) {
		margin-left:20%;
		margin-top : 50%;
		text-align: center;
		
	}
	.filebox label {
	  display: inline-block;
	  padding: .5em .75em;
	  color: #fff;
	  font-size: inherit;
	  line-height: normal;
	  vertical-align: middle;
	  background-color: #9B59B6;
	  cursor: pointer;
	  border: 1px solid #4cae4c;
	  border-radius: .25em;
	  -webkit-transition: background-color 0.2s;
	  transition: background-color 0.2s;
	}
	
	.filebox label:hover {
	  background-color: #9B59B6;
	}
	
	.filebox label:active {
	  background-color: #9B59B6;
	}
	
	.filebox input[type="file"] {
	  position: absolute;
	  width: 1px;
	  height: 1px;
	  padding: 0;
	  margin: -1px;
	  overflow: hidden;
	  clip: rect(0, 0, 0, 0);
	  border: 0;
	}
	
</style>
</head>
<body>
	<!-- main.jsp -->
			<%@include file="/WEB-INF/views/inc/header.jsp"%>
	<div class="container">
		<main class="main">
			<%@ include file="/WEB-INF/views/inc/user/mynav.jsp"%>
			<section class="content">
				<div class="title">
					<h2>${userProfileData.id} 님의 프로필 입니다.</h2>
				</div>
					<form method="POST" action="/goguma/profile/profileeditok.do"
						 enctype="multipart/form-data">
						<div class="grid-container">
							<div>
								<div id="image_container" ><img src="/goguma/files/profile/${userProfileData.path}" id="profilImg" style="width: 130px"></div>
							</div>
							
							<div>
								<div style="background-color:#EEECEC">NickName</div>
								<div style="background-color:#EEECEC">info </div>
							</div>
							
							<div>
								<div> <input type="text" class="text" placeholder="닉네임을 입력하세요." name="nickName"></div>
								<div> <input type="text" class="text" placeholder="소개글을 입력하세요." name="intro"></div>
							</div>
							
							<div><div class="filebox">
								  <label for="ex_file">업로드</label>
								  <input type="file" id="ex_file" name="pathDir" onchange="setThumbnail(event);" multiple>
								</div>
							</div>
							<div></div>
							<div></div>
							<div></div>
							<div>
								<input type="submit" value="정보 수정" class="btn important">
							</div>
						</div>
					</form>
				</section>
			</main>
		</div>
		<%@include file="/WEB-INF/views/inc/footer.jsp" %>
	<script>
	
	function setThumbnail(event){
		var reader = new FileReader();
		
		reader.onload = function(event){
			$("#profilImg").attr("src", event.target.result);
		};
		reader.readAsDataURL(event.target.files[0]);
	}
	
	</script>
</body>
</html>







