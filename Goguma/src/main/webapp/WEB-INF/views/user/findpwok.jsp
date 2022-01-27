<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
  <head>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>

    <title>아이디 찾기</title>
    <%@ include file="/WEB-INF/views/inc/asset.jsp" %>
    <style>
	.panel {
		width: 400px;
		margin: 0 auto; 
		margin-top: 50px;
		text-align: center;
	}
    .card {
        margin: 0 auto; /* Added */
        float: none; /* Added */
        margin-bottom: 10px; /* Added */
	}

    #btn-Yes{
        background-color: #e4932b;
        border: none;
    }
	
	.form-signin .form-control {
  		position: relative;
  		height: auto;
  		-webkit-box-sizing: border-box;
     	-moz-box-sizing: border-box;
        	 box-sizing: border-box;
  		padding: 10px;
  		font-size: 16px;
	}

    .text2{
    	color : blue;
    }
    
    #ttitle {
    	align: center;
    	margin-top: 100px;
    	font-size: 35px;
    }
    
    #subject {
    	text-align: left;
    	margin-left: 7px;
    }
    
    </style>
  </head>
		<%@include file="/WEB-INF/views/inc/header.jsp" %>


        <%
    		String id = (String)request.getAttribute("id");
       	 	String name = (String)request.getAttribute("name");
        	String email = (String)request.getAttribute("email");
		%>
  <body cellpadding="0" cellspacing="0" marginleft="0" margintop="0" width="100%" height="100%" align="center">



		<div id=ttitle>***  비밀번호 재설정  ***</div>
				<div class="panel panel-default">


	<div class="card align-middle" style="width:25rem;">
		<div class="card-title" style="margin-top:30px;">
            	
			<h2 class="card-title" style="color:#f58b34;"> </h2>
		</div>
        
		<div class="card-body">
      <form action="/goguma/user/repw.do" class="form-signin" method="POST">
        <input type="password" name="pw" id="pw" class="form-control" placeholder="새 비밀번호" required autofocus><BR>
        <input type="password" name="pw2" id="pw2" onkeyup="passwordCheckFunction();" class="form-control" placeholder="새 비밀번호 확인" required><br>
        	<font id="checkPw" size = "2"></font>
        	<p class="check" id="check">${check}</p><br/>
        <button id="btn-Yes" class="btn btn-lg btn-primary btn-block" type="submit">찾기</button>
		

			<input id="id" name="id" type="hidden" value="<%=id%>">
			<input id="email" name="email" type="hidden" value="<%=email%>">
			<input id="name" name="name" type="hidden" value="<%=name%>">

      
      </form>
        
		</div>

        </div>

	</div>
   

   
  </body>
  
  <script>
		
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
</html>