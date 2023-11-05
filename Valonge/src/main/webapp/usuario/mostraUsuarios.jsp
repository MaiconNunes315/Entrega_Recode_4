<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="jstl"%>

<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Vá longe - Usuários cadastrados</title>
<link rel="stylesheet" href="assets/css/style_home.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM"
	crossorigin="anonymous">
<link rel="shortcut icon" href="./assets/images/logo.png"
	type="image/x-icon">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Josefin+Sans:wght@300;400&display=swap"
	rel="stylesheet">
</head>
<body>
	<header>
		<nav class="navbar navbar-expand-lg bg-warning" data-bs-theme="dark">
			<div class="container-fluid">
				<a class="navbar-brand" href="index.jsp"><img
					src="assets/images/logo.png" alt="logo va longe"></a>
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>

				<div
					class="collapse navbar-collapse  justify-content-end text-center"
					id="navbarSupportedContent">


					<ul class="navbar-nav mb-2 mb-lg-0">
						<li class="nav-item"><a class="nav-link style_link_hover"
							aria-current="page" href="index.jsp"> Home</a></li>
						<li class="nav-item"><a class="nav-link style_link_hover"
							aria-current="page" href="usuario/cadastrar"> Cadastrar-se</a></li>
					<li class="nav-item">
                            <a class="nav-link style_link_hover" href="destino/cadastrarDestino.jsp">
                                Cadastrar destino
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link style_link_hover" href="contact.html">
                                Contato
                            </a>
                        </li>

					</ul>

				</div>
			</div>
		</nav>
	</header>

	<div class="container my-4">
		<ul class="list-group">
			<jstl:forEach items="${users}" var="user">
				<li class="list-group-item list-group-item-primary mb-2">
					<p>
						<strong>Id:</strong> ${user.getId()}
					</p>
					<p>
						<strong>Nome:</strong> ${user.getNome()}
					</p>
					<p>
						<strong>Email:</strong> ${user.getEmail()}
					</p>
					<p>
						<strong>Ações:</strong> <a
							href="usuario/editar?id=${user.getId()}">
							<button class="btn btn-warning">Editar</button>
						</a> <a href="usuario/excluir?id=${user.getId()}">
							<button class="btn btn-danger">Excluir</button>
						</a>
					</p>
				</li>
			</jstl:forEach>
		</ul>

	</div>



	<footer class="py-5 d-flex flex-column align-items-center">
		<div class="container d-flex justify-content-center flex-wrap gap-5">

			<div>
				<h4>Vá longe</h4>

				<p>
					<a class="text-decoration-none text-dark footer_link"
						href="sobre.html">Sobre nós</a>
				</p>

				<p>SAC 21 2222-2222</p>
				<p>Atendimento Seg. a Sex: 09h às 19h</p>
				<p>CNPJ: 42.047.067/0001-21</p>
			</div>

			<div>
				<h4>Formas de pagamento</h4>
				<img width="300px"
					src="https://images.tcdn.com.br/img/editor/up/365915/bandeiras_cartoes.png"
					alt="" />

			</div>



			<div>
				<h4>Siga nossas redes</h4>
				<a href="#" class="text-decoration-none"> <img
					src="assets/images/instagram.png" alt="icone instagram">
				</a> <a href="#" class="text-decoration-none"> <img
					src="assets/images/facebook.png" alt="icone facebook">
				</a> <a href="#" class="text-decoration-none"> <img
					src="assets/images/youtube.png" alt="icone youtube">
				</a>
			</div>
		</div>
		<div class="">
			Feito por: <a class="text-decoration-none text-dark"
				href="https://www.linkedin.com/in/maicon-nunes/" target="_blank">
				Maicon Nunes <img width="40px" src="assets/images/linkedin.png"
				alt="icone linkedin">
			</a>
		</div>
	</footer>



	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
		crossorigin="anonymous"></script>
</body>
</html>