<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>商品詳細</title>
<link href="css/commons.css" rel="stylesheet">
</head>
<body>
<header>
	<div class="header-logo"><a href="result">Hemasy</a></div>
	<form:form action="hamburger" modelAttribute="index" method="post">
	    <button type="button" class="menu-btn">
	      <i class="fa fa-bars" aria-hidden="true"></i>
	    </button>
	    <div class="menu">
	      <div class="menu__item"><a href="./account">アカウント管理</a></div>
	      <div class="menu__item"><a href="./rank">ランキング</a></div>
	      <div class="menu__item"><a href="./list">リスト編集</a></div>
	      <div class="menu__item"><a href="./information">お問い合わせ</a></div>
	      <div class="menu__item"><a href="./logout">ログアウト</a></div>
	    </div>
    </form:form>
</header>

  <hr>
	<label><fmt:message key="form.lbl.mail"/></label><form:input path="mail" type="text"/>
    <form:errors path="mail" cssStyle="color: red"/>

</body>
</html>