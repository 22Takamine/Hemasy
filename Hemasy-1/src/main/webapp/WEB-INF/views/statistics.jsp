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
	<div onclick="entryClick()" id="selectGraph">
		<input type="button" id="foodButton" value="食事">
		<input type="button" id="exerciseButton" value="運動">
		<input type="button" id="alcoholButton" value="酒">
		<input type="button" id="smokeButton" value="タバコ">
		<input type="button" id="bmiButton" value="体重">
	</div>
	<div style="width: 400px">
		<canvas id="food"></canvas>
	</div>
	<div style="width: 400px">
		<canvas id="exercise"></canvas>
	</div>
	<div style="width: 400px">
		<canvas id="alcohol"></canvas>
	</div>
	<div style="width: 400px">
		<canvas id="smoke"></canvas>
	</div>
	<div style="width: 400px">
		<canvas id="bmi"></canvas>
	</div>
	<script>
var ctx = document.getElementById('food');
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
var ctx = document.getElementById('exercise');
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
var ctx = document.getElementById('alcohol');
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
var ctx = document.getElementById('smoke');
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
var ctx = document.getElementById('bmi');
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
</body>
<script type="text/javascript">
document.getElementById('selectGraph').onclick = entryClick;

function entryClick(){
	if(document.getElementById('selectGraph')){
		id = document.getElementById('selectGraph').value;
		if(id == 'select1'){
			document.getElementById('firstBox').style.display = "";
			document.getElementById('secondBox').style.display = "none";
			document.getElementById('thirdBox').style.display = "none";
		}else if(id == 'select2'){
			//フォーム
			document.getElementById('firstBox').style.display = "none";
			document.getElementById('secondBox').style.display = "";
			document.getElementById('thirdBox').style.display = "none";
		}else if(id == 'select3'){
			document.getElementById('firstBox').style.display = "none";
			document.getElementById('secondBox').style.display = "none";
			document.getElementById('thirdBox').style.display = "";
		}
	}
}
// window.onload = entryChange;
</script>
</html>