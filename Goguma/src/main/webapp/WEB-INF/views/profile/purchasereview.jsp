<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Code</title>
<%@ include file="/WEB-INF/views/inc/asset.jsp"%>
<!-- window.top.location.href 아이프레임에서 부모창 변경시 -->
<style>
	.fa.fa-star.checked {
	  color: orange;
	}
	.fa.fa-star{
		color:#7777;
	}
	.btn.important{
		border: 1px solid #9B59B6;
	    background: #9B59B6;
	    color: #fff;
	}
	.grid-container{
		width:970px;
		height:500px;
		margin-top:2%;
		display:grid;
		grid-template-columns:1fr 1fr 1fr 1fr 1fr;
		grid-template-rows: 1fr 1fr 1fr 1fr 1fr ;
	}
	.content h2{
		margin-left:300px;
	}
	.grid-container div:nth-child(1) {
		padding-top:15px;
		text-align: center;
		vertical-align: middle;
		grid-column-start :1;
		grid-column-end:6;
	}
	.grid-container div:nth-child(1) span {
		font-size:50px;
	}
	
	.grid-container div:nth-child(2) {
		padding-top:15px;
		text-align: center;
		vertical-align: middle;
		grid-column-start :1;
		grid-column-end:3;
	}
	.grid-container div:nth-child(3) {
		padding-top:15px;
		text-align: center;
		vertical-align: middle;
		grid-column-start :3;
		grid-column-end:6;
		grid-row-start:2;
		grid-row-end:5;
	}
	.grid-container div:nth-child(3) div{
		border:1px solid black;
	}
	.grid-container div:nth-child(4) {
		grid-column-start :1;
		grid-column-end:3;
		grid-row-start:3;
		grid-row-end:5;
	}
	.grid-container div:nth-child(5) {
		padding-top:20px;
		text-align: center;
		vertical-align: middle;
		grid-column-start :1;
		grid-column-end:6;
	}
	textarea {
		border:1px solid black;
	    width: 100%;
	    height: 90%;
	    border: none;
	    resize: none;
  }
  .community h2{
  	position: absolute;
  	left: 250px;
  }
</style>
</head>
<body>
	<!-- main.jsp -->
			<%@include file="/WEB-INF/views/inc/header.jsp"%>
	<div class="container">
		<main class="main">
			<%@ include file="/WEB-INF/views/inc/user/mynav.jsp"%>
			<section class="community">
				<div class="title">
					<h2>구매 후기 등록</h2>
				</div>
				<form action="/goguma//profile/purchasereviewok.do" method="post">
				<div class="grid-container">
						<div>
							<div>
								<span class="fa fa-star"></span>
								<span class="fa fa-star"></span>
								<span class="fa fa-star"></span>
								<span class="fa fa-star"></span>
								<span class="fa fa-star"></span>
							</div>
						</div>
						
						<div>
							<div>판매자 아이디 : ${selId}</div>
						</div>
				
						<div>
							<div><textarea rows="5" cols="33" name="content"></textarea></div>
						</div>
						
						<div>
							<input type="hidden" name="deal_seq" value="${deal_seq}">
							<input type="hidden" class="score" name="score" value="">
						</div>
						
						<div>
							<input type="submit" value="후기 등록" class="btn important" >
						</div>
					</div>
				</form>
			</section>
		</main>
	</div>
	<script>
		let score = 0;
		
		$(".grid-container div:nth-child(1) span:nth-child(5)").click(()=>{
			$(".grid-container div:nth-child(1) span:nth-child(5)").addClass('checked');
			$(".grid-container div:nth-child(1) span:nth-child(4)").addClass('checked');
			$(".grid-container div:nth-child(1) span:nth-child(3)").addClass('checked');
			$(".grid-container div:nth-child(1) span:nth-child(2)").addClass('checked');
			$(".grid-container div:nth-child(1) span:nth-child(1)").addClass('checked');
			score=5;
			$(".score").val(score*2);
		});
		$(".grid-container div:nth-child(1) span:nth-child(4)").click(()=>{
			$(".grid-container div:nth-child(1) span:nth-child(5)").removeClass('checked');
			$(".grid-container div:nth-child(1) span:nth-child(4)").addClass('checked');
			$(".grid-container div:nth-child(1) span:nth-child(3)").addClass('checked');
			$(".grid-container div:nth-child(1) span:nth-child(2)").addClass('checked');
			$(".grid-container div:nth-child(1) span:nth-child(1)").addClass('checked');
			score=4;
			$(".score").val(score*2);
		});
		$(".grid-container div:nth-child(1) span:nth-child(3)").click(()=>{
			$(".grid-container div:nth-child(1) span:nth-child(5)").removeClass('checked');
			$(".grid-container div:nth-child(1) span:nth-child(4)").removeClass('checked');
			$(".grid-container div:nth-child(1) span:nth-child(3)").addClass('checked');
			$(".grid-container div:nth-child(1) span:nth-child(2)").addClass('checked');
			$(".grid-container div:nth-child(1) span:nth-child(1)").addClass('checked');
			score=3;
			$(".score").val(score*2);
		});
		$(".grid-container div:nth-child(1) span:nth-child(2)").click(()=>{
			$(".grid-container div:nth-child(1) span:nth-child(5)").removeClass('checked');
			$(".grid-container div:nth-child(1) span:nth-child(4)").removeClass('checked');
			$(".grid-container div:nth-child(1) span:nth-child(3)").removeClass('checked');
			$(".grid-container div:nth-child(1) span:nth-child(2)").addClass('checked');
			$(".grid-container div:nth-child(1) span:nth-child(1)").addClass('checked');
			score=2;
			$(".score").val(score*2);
		});
		$(".grid-container div:nth-child(1) span:nth-child(1)").click(()=>{
			$(".grid-container div:nth-child(1) span:nth-child(5)").removeClass('checked');
			$(".grid-container div:nth-child(1) span:nth-child(4)").removeClass('checked');
			$(".grid-container div:nth-child(1) span:nth-child(3)").removeClass('checked');
			$(".grid-container div:nth-child(1) span:nth-child(2)").removeClass('checked');
			$(".grid-container div:nth-child(1) span:nth-child(1)").addClass('checked');
			score=1;
			$(".score").val(score*2);
		});
	</script>
</body>
</html>







