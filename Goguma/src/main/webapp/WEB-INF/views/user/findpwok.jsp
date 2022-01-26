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
		margin-top: 150px;
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
    
    #blank {
    	font-size: 0px;
    
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

				<div class="panel panel-default">

	<div class="card align-middle" style="width:25rem;">
		<div class="card-title" style="margin-top:30px;">
            	새 비밀번호 입력 
			<h2 class="card-title" style="color:#f58b34;"> </h2>
		</div>
        
		<div class="card-body">
      <form action="/goguma/user/repw.do" class="form-signin" method="POST">
        <input type="password" name="pw" id="pw" class="form-control" placeholder="새 비밀번호" required autofocus><BR>
        <input type="password" name="pw2" id="pw2" class="form-control" placeholder="새 비밀번호 확인" required><br>
        	<p class="check" id="check">${check}</p><br/>
        <button id="btn-Yes" class="btn btn-lg btn-primary btn-block" type="submit">찾기</button>
		
		<div id = "blank">
			<div id = "id" name = "id">${id}</div>
			<div id = "name" name = "name">${name}</div>
			<div id = "email" name = "email">${email}</div>
      	</div>
      
      </form>
        
		</div>

        </div>

	</div>
   
   		<%@include file="/WEB-INF/views/inc/footer.jsp" %>
   
  </body>
  <script type="text/javascript">
		
  		
  
  </script>
</html>