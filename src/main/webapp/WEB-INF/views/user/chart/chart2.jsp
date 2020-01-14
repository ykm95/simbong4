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
					['공무원',  21094,      "#b87333"],
					['사무관리직',  41954,      "#b87333"],
					['전문직',  32446,      "#b87333"],
					['자영',  18330,      "#b87333"],
					['기술',  7366,      "#b87333"],
					['농수산업',  1450,      "#b87333"],
					['군인',  6025,      "#b87333"],
					['주부',  96231,      "#b87333"],
					['학생',  529198,      "#b87333"],
					['무직',  21340,      "#b87333"],
					['기타',  93915,      "#b87333"],
				]);
		      var view = new google.visualization.DataView(data);
		      view.setColumns([0, 1,
		                       { calc: "stringify",
		                         sourceColumn: 1,
		                         type: "string",
		                         role: "annotation" },
		                       2]);

		      var options = {
		        title: "2020년도 활동현황(지역별)",
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