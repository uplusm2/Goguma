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
				<%@ include file="/WEB-INF/views/inc/admin/nav.jsp"%>
				
				<div class="article">
					<h3>회원 통계</h3>
					<div id="chart" style="width:800px;"></div>
				</div>
			
			</div>
		</section>
		<%@include file="/WEB-INF/views/inc/footer.jsp"%>
	</main>

	<script>
	var categories = [
	    '10-19', '20-29', '30-39', '40-49', '50-59', '60-69',
	    '70-79', '80-89', '90-99', '100 + '
	];

	Highcharts.chart('chart', {
	    chart: {
	        type: 'bar'
	    },
	    title: {
	        text: 'Population pyramid for Germany, 2018'
	    },
	    subtitle: {
	        text: 'Source: <a href="http://populationpyramid.net/germany/2018/">Population Pyramids of the World from 1950 to 2100</a>'
	    },
	    accessibility: {
	        point: {
	            valueDescriptionFormat: '{index}. Age {xDescription}, {value}%.'
	        }
	    },
	    xAxis: [{
	        categories: categories,
	        reversed: false,
	        labels: {
	            step: 1
	        },
	        accessibility: {
	            description: 'Age (male)'
	        }
	    }, { // mirror axis on right side
	        opposite: true,
	        reversed: false,
	        categories: categories,
	        linkedTo: 0,
	        labels: {
	            step: 1
	        },
	        accessibility: {
	            description: 'Age (female)'
	        }
	    }],
	    yAxis: {
	        title: {
	            text: null
	        },
	        labels: {
	            formatter: function () {
	                return Math.abs(this.value) + '%';
	            }
	        },
	        accessibility: {
	            description: 'Percentage population',
	            rangeDescription: 'Range: 0 to 5%'
	        }
	    },

	    plotOptions: {
	        series: {
	            stacking: 'normal'
	        }
	    },

	    tooltip: {
	        formatter: function () {
	            return '<b>' + this.series.name + ', age ' + this.point.category + '</b><br/>' +
	                'Population: ' + Highcharts.numberFormat(Math.abs(this.point.y), 1) + '%';
	        }
	    },

	    series: [{
	        name: 'Male',
	        data: [
	            -2.2, -2.4, -3.0, -3.3, -3.2,
	            -2.9, -3.5, -4.4, -4.1, -2.7
	        ]
	    }, {
	        name: 'Female',
	        data: [
	            2.1, 2.6, 2.9, 3.2, 3.1,
	            2.9, 3.4, 2.5, 2.7, 2.2
	        ]
	    }]
	});
	</script>
</body>
</html>







