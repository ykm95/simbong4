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
					['서울',  20.66,      "#b87333"],
					['부산',  24.45,      "#b87333"],
					['대구',  23.86,      "#b87333"],
					['인천',  24.60,      "#b87333"],
					['광주',  19.16,      "#b87333"],
					['대전',  20.02,      "#b87333"],
					['울산',  22.32,      "#b87333"],
					['세종',  15.74,      "#b87333"],
					['경기',  20.79,      "#b87333"],
					['강원',  21.09,      "#b87333"],
					['충북',  22.80,      "#b87333"],
					['충남',  17.48,      "#b87333"],
					['전북',  17.84,      "#b87333"],
					['전남',  18.62,      "#b87333"],
					['경북',  20.83,      "#b87333"],
					['경남',  18.90,      "#b87333"],
					['제주',  15.66,      "#b87333"],
				]);
		      var view = new google.visualization.DataView(data);
		      view.setColumns([0, 1,
		                       { calc: "stringify",
		                         sourceColumn: 1,
		                         type: "string",
		                         role: "annotation" },
		                       2]);

		      var options = {
		        title: "2019년도 활동현황(평균시간)",
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