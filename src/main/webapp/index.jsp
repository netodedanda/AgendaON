<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Agenda Rápida</title>
<c:url var="css" value="/static/css/bootstrap.css" />
<link type="text/css" rel="stylesheet" href="${css}" />

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Manrope:wght@400;700&display=swap" rel="stylesheet">

<style>
  .text-column {
    margin-top: 20px;
  }


  h3, p {
    font-family: 'Manrope', sans-serif;
  }


  h3 {
    font-size: 2.5rem; 
    color: #3300FD;
  }

  
  p {
    font-size: 1.15rem; 
  }
</style>
</head>

<body>
  <div class="container-fluid p-5 bg-primary text-white text-center">
    <h1>Agenda Rápida</h1>
    <p>Nunca foi tão rápido agendar um compromisso!</p>
    <a href="http://localhost:9090/agendarapida/pg1" class="btn btn-dark">Começar agora</a>
  </div>

  <div class="container mt-5 mt-3">
    <div class="row">
      <div class="col-sm-4">
        <img src="${pageContext.request.contextPath}/imagens/calendario.png" class="rounded" alt="Cinque Terre" width="440" height="300">
      </div>
      <div class="col-sm-1">
        <h3>  </h3>
        <p> </p>
      </div>
      <div class="col-sm-6 text-column">
        <h3 class="font-weight-bold">Mais do que apenas planejar</h3>
        
        <p class="text-lg font-italic">Organize reuniões e eventos, convide membros de sua equipe e usuários externos, agende compromissos e planeje seu dia</p>
      
      </div>
    </div>
  </div>
</body>
</html>
