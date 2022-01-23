<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Code</title>
<%@ include file="/WEB-INF/views/inc/asset.jsp"%>
<style>
	
</style>
</head>
<body>
	<script>
		if(${check}!=1){
			alert("프로필 정보 변경을 실패하였습니다.");
			window.history.back();
		}else{
			location.href = "/goguma/profile/mypage.do";
		}
	</script>
</body>
</html>







