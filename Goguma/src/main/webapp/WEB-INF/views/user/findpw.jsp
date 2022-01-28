<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
  <head>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>

    <title>비밀번호 찾기</title>
    <%@ include file="/WEB-INF/views/inc/asset.jsp" %>
    <style>
	.panel {
		width: 400px;
		margin: 0 auto; 
		margin-top: 50px;
		text-align: center;
	}
    .card {
        margin: 0 auto; 
        float: none; 
        margin-bottom: 10px; 
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
    
    .card-title {
        margin: 0 auto; 
        float: none; 
        margin-bottom: 10px; 
        font-size: 30px;
        font: italic;
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
    
    #guma {
    	width: 30px;
    	height: 30px;
    }
    </style>
  </head>
		<%@include file="/WEB-INF/views/inc/header.jsp" %>

  <body cellpadding="0" cellspacing="0" marginleft="0" margintop="0" width="100%" height="100%" align="center">


			<div id=ttitle><img id="guma" src="/goguma/asset/img/default image.jpg">  비밀번호 찾기  <img id="guma" src="/goguma/asset/img/default image.jpg"></div>
			
			<div id=subtitle></div>

				<div class="panel panel-default">

	<div class="card align-middle" style="width:25rem;">
		<div class="card-title" style="margin-top:30px;">

			<h2 class="card-title" style="color:#f58b34;"> </h2>
		</div>
        
		<div class="card-body">
      <form action="/goguma/user/findpwok.do" class="form-signin" method="POST">
      <div id="subject">아이디<input type="text" name="id" id="id" class="form-control" placeholder="아이디" required autofocus><br></div>
        <div id="subject">이름<input type="text" name="name" id="name" class="form-control" placeholder="이름" required><BR></div>
        <div id="subject">E-mail<input type="email" name="email" id="email" class="form-control" placeholder="예) xxx@naver.com" required><br></div>
         
        	<p class="check" id="check">${check}</p><br/>
        <button id="btn-Yes" class="btn btn-lg btn-primary btn-block" type="submit">찾기</button>
      
      </form>
      

        
		</div>

        </div>

	</div>
   

   
  </body>
  <script type="text/javascript">
		
  		
  
  		$("#name").focusout(function(){
  			
	     if($('#name').val() == ""){
	   		$('#check').text('이름을 입력해주세요.');
	   	  	$('#check').css('color', 'red');
	   
	     }else{
	    	 $('#check').hide();
	     }
	     });
	     
  		$("#email").focusout(function(){
	     if($('#email').val() == ""){
	   		$('#check').text('이메일을 입력해주세요');
	   	  	$('#check').css('color', 'red');
	     }else{
	    	 $('#check').hide();
	     }
	     });
  
  </script>
</html>
