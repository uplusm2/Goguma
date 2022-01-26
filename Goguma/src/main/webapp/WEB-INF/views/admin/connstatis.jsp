<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Code</title>
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

				<!-- 왼쪽 네비게이션바 -->
				<%@ include file="/WEB-INF/views/inc/admin/nav.jsp"%>

				<!-- 본문 -->
				<div class="article dashboard">

					<!-- 제목 -->
					<div class="subtitle"><h2>접속 통계</h2></div>
					
					<div class="chart-container">
						<div id="connchart"></div>
					</div>

					<div class="chart-container">
						<div id="visitChart"></div>
					</div>

					<div class="chart-container">
						<div id="daliyVisitChart"></div>
					</div>

				</div>
			</div>
		</section>

		<%-- <%@include file="/WEB-INF/views/inc/footer.jsp" %> --%>

	</main>

	<script >
	Highcharts.chart('connchart', {

	    title: {
	        text: 'Solar Employment Growth by Sector, 2010-2016'
	    },

	    subtitle: {
	        text: 'Source: thesolarfoundation.com'
	    },

	    yAxis: {
	        title: {
	            text: 'Number of Employees'
	        }
	    },

	    xAxis: {
	        accessibility: {
	            rangeDescription: 'Range: 2010 to 2017'
	        }
	    },

	    legend: {
	        layout: 'vertical',
	        align: 'right',
	        verticalAlign: 'middle'
	    },

	    plotOptions: {
	        series: {
	            label: {
	                connectorAllowed: false
	            },
	            pointStart: 2010
	        }
	    },

	    series: [{
	        name: 'Installation',
	        data: [43934, 52503, 57177, 69658, 97031, 119931, 137133, 154175]
	    }, {
	        name: 'Manufacturing',
	        data: [24916, 24064, 29742, 29851, 32490, 30282, 38121, 40434]
	    }, {
	        name: 'Sales & Distribution',
	        data: [11744, 17722, 16005, 19771, 20185, 24377, 32147, 39387]
	    }, {
	        name: 'Project Development',
	        data: [null, null, 7988, 12169, 15112, 22452, 34400, 34227]
	    }, {
	        name: 'Other',
	        data: [12908, 5948, 8105, 11248, 8989, 11816, 18274, 18111]
	    }],

	    responsive: {
	        rules: [{
	            condition: {
	                maxWidth: 500
	            },
	            chartOptions: {
	                legend: {
	                    layout: 'horizontal',
	                    align: 'center',
	                    verticalAlign: 'bottom'
	                }
	            }
	        }]
	    }

	});
	</script>
</body>
</html>







