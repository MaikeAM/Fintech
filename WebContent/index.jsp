<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   

<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" type="image/png" sizes="16x16" href="img/favicon-32x32.png">
    <title>BeRich - Você no controle</title>
    <link rel="stylesheet" href="css/login.css">
</head>

<body>

    <header class="header">
        <a href="/">
        </a>
    </header>
    <section class="login">
        <div class="hero-form">
            <h2>Faça seu Cadastro</h2>
            <c:if test="${not empty msg }">
		<div class="alert alert-success">${msg}</div>
	</c:if>
	<c:if test="${not empty erro }">
		<div class="alert alert-danger">${erro}</div>
	</c:if>
            <form action="usuario" method="post" class="form-login validatorForm">

                <label for="cpf">
                    Digite seu CPF
                    <input type="text" class="cpfUser" name="cpf" id="cpf" maxlength="14" >
                </label>
                <label for="nome">
                    Digite seu nome
                    <input type="text" class="nome" name="nome" id="nome" maxlength="14" data-rules="required|nome">
                </label>
                
                <label for="nome">
                    Digite seu sobrenome
                    <input type="text" class="sobrenome" name="sobrenome" id="sobrenome" maxlength="14" data-rules="required|sobrenome">
                </label>
                
                <label for="nome">
                    Digite seu email
                    <input type="email" class="email" name="email" id="email" data-rules="required|email">
                </label>
                
                <label for="senha">
                    Digite sua senha
                    <input type="password" class="senha" name="senha" id="senha" >
                </label>
                <button type="submit" class="btn">Continuar
                </button>
                <div class="form-info">
                    <a href="./login.html">Já sou Cliente</a>
                </div>
            </form>
        </div>
    </section>

    <script src="js/main.js"></script>
</body>

</html>