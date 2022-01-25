<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import = "com.test.main.user.userMgr"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>Code</title>
<%@ include file="/WEB-INF/views/inc/asset.jsp" %>
<style>

</style>
</head>
<body>

	<main class="main">
		<%@include file="/WEB-INF/views/inc/header.jsp" %>
		<section class="content">
		
		<%
    		String userid = (String)request.getAttribute("userid");
		%>
		
		<table width="750px" align=center border="0"
       style="color: black; font-size: 30px;">
       <tr align=center>
        <td style="height: 70px">* 회원님의 아이디를 찾았습니다! *</td>
       </tr>
       <tr align=center>
        <td style="font-size: 20px">${userid}</td>
       </tr>
      </table>


			
		</section>
		<%@include file="/WEB-INF/views/inc/footer.jsp" %>
	</main>
	
	
<script>

</script>
	
</body>
</html>







