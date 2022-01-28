<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ProductRegistration</title>
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
				<h2>입찰하기</h2>
			</div>
			<hr id="main-hr" width="1100px">

			<form method="POST" action="/goguma/product/bidaddok.do?seq=${dto.seq}" style="width:fit-content;
        margin:auto; overflow: hidden;">
        <div><input type="text" name="price" placeholder="입찰가격을 입력하세요." class="form-text" required></div>
				
				
				<div class="button" style="float: right; margin-top: 15px">
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