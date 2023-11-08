
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="jstl" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="../assets/css/style_home.css">
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
<title>V� longe - Editar destinos</title>
<style>
#inputDetalhes {
	resize: none;
	height: 120px;
}
</style>
</head>
<body>
	<header>
		<nav class="navbar navbar-expand-lg bg-warning" data-bs-theme="dark">
			<div class="container-fluid">
				<a class="navbar-brand" href="../index.jsp"><img
					src="../assets/images/logo.png" alt="logo va longe"></a>
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
							aria-current="page" href="../index.jsp"> Home</a></li>
						<li class="nav-item"><a class="nav-link style_link_hover"
							aria-current="page" href="../usuario/cadastrar"> Cadastrar-se</a></li>
						<li class="nav-item"><a class="nav-link style_link_hover"
							href="cadastrarDestino.jsp"> Cadastrar destino </a></li>
						<li class="nav-item"><a class="nav-link style_link_hover"
							href="../contact.html"> Contato </a></li>

					</ul>

				</div>
			</div>
		</nav>
	</header>
	<div class="container my-5 py-5 border border-primary-subtle rounded">

		<form class="row g-3" action="editar" method="post">
	<input type="hidden" name="id" value="${destino.getId_destino()}">
			<div class="col-6">
				<label for="inputPais" class="form-label">Pais</label> <input
					type="text" required class="form-control" id="inputPais"
					name="inputPais" value="${destino.getPais()}">
			</div>

			<div class="col-md-6">
				<label for="inputCidade" class="form-label">Cidade</label> <input
					type="text" required class="form-control" id="inputCidade"
					name="inputCidade" value="${destino.getCidade()}">
			</div>
			<div class="col-md-6">
				<label for="inputEstado" class="form-label">Estado</label> <input
					type="text" required class="form-control" required id="inputEstado"
					name="inputEstado" value="${destino.getEstado()}">
			</div>
			<div class="col-md-6">
				<label for="inputImg" class="form-label">Link da imagem </label> <input
					type="text" required class="form-control" id="inputImg"
					name="inputImg" value="${destino.getImg()}"
					placeholder="https://magazine.zarpo.com.br/wp-content/uploads/2020/08/Mar-azul-e-ilhas-paradis%C3%ADacas-veja-o-que-fazer-em-Angra-dos-Reis-770x515.jpg">
				
			</div>

			<div class="col-md-12">
				<label for="inputDetalhes" class="form-label">Detalhes do
					destino</label>
				<textarea id="inputDetalhes" class="form-control"
					name="inputDetalhes">
					${destino.getDetalhes()}
      </textarea>
      <div class="col-md-12 my-2">
      <h6>Confira sua imagem ap�s colocar o link </h6>
      <img width="200px" id="img"/>
      </div>
			</div>
			<div class="col-12">
				<button type="submit" class="btn btn-primary">Editar</button>
			</div>
		</form>
	</div>
	<footer class="py-5 d-flex flex-column align-items-center">
		<div class="container d-flex justify-content-center flex-wrap gap-5">

			<div>
				<h4>V� longe</h4>

				<p>
					<a class="text-decoration-none text-dark footer_link"
						href="../sobre.html">Sobre n�s</a>
				</p>

				<p>SAC 21 2222-2222</p>
				<p>Atendimento Seg. a Sex: 09h �s 19h</p>
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
					src="../assets/images/instagram.png" alt="icone instagram">
				</a> <a href="#" class="text-decoration-none"> <img
					src="../assets/images/facebook.png" alt="icone facebook">
				</a> <a href="#" class="text-decoration-none"> <img
					src="../assets/images/youtube.png" alt="icone youtube">
				</a>
			</div>
		</div>
		<div class="">
			Feito por: <a class="text-decoration-none text-dark"
				href="https://www.linkedin.com/in/maicon-nunes/" target="_blank">
				Maicon Nunes <img width="40px" src="../assets/images/linkedin.png"
				alt="icone linkedin">
			</a>
		</div>
	</footer>
	
  <script>
    const inputImg = document.getElementById('inputImg');
    inputImg.addEventListener('keyup', () => {
      const img = document.getElementById("img");
      img.setAttribute('src', inputImg.value);
    })
  </script>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
		crossorigin="anonymous"></script>
</body>
</html>