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
					['서울',  224076,      "#b87333"],
					['부산',  67287,      "#b87333"],
					['대구',  53758,      "#b87333"],
					['인천',  52853,      "#b87333"],
					['광주',  57611,      "#b87333"],
					['대전',  45777,      "#b87333"],
					['울산',  44869,      "#b87333"],
					['세종',  3588,      "#b87333"],
					['경기',  171138,      "#b87333"],
					['강원',  33781,      "#b87333"],
					['충북',  24756,      "#b87333"],
					['충남',  62418,      "#b87333"],
					['전북',  36147,      "#b87333"],
					['전남',  68805,      "#b87333"],
					['경북',  62500,      "#b87333"],
					['경남',  91890,      "#b87333"],
					['제주',  26105,      "#b87333"],
				]);
		      var view = new google.visualization.DataView(data);
		      view.setColumns([0, 1,
		                       { calc: "stringify",
		                         sourceColumn: 1,
		                         type: "string",
		                         role: "annotation" },
		                       2]);

		      var options = {
		        title: "2019년도 활동현황(지역별)",
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