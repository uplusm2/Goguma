<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.9.0/css/all.min.css">

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%@ include file="/WEB-INF/views/inc/asset.jsp" %>
<style>
	body {
	background: #ebefff;
	}

	.wrap {
	width: 250px;
	height: 50px;
	background: #fff;
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%,-50%);
	border-radius: 10px;
	}
	.stars {
		width: fit-content;
		margin: 0 auto;
		cursor: pointer;
	}
	.star {
		color: #91a6ff !important;
	}
	.rate {
		height: 50px;
		margin-left: -5px;
		padding: 5px;
		font-size: 25px;
		position: relative;
		cursor: pointer;
	}
	.rate input[type="radio"] {
		opacity: 0;
		position: absolute;
		top: 50%;
		left: 50%;
		transform: translate(-50%,0%);
		pointer-events: none;
	}
	.star-over::after {
		font-family: 'Font Awesome 5 Free';
	  font-weight: 900;
		font-size: 16px;
		content: "\f005";
		display: inline-block;
		color: #d3dcff;
		z-index: 1;
		position: absolute;
		top: 17px;
		left: 10px;
	}
	
	.rate:nth-child(1) .face::after {
		content: "\f119"; /* ☹ */
	}
	.rate:nth-child(2) .face::after {
		content: "\f11a"; /* 😐 */
	}
	.rate:nth-child(3) .face::after {
		content: "\f118"; /* 🙂 */
	}
	.rate:nth-child(4) .face::after {
		content: "\f580"; /* 😊 */
	}
	.rate:nth-child(5) .face::after {
		content: "\f59a"; /* 😄 */
	}
	.face {
		opacity: 0;
		position: absolute;
		width: 35px;
		height: 35px;
		background: #91a6ff;
		border-radius: 5px;
		top: -50px;
		left: 2px;
		transition: 0.2s;
		pointer-events: none;
	}
	.face::before {
		font-family: 'Font Awesome 5 Free';
	  font-weight: 900;
		content: "\f0dd";
		display: inline-block;
		color: #91a6ff;
		z-index: 1;
		position: absolute;
		left: 9px;
		bottom: -15px;
	}
	.face::after {
		font-family: 'Font Awesome 5 Free';
	  font-weight: 900;
		display: inline-block;
		color: #fff;
		z-index: 1;
		position: absolute;
		left: 5px;
		top: -1px;
	}
	
	.rate:hover .face {
		opacity: 1;
	}
	
	/* Not sure if I like this or not. */
	/* Makes the emoji stay displayed */
	/* input[type="radio"]:checked + .face {
		opacity: 1 !important;
	} */
</style>
<body>


<div class="wrap">
	<div class="stars">
		<label class="rate">
			<input type="radio" name="radio1" id="star1" value="star1">
			<div class="face"></div>
			<i class="far fa-star star one-star"></i>
		</label>
		<label class="rate">
			<input type="radio" name="radio1" id="star2" value="star2">
			<div class="face"></div>
			<i class="far fa-star star two-star"></i>
		</label>
		<label class="rate">
			<input type="radio" name="radio1" id="star3" value="star3">
			<div class="face"></div>
			<i class="far fa-star star three-star"></i>
		</label>
		<label class="rate">
			<input type="radio" name="radio1" id="star4" value="star4">
			<div class="face"></div>
			<i class="far fa-star star four-star"></i>
		</label>
		<label class="rate">
			<input type="radio" name="radio1" id="star5" value="star5">
			<div class="face"></div>
			<i class="far fa-star star five-star"></i>
		</label>
	</div>
</div>

	
<script>
	$(function() {
		
		$(document).on({
			mouseover: function(event) {
				$(this).find('.far').addClass('star-over');
				$(this).prevAll().find('.far').addClass('star-over');
			},
			mouseleave: function(event) {
				$(this).find('.far').removeClass('star-over');
				$(this).prevAll().find('.far').removeClass('star-over');
			}
		}, '.rate');
	
	
		$(document).on('click', '.rate', function() {
			if ( !$(this).find('.star').hasClass('rate-active') ) {
				$(this).siblings().find('.star').addClass('far').removeClass('fas rate-active');
				$(this).find('.star').addClass('rate-active fas').removeClass('far star-over');
				$(this).prevAll().find('.star').addClass('fas').removeClass('far star-over');
			} else {
				console.log('has');
			}
		});
		
	});
</script>
</body>
</html>