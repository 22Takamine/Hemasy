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
<title>記録画面</title>
</head>
<body>
  <h1>記録画面</h1>
  
  <form:form action="recordRegist" modelAttribute="index" method="post">
    <form:button><fmt:message key="form.lbl.regist"/></form:button>
  </form:form>
  
  <form:form action="back" modelAttribute="index" method="post">
    <form:button><fmt:message key="form.lbl.back"/></form:button>
  </form:form>
  
  
</body>
</html>