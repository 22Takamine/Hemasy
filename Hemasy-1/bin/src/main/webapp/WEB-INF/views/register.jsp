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
<title>新規登録</title>
</head>
<body>
  <h1>登録情報を入力してください</h1>
  
  <form:form action="index" modelAttribute="index" method="post">
    <div>
      <label><fmt:message key="form.lbl.mail"/></label><form:input path="mail" type="text"/>
      <form:errors path="mail" cssStyle="color: red"/>
    </div>
    
    <form:button><fmt:message key="form.lbl.regist"/></form:button>
  </form:form>
  
  <form:form action="index" modelAttribute="index" method="post">
    <form:button><fmt:message key="form.lbl.back"/></form:button>
  </form:form>
</body>
</html>