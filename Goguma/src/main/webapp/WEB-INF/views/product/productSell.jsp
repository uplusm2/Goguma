<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ProductSell</title>
<%@ include file="/WEB-INF/views/inc/asset.jsp" %>
<style>
#main-hr{
	margin-left: 50px;
}
.product-name{
	margin-left: 50px;
	margin-top: 15px;
	padding: 6px 10px;
	width: 1020px;
}

.product-price{
	margin-left: 50px;
	margin-top: 10px;
	padding: 6px 10px;
	width: 300px;
}
.container{
	margin-top: 15px;
	margin-left: 40px;
}
select{
	margin-right: 20px;
	border: 2px solid;
	border-radius: 5px;
	border-color: gray;
}
#product-img{
	margin-left: 50px;
	margin-top: 20px;
	width: 400px;
	height: 300px;
}
.box1{
	overflow: hidden;
}
#img-box{
	float: left;
}
#text-box{

	margin-top: 20px;
	float: left;
}
.product-text{
	margin-left: 20px;
	width: 600px;
	height: 300px;
}
#img-box2{
	background-color: #ffffff;
        opacity: 0.3;
	height: 60px; 
	width:400px; 
	position: absolute;
	margin-left: 50px;
	margin-top: 260px;
}

#next-btn{
	margin-left: 80px;
}

#prev-btn{
	margin-left: 50px;
}

#registration-btn{
	margin-left: 80px;
}
#commit-btn{
	margin-left: 545px;
}

</style>
</head>
<body>
<!-- main.jsp -->
	<main class="main">
	
		<%@include file="/WEB-INF/views/inc/header.jsp" %>
		<section>
			<div class="title">
				<h2>판매확정</h2>
			</div>
			<hr id="main-hr" width="1100px">
			<form method="POST" action="/goguma/product/productSellok.do?seq=${dto.seq}">
				<h5>구매자를 선택해주세요</h5>
				<table class="table">
					<tr>
						<th colspan="2">유저id</th>
						<th>입찰가격</th>
						<th>입찰일</th>
					</tr>
					
						<c:forEach items="${bidlist}" var="bdto">
						<tr>
						<td>
							<input type="radio" name="bid_seq" value="${bdto.bid_seq}">
						</td>
						<td>${bdto.id} </td>
						<td>${bdto.price}원</td>
						<td>${bdto.time}</td>
						</tr>
						</c:forEach>
					
				</table>
				
				<div class="button">
					<input type="submit" value="등록" class = "btn primary-btn">
				</div>
			</form>
	
		</section>
		
	</main>
	<%@include file="/WEB-INF/views/inc/footer.jsp" %>
	<script>
  
        
    </script>
</body>
</html>