<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Insert title here</title>


<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">
		google.charts.load('current', {'packages':['corechart']});
		google.charts.setOnLoadCallback(drawVisualization);
	
		function drawVisualization() { 
			var data = google.visualization.arrayToDataTable([
					['구분', '수', {role: "style"} ],
					['서울',  6.44,      "#b87333"],
					['부산',  7.82,      "#b87333"],
					['대구',  7.16,      "#b87333"],
					['인천',  7.67,      "#b87333"],
					['광주',  5.63,      "#b87333"],
					['대전',  6.03,      "#b87333"],
					['울산',  6.79,      "#b87333"],
					['세종',  5.14,      "#b87333"],
					['경기',  6.38,      "#b87333"],
					['강원',  6.66,      "#b87333"],
					['충북',  6.81,      "#b87333"],
					['충남',  5.27,      "#b87333"],
					['전북',  5.69,      "#b87333"],
					['전남',  5.43,      "#b87333"],
					['경북',  6.03,      "#b87333"],
					['경남',  5.64,      "#b87333"],
					['제주',  5.35,      "#b87333"],
				]);
		      var view = new google.visualization.DataView(data);
		      view.setColumns([0, 1,
		                       { calc: "stringify",
		                         sourceColumn: 1,
		                         type: "string",
		                         role: "annotation" },
		                       2]);

		      var options = {
		        title: "2019년도 활동현황(평균횟수)",
		        width: 1200,
		        height: 400,
		        bar: {groupWidth: "5%"},
		        legend: { position: "none" },
		      };
			var chart = new google.visualization.ColumnChart(document.getElementById('chart_div'));
			chart.draw(data, options);
		}
	</script>

</head>
<body>

<div id="chart_div" style="width:1200px; height: 500px;"></div>

</body>
</html>