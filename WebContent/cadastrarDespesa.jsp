<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cadastro de Despesa</title>
<%@ include file="header.jsp" %>
</head>
<body>
<%@ include file="menu.jsp" %>
	<div class="container">
		<h1>Cadastro de Despesa</h1>
		
		<c:if test="${not empty msg}">
			<div class="alert alert-success">
				${msg}
			</div>
		</c:if>
		
		<form action="despesa" method="post">
		
			<div class="form-group">
				<label for="id-name">Tipo da Despesa</label><br></br>
			 	<select name ="tipo" class="form-select" aria-label="Tipo da despesa">
				  <option selected>Selecione</option>
				  <option value="10">Fixa</option>
				  <option value="20">Variável</option>
				</select>
			</div>			
			
			<div class="form-group">
				<label for="id-name">Valor da Despesa</label>
				<input type="text" name="valor" id="id-valor" class="form-control">
			</div>
			
			<div class="form-group">
				<label for="id-cpf">CPF do cliente</label>
				<input type="text" name="cpf" id="id-cpf" class="form-control">
			</div>
			
			<div class="form-group">
				<label for="id-valor">Descrição</label>
				<input type="text" name="descricao" id="id-descricao" class="form-control">
			</div>
			
			<div class="form-group">
				<label for="id-valor">Data</label>
				<input type="date" name="data" id="id-data" class="form-control">
			</div>
			
			<div class="form-group">
				<label for="id-valor">Por quantas vezes essa despesa se repetirá?</label>
				<input type="number" name="repeticao" id="id-repeticao" class="form-control">
			</div>
			
			<div class="form-group">
				<label for="id-valor">A repetição será mensal ou semanal?</label>
				<input type="text" name="tipoRepeticao" id="id-tipoRepeticao" class="form-control">
			</div>			
			
			<input type="submit" value="Cadastrar" class="btn btn-primary">
		</form>
	</div>


<%@ include file="footer.jsp" %>
</body>
</html>