
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="jstl"%>
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
<title>V� longe - Cadastre-se</title>
</head>
<body>
<header>
        <nav class="navbar navbar-expand-lg bg-warning" data-bs-theme="dark">
            <div class="container-fluid">
                <a class="navbar-brand" href="../index.jsp"><img src="../assets/images/logo.png" alt="logo va longe"></a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                    aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse  justify-content-end text-center" id="navbarSupportedContent">

                
                    <ul class="navbar-nav mb-2 mb-lg-0">
                    <li class="nav-item">
                            <a class="nav-link style_link_hover" aria-current="page" href="../index.jsp">
                                Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link style_link_hover" aria-current="page" href="cadastrar">
                                Cadastrar-se</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link style_link_hover" href="../destino/cadastrarDestino.jsp">
                                Cadastrar destino
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link style_link_hover" href="../contact.html">
                                Contato
                            </a>
                        </li>
                       
                    </ul>

                </div>
            </div>
        </nav>
    </header>
    <div class="container my-5 py-5 border border-primary-subtle rounded">
    
    <form class="row g-3" action="cadastrar" method="POST">
				<input type="hidden" name="inputUsuario" value="client">
    <div class="col-md-6">
      <label for="inputNome" class="form-label">Nome</label>
      <input type="text"  required maxlength="50" class="form-control" id="inputNome" name="inputNome">
    </div>
    <div class="col-md-6">
      <label for="inputEmail" class="form-label">Email</label>
      <input type="email" required maxlength="50" class="form-control" id="inputEmail" name="inputEmail">
    </div>
    <div class="col-md-4">
      <label for="inputCpf" class="form-label">CPF</label>
      <input type="text" oninput="mascara(this)" required class="form-control" id="inputCpf" name="inputCpf">
    </div>
    <div class="col-md-4">
      <label for="inputRg" class="form-label">RG</label>
      <input type="text" maxlength="9" required class="form-control" id="inputRg" name="inputRg">
    </div>
    <div class="col-md-4">
      <label for="inputTel" class="form-label">Telefone</label>
      <input type="tel" required maxlength="15" oninput="handlePhone(event)" class="form-control" id="inputTel" name="inputTel">
    </div>
    <div class="col-md-3">
      <label for="inputNascimento" class="form-label">Data de nascimento</label>
      <input type="date" required class="form-control" id="inputNascimento" name="inputNascimento">
    </div>
    <div class="col-md-3">
      <label for="inputSenha" class="form-label">Senha</label>
      <input type="password" maxlength="32" required class="form-control" id="inputSenha" name="inputSenha">
    </div>
  
      <div class="col-4">
        <label for="inputEndereco" class="form-label">Endere�o</label>
        <input type="text" required maxlength="50" class="form-control" id="inputEndereco" placeholder="Av Aberlado Bueno 150"
          name="inputEndereco">
      </div>
      <div class="col-4">
        <label for="inputComplemento" class="form-label">Complemento</label>
        <input type="text" required maxlength="25" class="form-control" id="inputComplemento" name="inputComplemento"
          placeholder="Bloco, apartamento, casa, etc.">
      </div>
      <div class="col-md-4">
        <label for="inputCidade" class="form-label">Cidade</label>
        <input type="text" required class="form-control" maxlength="30" id="inputCidade" name="inputCidade">
      </div>
      <div class="col-md-3">
        <label for="inputEstado" class="form-label">Estado</label>
        <select id="inputEstado" class="form-select" name="inputEstado">
          <option selected>Selecione o estado</option>
          <jstl:forEach items="${Estados}" var="Estado">
          <option value="${Estado.getDescricao()}">${Estado.getDescricao()}</option>
          </jstl:forEach>

        </select>
      </div>
      <div class="col-md-3">
        <label for="inputCep" class="form-label">Cep</label>
        <input type="text" maxlength="9" required class="form-control" id="inputCep" name="inputCep">
      </div>
    <div class="col-12">
      <button type="submit" class="btn btn-primary">Cadastrar</button>
    </div>
  </form>
  <div>
  	<div class="alert alert-primary my-2"><a class="text-decoration-none" href="../usuario">Mostrar Usu�rios cadastrados</a></div>
  </div>
  </div>
    <footer class="py-5 d-flex flex-column align-items-center">
        <div class="container d-flex justify-content-center flex-wrap gap-5">

            <div>
                <h4>V� longe</h4>

                <p>
                    <a class="text-decoration-none text-dark footer_link" href="../sobre.html">Sobre n�s</a>
                </p>

                <p>SAC 21 2222-2222</p>
                <p>Atendimento Seg. a Sex: 09h �s 19h</p>
                <p>CNPJ: 42.047.067/0001-21</p>
            </div>

            <div>
                <h4>Formas de pagamento</h4>
                <img width="300px" src="https://images.tcdn.com.br/img/editor/up/365915/bandeiras_cartoes.png" alt="" />

            </div>


            <div>
                <h4>Siga nossas redes</h4>
                <a href="#" class="text-decoration-none">

                    <img src="../assets/images/instagram.png" alt="icone instagram">
                </a>
                <a href="#" class="text-decoration-none">

                    <img src="../assets/images/facebook.png" alt="icone facebook">
                </a>
                <a href="#" class="text-decoration-none">

                    <img src="../assets/images/youtube.png" alt="icone youtube">
                </a>
            </div>
        </div>
        <div class="">
            Feito por:
            <a class="text-decoration-none text-dark" href="https://www.linkedin.com/in/maicon-nunes/" target="_blank">
                Maicon Nunes
                <img width="40px" src="../assets/images/linkedin.png" alt="icone linkedin">
            </a>
        </div>
    </footer>

 <script>
    	
    function mascara(i) {

      var v = i.value;

      if (isNaN(v[v.length - 1])) { // impede entrar outro caractere que n�o seja n�mero
        i.value = v.substring(0, v.length - 1);
        return;
      }

      i.setAttribute("maxlength", "14");
      if (v.length == 3 || v.length == 7) i.value += ".";
      if (v.length == 11) i.value += "-";

    }
    
    const handlePhone = (event) => {
    	  let input = event.target
    	  input.value = phoneMask(input.value)
    	}

    	const phoneMask = (value) => {
    	  if (!value) return ""
    	  value = value.replace(/\D/g,'')
    	  value = value.replace(/(\d{2})(\d)/,"($1) $2")
    	  value = value.replace(/(\d)(\d{4})$/,"$1-$2")
    	  return value
    	}

  </script>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
        crossorigin="anonymous"></script>
</body>
</html>