<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>BeRich - Receitas do cliente</title>
</head>
<body>
<%@ include file="menu.jsp" %>
	<div class="container">
		<h1>Receitas</h1>
		<table class="table table-striped">
			<tr>
				<th>Tipo</th>
				<th>Valor</th>
				<th>CPF do cliente</th>
				<th>Descrição</th>
				<th>Data da Receita</th>
				<th>Vezes de Repetições</th>
				<th>Mensal / semanal</th>
			</tr>
			<c:forEach items="${receita}" var = "r">
				<tr>
					<td>${r.tipo}</td>
					<td>${r.valor_receita}</td>
					<td>${r.cpf}</td>
					<td>${r.descricao}</td>
					<td>
						<fmt:formatDate value="${r.data_receita.time }" pattern="dd/MM/yyyy"/>
					</td>
					<td>${r.qtd_repeticao}</td>
					<td>${r.recorrencia}</td>
					<td>
						<c:url value="receita" var="link">
							<c:param name="acao" value="abrir-form-edicao"/>
							<c:param name="codigo" value="${r.codigo}"/>
						</c:url>
						<a href="${link}">Editar</a>
					</td>
				</tr>
			</c:forEach>
		</table>
	</div>
<%@ include file="footer.jsp" %>	
</body>
</html>