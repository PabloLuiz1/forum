<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML>
<html lang="pt-br">
<head>
<meta charset="utf-8">
<title>F�rum - Novo t�pico</title>
<link rel="stylesheet" href="../css/reset.css">
<link rel="stylesheet" href="../css/bootstrap.min.css">
<link rel="stylesheet" href="../css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.5.0/css/all.css"
	integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU"
	crossorigin="anonymous">
</head>
<body>
	<div class="container-fluid mx-0 p-0">
		<header class="bg-secondary">
			<div class="alert alert-light col-md-2">
				Ol� <strong>${usuario.nome}</strong> <a class="badge badge-danger ml-1 font-weight-bold" href="logout">deslogar</a>
			</div>
			<h3 class="text-white ml-4 pt-4 pb-4">F�rum - Novo t�pico</h3>
			<nav class="navbar navbar-expand-sm bg-gray navbar-light">
				<nav
					class="pt-0 pb-0 m-auto navbar navbar-expand-sm bg-secondary navbar-dark justify-content-center font-weight-bold">
					<ul class="navbar-nav">
						<li class="nav-item"><a class="nav-link" href="../forum">In�cio</a>
						</li>
						<li class="nav-item active"><a class="nav-link" href="#">Novo
								t�pico</a></li>
						<li class="nav-item"><a class="nav-link" href="ranking">Ranking</a></li>
						</li>
					</ul>
				</nav>
			</nav>
		</header>
	</div>
	<div class="container mt-4 p-0">
		<c:if test="${erro != null}">
			<div class="alert alert-danger alert-dismissible fade show">
				<button type="button" class="close" data-dismiss="alert">&times;</button>
				<strong>${erro}</strong>
			</div>
		</c:if>
		<form action="novo-topico" method="POST" class="col-md-6 mx-auto">
			<h6>Preencha as informa��es do t�pico para post�-lo.</h6>
			<hr>
			<div class="form-group">
				<input type="text" id="titulo" name="titulo"
					class="form-control" placeholder="T�tulo" onkeyup="validarTitulo(this.value, this.id)" maxlength="80" required>
					<small
					id="tituloHelp" class="form-text text-muted"> O t�tulo do t�pico deve conter entre 2 e 80 caracteres. </small>
			</div>
			<div class="form-group">
				<textarea id="conteudo" name="conteudo" class="form-control"
					placeholder="Conte�do" onkeyup="validarConteudo(this.value, this.id)" required maxlength="800" rows="6"></textarea>
					<small
					id="conteudoHelp" class="form-text text-muted"> O conte�do do t�pico deve conter entre 2 e 1000 caracteres. </small>
			</div>
			<div class="form-group">
				<div class="bg-light mb-3">
					Todos os campos com s�o <span
						class="font-weight-bold">obrigat�rios.</span>
				</div>
				<a href="novo-topico"
					class="btn btn-danger font-weight-bold pull-left">Cancelar</a>
				<button type="submit"
					class="btn btn-primary font-weight-bold pull-right">Postar</button>
			</div>
		</form>
	</div>
	<footer class="bg-secondary container-fluid text-white float-left mt-5">
		<div class="row">
			<div class="col text-center">F�rum desenvolvido por Pablo Luiz
				Ribeiro para fins acad�micos.</div>
		</div>
	</footer>
</body>
<script src="../js/validarFormTopico.js"></script>
<script src="../js/jquery.min.js"></script>
<script src="../js/popper.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
</html>