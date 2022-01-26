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
	.btn.important{
		border: 1px solid #9B59B6;
	    background: #9B59B6;
	    color: #fff;
	}
	#tbl{
		margin-top:100px;
		width: 80%;
	}
	#tbl td:nth-child(1) {
		width:5%; 
		vertical-align: middle;
	}
	#tbl td:nth-child(2) {
		width:70%; 
	}
	#tbl td:nth-child(3) {
		width: 10%; 
		vertical-align: middle;
	}
	#tbl td:nth-child(4) {
		width: 25%; 
		vertical-align: middle;
	}
</style>
</head>
<body>
			<%@include file="/WEB-INF/views/inc/header.jsp"%>
<div class="container">
		<main class="main">
			<%@ include file="/WEB-INF/views/inc/user/mynav.jsp"%>
			<section class="community">
				<div class="grid-container">
					<div class="title">
						<h2>판매 내역</h2>
					</div>
					<table class="table" id ="tbl">
						<tr>
							<th>No.</th>
							<th>내용</th>
							<th>작성자</th>
							<th>날짜</th>
							<th>리뷰작성</th>
						</tr>
						<c:forEach items="${list}" var="dto" >
						<c:if test="${dto.deal_seq!=null}">
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
									<input type="button" value="리뷰 작성" class="btn important" onclick="location.href='/goguma/profile/salesreview.do?selid=${dto.selid}&deal_seq=${dto.deal_seq}'">
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