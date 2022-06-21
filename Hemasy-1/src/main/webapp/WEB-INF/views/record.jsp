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
<title>記録画面</title>
</head>
<body>
  

	<header>
		<div class="header-logo" id="header">Hemasy</div>
		<form:form action="hamburger" modelAttribute="index" method="post">
			<button type="button" class="menu-btn">
				<i class="fa fa-bars" aria-hidden="true"></i>
			</button>
			<div class="menu">
				<div class="menu__item">
					<a href="./account">アカウント管理</a>
				</div>
				<div class="menu__item">
					<a href="./rank">ランキング</a>
				</div>
				<div class="menu__item">
					<a href="./list">リスト編集</a>
				</div>
				<div class="menu__item">
					<a href="./information">お問い合わせ</a>
				</div>
				<div class="menu__item">
					<a href="./logout">ログアウト</a>
				</div>
			</div>
		</form:form>
	</header>
	<h1>記録画面</h1>
	<a href="#food">食事</a>
	<a href="#sport">運動</a>
	<a href="#alcohol">酒</a>
	<a href="smoke">たばこ</a>
	<a href="weight">体重</a>
	<form action="record">
		<input type="date" name="record_day">
	</form>
	<form>
		<div id="food">
			<p>食事記録</p>
			<a href="statistics">統計</a>
			<p>目安: ${2}kcal 摂取: ${2}kcal</p>
			<div id="food_bre">
				<p>朝食</p>
				<p>
					<button type="button" id="add_bre">⊕</button>
				</p>
			</div>
			<div id="food_lun">
				<p>昼食</p>
				<p>
					<button type="button" id="add_lun">⊕</button>
				</p>
			</div>
			<div id="food_din">
				<p>夕食</p>
				<p>
					<button type="button" id="add_din">⊕</button>
				</p>
			</div>
			<div id="food_sna">
				<p>間食</p>
				<p>
					<button type="button" id="add_sna">⊕</button>
				</p>
			</div>
		</div>
		<div id="sport">
			<p>運動記録</p>
			<a href="statistics">統計</a>
			<p>目安: ${2}kcal 消費: ${2}kcal</p>
			<p>
				<button type="button" id="add_spo">⊕</button>
			</p>
		</div>
		<div id="smoke">
			<p>たばこ</p>
			<a href="statistics">統計</a>
			<p>
				今日は<input type="number" value="${2}">本吸いました
			</p>
		</div>
		<div id="alcohol">
			<p>アルコール</p>
			<a href="statistics">統計</a>
			<p>
				<button type="button">⊖</button>
				<input type="text" value="${1}">
				<input type="number" value="${1}" step="0.1">%
				<input type="number" value="${1}">kcal/杯
				<input type="number" value="${1}">ml/杯を
				<input type="number" value="${1}">杯飲みました。
				<input type="checkbox" value="${1}">簡易登録<a href="information.jsp"></a>
			</p>
			<p>
				<button type="button" id="add_alc">⊕</button>
			</p>
		</div>
		<div id="weight">
			<p>体重</p>
			<a href="statistics">統計</a>
			<p>
				現在の体重は<input type="number" value="${2}" step="0.1">kg、体脂肪率は<input type="number" value="${2}" step="0.1">%です。
			</p>
		</div>
	</form>

	<form:form action="recordRegist" modelAttribute="index" method="post">
		<form:button>
			<fmt:message key="form.lbl.regist" />
		</form:button>
	</form:form>

	<form:form action="back" modelAttribute="index" method="post">
		<form:button>
			<fmt:message key="form.lbl.back" />
		</form:button>
	</form:form>
	
	<a href="#header">↑</a>
	<script src="js/commons.js"></script>


</body>
</html>