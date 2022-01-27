<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고구마</title>
<%@ include file="/WEB-INF/views/inc/asset.jsp"%>
<script src="/goguma/asset/js/highcharts.js"></script>
<link rel="stylesheet" type="text/css" href="/goguma/asset/css/admin.css">
<style>
</style>
</head>
<body>
	<!-- connstatis.jsp -->
	<main class="main">
		<%@include file="/WEB-INF/views/inc/header.jsp"%>
		<section class="content">
			<div class="container">
				<%@ include file="/WEB-INF/views/inc/admin/nav.jsp"%>
				
				<div class="article dashboard">
					<div class="subtitle"><h2>거래 통계</h2></div>
					<div id="chart" style="width:800px;"></div>
				</div>
			
			</div>
		</section>
		<%@include file="/WEB-INF/views/inc/footer.jsp"%>
	</main>

	<script>
	Highcharts.chart('chart', {
	    chart: {
	        plotBackgroundColor: null,
	        plotBorderWidth: null,
	        plotShadow: false,
	        type: 'pie'
	    },
	    title: {
	        text: '카테고리별 판매량'
	    },
	    tooltip: {
	        pointFormat: '{point.name}: <b>{point.y}만원</b>'
	    },
	    accessibility: {
	        point: {
	            valueSuffix: '%'
	        }
	    },
	    plotOptions: {
	        pie: {
	            allowPointSelect: true,
	            cursor: 'pointer',
	            dataLabels: {
	                enabled: true,
	                format: '<b>{point.name}</b>: {point.y}만원'
	            }
	        }
	    },
	    series: [{
	        name: 'Brands',
	        colorByPoint: true,
	        data: [
	        <c:forEach items="${totalList}" var="dto">
	        {
	            name: '${dto.type}',
	            y: ${dto.amount}
	        }
	        ,
	        </c:forEach>
	        ]
	    }]
	});
	</script>
</body>
</html>







