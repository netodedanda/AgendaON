<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:url var="css" value="/static/css/bootstrap.css" />
<link type="text/css" rel="stylesheet" href="${css}" />
</head>
<body>
	<form:form method="post" modelAttribute="horario" action="../update/${id}">
		<p>
			Dia/Hora:
			<form:input type="datetime-local" path="dia" />
		</p>
		<p>
			Descrição:
			<form:input type="text" path="descricao" />
		</p>
		<p>
			<form:button>Emviar</form:button>
		<p>${mensagem}</p>
	</form:form>
</body>
</html>