<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="/WEB-INF/views/inc/asset.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.grid-container{
		padding-left:50px;
		padding-right:150px;
		width:970px;
		height:500px;
		margin-top:5%;
		display:grid;
		grid-template-columns:1fr;
		grid-template-rows: 1fr;
	}
	.btn.important{
		border: 1px solid #9B59B6;
	    background: #9B59B6;
	    color: #fff;
	}
</style>
</head>
<body>
<div class="container"
		style="width: 1200px; position: absolute; top: 0px; left: 18vw;">
		<main class="main">
			<%@include file="/WEB-INF/views/inc/header.jsp"%>
			<%@ include file="/WEB-INF/views/inc/user/mynav.jsp"%>
			<section class="content">
				<div class="grid-container">
					<table class="table">
						<tr>
							<th>No.</th>
							<th>내용</th>
							<th>작성자</th>
							<th>날짜</th>
							<th>리뷰작성</th>
						</tr>
						<c:forEach items="${list}" var="dto" >
						<c:if test="${dto.DEAL_SEQ!=null}">
						<tr>
							<td>
								${dto.rnum} 
														
							</td>
							<td>
								${dto.contetnt}
								
							</td>
							<td>
								${dto.nickname}
								
							</td>
							<td>
								${dto.regdate}
								
							</td>
							<td>
								<c:if test="${dto.type==null}">
									<input type="button" value="리뷰 작성" class="btn important" >
								</c:if>
								<c:if test="${dto.type!=null}">
									<input type="button" value="작성 완료" class="btn" disabled>	
								</c:if>		
							</td>
						</tr>
						</c:if>
						</c:forEach>
					</table>
					<div class="pagebar">${pagebar}</div>
				</div>
			</section>
		</main>
	</div>
</body>
</html>