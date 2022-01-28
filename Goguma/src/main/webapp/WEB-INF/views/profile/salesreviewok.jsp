<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script>
	if(${check}!=1){
			alert("리뷰 등록을 실패하였습니다.");
			window.history.back();
		}else{
			location.href = "/goguma/profile/mypage.do";
		}
	</script>
</body>
</html>