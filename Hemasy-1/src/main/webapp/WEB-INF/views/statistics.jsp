<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>統計画面</title>
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.2.0/chart.min.js"
	integrity="sha512-VMsZqo0ar06BMtg0tPsdgRADvl0kDHpTbugCBBrL55KmucH6hP9zWdLIWY//OTfMnzz6xWQRxQqsUFefwHuHyg=="
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/chartjs-adapter-date-fns@next/dist/chartjs-adapter-date-fns.bundle.min.js"></script>
</head>
<body>
	<h1>統計</h1>
	<div id="selectGraph">
		<button data-index="food" onclick="entryClick(1)">食事</button>
		<button data-index="exercise" onclick="entryClick(2)">運動</button>
		<button data-index="alcohol" onclick="entryClick(3)">酒</button>
		<button data-index="smoke" onclick="entryClick(4)">タバコ</button>
		<button data-index="bmi" onclick="entryClick(5)">>体重</button>
	</div>
	<div style="width: 400px">
		<canvas id="foodGraph"></canvas>
	</div>
	<div style="width: 400px">
		<canvas id="exerciseGraph"></canvas>
	</div>
	<div style="width: 400px">
		<canvas id="alcoholGraph"></canvas>
	</div>
	<div style="width: 400px">
		<canvas id="smokeGraph"></canvas>
	</div>
	<div style="width: 400px">
		<canvas id="bmiGraph"></canvas>
	</div>
	<script>
var ctx = document.getElementById('foodGraph');
var myChart = new Chart(ctx, {
  type: 'line',
  data: {
    labels: ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'],
    datasets: [{
      label: 'Red',
      data: [20, 35, 40, 30, 45, 35, 40],
      borderColor: '#f88',
    }, {
      label: 'Green',
      data: [20, 15, 30, 25, 30, 40, 35],
      borderColor: '#484',
    }, {
      label: 'Blue',
      data: [30, 25, 10, 5, 25, 30, 20],
      borderColor: '#48f',
    }],
  },
  options: {
    y: {
      min: 0,
      max: 60,
    },
  },
});
</script>
	<script>
var ctx = document.getElementById('exerciseGraph');
var myChart = new Chart(ctx, {
  type: 'line',
  data: {
    labels: ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'],
    datasets: [{
      label: '運動',
      data: [20, 35, 40, 30, 45, 35, 40],
      borderColor: '#f88',
    }, {
      label: 'Green',
      data: [20, 15, 30, 25, 30, 40, 35],
      borderColor: '#484',
    }, {
      label: 'Blue',
      data: [30, 25, 10, 5, 25, 30, 20],
      borderColor: '#48f',
    }],
  },
  options: {
    y: {
      min: 0,
      max: 60,
    },
  },
});
</script>
	<script>
var ctx = document.getElementById('alcoholGraph');
var myChart = new Chart(ctx, {
  type: 'line',
  data: {
    labels: ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'],
    datasets: [{
      label: '酒',
      data: [20, 35, 40, 30, 45, 35, 40],
      borderColor: '#f88',
    }, {
      label: 'Green',
      data: [20, 15, 30, 25, 30, 40, 35],
      borderColor: '#484',
    }, {
      label: 'Blue',
      data: [30, 25, 10, 5, 25, 30, 20],
      borderColor: '#48f',
    }],
  },
  options: {
    y: {
      min: 0,
      max: 60,
    },
  },
});
</script>
	<script>
var ctx = document.getElementById('smokeGraph');
var myChart = new Chart(ctx, {
  type: 'line',
  data: {
    labels: ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'],
    datasets: [{
      label: 'タバコ',
      data: [20, 35, 40, 30, 45, 35, 40],
      borderColor: '#f88',
    }, {
      label: 'Green',
      data: [20, 15, 30, 25, 30, 40, 35],
      borderColor: '#484',
    }, {
      label: 'Blue',
      data: [30, 25, 10, 5, 25, 30, 20],
      borderColor: '#48f',
    }],
  },
  options: {
    y: {
      min: 0,
      max: 60,
    },
  },
});
</script>
	<script>
var ctx = document.getElementById('bmiGraph');
var myChart = new Chart(ctx, {
  type: 'line',
  data: {
    labels: ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'],
    datasets: [{
      label: '体重',
      data: [20, 35, 40, 30, 45, 35, 40],
      borderColor: '#f88',
    }, {
      label: 'Green',
      data: [20, 15, 30, 25, 30, 40, 35],
      borderColor: '#484',
    }, {
      label: 'Blue',
      data: [30, 25, 10, 5, 25, 30, 20],
      borderColor: '#48f',
    }],
  },
  options: {
    y: {
      min: 0,
      max: 60,
    },
  },
});
</script>
<script type="text/javascript">
function entryClick(id){
		if(id == 1){
			document.getElementById('foodGraph').style.display = "";
			document.getElementById('exerciseGraph').style.display = "none";
			document.getElementById('alcoholGraph').style.display = "none";
			document.getElementById('smokeGraph').style.display = "none";
			document.getElementById('bmiGraph').style.display = "none";
		}else if(id == 2){
			document.getElementById('foodGraph').style.display = "none";
			document.getElementById('exerciseGraph').style.display = "";
			document.getElementById('alcoholGraph').style.display = "none";
			document.getElementById('smokeGraph').style.display = "none";
			document.getElementById('bmiGraph').style.display = "none";
		}else if(id == 3){
			document.getElementById('foodGraph').style.display = "none";
			document.getElementById('exerciseGraph').style.display = "none";
			document.getElementById('alcoholGraph').style.display = "";
			document.getElementById('smokeGraph').style.display = "none";
			document.getElementById('bmiGraph').style.display = "none";
		}else if(id == 4){
			document.getElementById('foodGraph').style.display = "none";
			document.getElementById('exerciseGraph').style.display = "none";
			document.getElementById('alcoholGraph').style.display = "none";
			document.getElementById('smokeGraph').style.display = "";
			document.getElementById('bmiGraph').style.display = "none";
		}else if(id == 5){
			document.getElementById('foodGraph').style.display = "none";
			document.getElementById('exerciseGraph').style.display = "none";
			document.getElementById('alcoholGraph').style.display = "none";
			document.getElementById('smokeGraph').style.display = "none";
			document.getElementById('bmiGraph').style.display = "";
		}
}
// window.onload = entryChange;
</script>
</body>
</html>