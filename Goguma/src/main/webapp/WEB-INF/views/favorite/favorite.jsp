<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Code</title>
<%@ include file="/WEB-INF/views/inc/asset.jsp" %>
<style>
	
	caption{
		caption-side: center;
		text-align : center;
	}
	table{
		border : none;
		border-top : 1px solid #9B59B6;
		border-bottom : 1px solid #9B59B6;
		width : 800px;
		padding-top : 100px;
	}
	table, th, td{
		margin : 0 auto;
	}
	.favorite{
		margin : 0 auto;
	}
	
	th{
		text-align : center;
		height : 30px;
	
	}
	#name{
		width : 400px;
	
	}
	#selid{
		width : 200px;
	}
	#price{
		width : 150px;
	}
	#ing{
		width : 150px;
	}
	#btn{
		width : 50px;
		height : 30px;
		vertical-align : middel;
	}
	.bi{
		color : black;
	}
	td{
		height : 50px;
		text-align : center;
		border-top : 0.1px solid #aaaaaa;
		border-opacity : 10px;
	}
	#td-name{
		text-align : left;
		padding-left : 10px;
	}
	
</style>
</head>
<body>

	<main class="main">
		<%@include file="/WEB-INF/views/inc/header.jsp" %>
		<section class="favorite">
			
			<form method="GET" action="/goguma/favorite/favoritedel.do">
				<table>
				<caption class="bi bi-basket2">찜목록</caption>
					<thead>
						<tr>
							<th id = "name">물품이름</th>
							<th id = "selid">판매자아이디</th>
							<th id = "price">가격</th>
							<th id = "ing">판매상태</th>
							<th id = "btnbox">판매</th>
						</tr>
					</thead>
					<tbody>
					<c:forEach items="${favorite}" var="dto">
						<tr>
							<td id = "td-name">${dto.name}</td>
							<td>${dto.id}</td>
							<td>${dto.price}</td>
							<td>
								<c:if test="${dto.is_auction eq 'y'}">
									<span>판매완료</span>
								</c:if>
								<c:if test="${dto.is_auction eq 'n'}">
									<span>판매중</span>
								</c:if>
							</td>
							<td><input type="button" value = "판매" class = "btn btn-primary" onclick = "location.href='/goguma/favorite/favoritelistdel.do?seq=${dto.favorite_seq}'"></td>
						</tr>
					</c:forEach>
					</tbody>
				</table>
			</form>
			<input type="button" value = "돌아가기" onclick = "location.href = '/goguma/favorite/test.do'">
		</section>
		<%@include file="/WEB-INF/views/inc/footer.jsp" %>
	</main>
	
	<script>
	
		
	</script>
</body>
</html>

