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
					['아동시설',  109838,      "#b87333"],
					['노인시설',  295080,      "#b87333"],
					['장애인시설',  222353,      "#b87333"],
					['여성시설',  6715,      "#b87333"],
					['부랑인시설',  12786,      "#b87333"],
					['정신요양시설',  13744,      "#b87333"],
					['복지관',  173931,      "#b87333"],
					['사회복지분야 법인/단체',  126980,      "#b87333"],
					['보건의료',  64416,      "#b87333"],
					['청소년복지시설',  0,      "#b87333"],
					['기타',  202878,      "#b87333"],
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