<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Atualização de Receita</title>
</head>
<body>
<%@ include file="menu.jsp" %>
<div class="container">
	<h1>Edição de Produto</h1>
	<form action="receita" method="post">
		<input type="hidden" value="editar" name="acao">
		<input type="hidden" value="${receita.codigo}" name="codigo">
		<div class="form-group">
			<label for="valor">Valor</label>
			<input type="text" name="valor" id="valor" class="form-control" value="${receita.valor_receita}">
		</div>
		<div class="form-group">
			<label for="cpf">CPF do cliente</label>
			<input type="text" name="cpf" id="cpf" class="form-control" value="${receita.cpf}">
		</div>
		<div class="form-group">
			<label for="Descrição">Descrição</label>
			<input type="text" name="Descrição" id="Descrição" class="form-control" value="${receita.descrição}">
		</div>
		<div class="form-group">
			<label for="dataReceita">Data da Receita</label>
			<input type="text" name="dataReceita" id="dataReceita" class="form-control" 
				value='<fmt:formatDate value="${receita.data_receita.time }" pattern="dd/MM/yyyy"/>'>
		</div>
		<div class="form-group">
			<label for="qtdRepeticao">Vezes de Repetições</label>
			<input type="text" name="qtdRepeticao" id="qtdRepeticao" class="form-control" value="${receita.qtd_repeticao }">
		</div>
		<div class="form-group">
			<label for="tipoRepeticao">Mensal / semanal</label>
			<input type="text" name="tipoRepeticao" id="tipoRepeticao" class="form-control" value="${receita.recorrencia }">
		</div>
		<input type="submit" value="Salvar" class="btn btn-primary">
		<a href="receita?acao=listar" class="btn btn-danger">Cancelar</a>
	</form>
</div>
<%@ include file="footer.jsp" %>
</body>
</html>