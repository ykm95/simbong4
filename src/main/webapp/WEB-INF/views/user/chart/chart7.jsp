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
					['서울',  1442668,      "#b87333"],
					['부산',  526284,      "#b87333"],
					['대구',  384808,      "#b87333"],
					['인천',  405144,      "#b87333"],
					['광주',  324076,      "#b87333"],
					['대전',  276168,      "#b87333"],
					['울산',  304488,      "#b87333"],
					['세종',  18426,      "#b87333"],
					['경기',  1091638,      "#b87333"],
					['강원',  224857,      "#b87333"],
					['충북',  168540,      "#b87333"],
					['충남',  328762,      "#b87333"],
					['전북',  205670,      "#b87333"],
					['전남',  373295,      "#b87333"],
					['경북',  376932,      "#b87333"],
					['경남',  518233,      "#b87333"],
					['제주',  139749,      "#b87333"],
				]);
		      var view = new google.visualization.DataView(data);
		      view.setColumns([0, 1,
		                       { calc: "stringify",
		                         sourceColumn: 1,
		                         type: "string",
		                         role: "annotation" },
		                       2]);

		      var options = {
		        title: "2019년도 활동현황(총횟수)",
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