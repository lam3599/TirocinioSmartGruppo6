<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Tirocinio Smart</title>

<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom fonts for this template -->
<link href="vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic"
	rel="stylesheet" type="text/css">

<!-- Plugin CSS -->
<link href="vendor/magnific-popup/magnific-popup.css" rel="stylesheet"
	type="text/css">

<!-- Custom styles for this template -->
<link href="css/freelancer.min.css" rel="stylesheet">
<link href="css/login.css" rel="stylesheet">
<script type="text/javascript" src="/loginValidation.js"></script>
</head>

<body id="page-top">

	<!-- Navigation -->
	<nav
		class="navbar navbar-expand-lg bg-secondary fixed-top text-uppercase"
		id="mainNav">
	<div class="container">
		<a class="navbar-brand js-scroll-trigger" href="#page-top"><img
			src="img\logo.png" height="80e"></a>
		<button
			class="navbar-toggler navbar-toggler-right text-uppercase bg-primary text-white rounded"
			type="button" data-toggle="collapse" data-target="#navbarResponsive"
			aria-controls="navbarResponsive" aria-expanded="false"
			aria-label="Toggle navigation">
			Menu <i class="fa fa-bars"></i>
		</button>
		<div class="collapse navbar-collapse" id="navbarResponsive">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item mx-0 mx-lg-1"><a
					class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger"
					href="#" id="loginform" method="post">Login</a>
					<div class="login">
						<div class="arrow-up"></div>
						<div class="formholder">
							<div class="randompad">
								<fieldset>
									<form action="LoginControl" onSubmit="return loginValidation(this);" method="post">
										<input type="radio" name="tipo" value="Studente">Studente 
										<input type="radio" name="tipo" value="Azienda">Azienda 
										<input type="radio" name="tipo" value="Didattica">Didattica
										
										<br> <label name="email">Email</label> <input type="email" name="email" />
										<label name="password">Password</label> <input type="password" name="password" />
										<input type="submit" value="Login" /><br> <a href="">Hai dimenticato la password?</a>
									</form>
									

								</fieldset>
							</div>
						</div>
					</div></li>
				<li class="nav-item mx-0 mx-lg-1"><a
					class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger"
					href="#" id="registerform" method="post">Registrati</a>
					<div class="register">
						<div class="arrow-up2"></div>
						<div class="formholder2">
							<div class="randompad">
								<fieldset>



									<!-- <label name="nome">Nome</label> -->

									<!--<input type="radio" name="regtipo" value="Studente" checked="checked"> Studente
                                                <input type="radio" name="regtipo" value="Azienda"> Azienda -->

									<form action="RegistrazioneControl" method="post" id="A" style="position: relative">
										<input type="hidden" name="tipo" value="Studente"  />
										<input type="nome" name="nome" placeholder="Nome" /> 
										<input type="cognome" name="cognome" placeholder="Cognome" />
										<!-- <label name="cognome">Cognome</label>
                                                
                                        <!-- <label name="nome">Email</label>-->
										<input type="email" name="email" placeholder="Email" />
										<!-- <label name="cognome">Cognome</label>-->
										<input type="password" name="password" placeholder="Password" />
										<!-- <label name="password">Password</label>-->
										<input type="password" placeholder="Conferma Password" />
										<!-- <label name="password">Conferma Password</label>-->
										<input type="codicefiscale" name="codiceFiscale" placeholder="Codice Fiscale" /> 
										<input type="matricola" name="matricola" placeholder="Matricola" /> 
										<input type="date" name="dataNascita"/> 
										<input type="luogoNascita" name="luogoNascita" placeholder="Luogo di Nascita" />
										<input type="submit" value="Registrati" />
									</form>
									<form action="RegistrazioneControl" method="post" id="B" style="visibility: hidden; position: absolute; top: -1px">
										<input type="hidden" name="tipo" value="Azienda"  />
										<input type="nome" name="nome" placeholder="Nome" /> 
										<input type="cognome" name="cognome" placeholder="Cognome" /> 
										<input type="azienda" name="nomeAzienda" placeholder="Nome Azienda" /> 
										<input type="sede" name="sede" placeholder="Sede" /> 
										<input type="email" name="email" placeholder="Email" />
										<input type="piva" name="partitaIva" placeholder="Partita Iva" /> 
										<input type="telefono" name="telefono" placeholder="Numero di telefono" /> 
										<input type="password" name="password" placeholder="Password" />
										<!-- <label name="password">Password</label>-->
										<input type="password" placeholder="Conferma Password" />
										<!-- <label name="password">Conferma Password</label>-->
										<input type="submit" value="Registrati" />
									</form>
									<br>
									<br>
									<form action="">
										<center>
											<input type="radio" name="RadioB" onclick="hideB()" value="Studente" checked="checked"> 
											Studente 
											<input type="radio" name="RadioB" onclick="hideA()" value="Azienda">
											Azienda
										</center>
										<br> 
									</form>
								</fieldset>
							</div>
						</div>
					</div></li>
				<li class="nav-item mx-0 mx-lg-1"><a
					class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger"
					href="#contact"><img src="img/info.png"></a></li>
			</ul>
		</div>
	</div>
	</nav>

	<!-- Header -->
	<header class="masthead bg-primary text-white text-center">
	<div class="container">
		<img class="img-fluid mb-5 d-block mx-auto" src="img/profile.png"
			alt="">
		<h1 class="text-uppercase mb-0">Aziende Convenzionate</h1>
	</div>
	</header>



	<!-- Footer -->
	<footer class="footer text-center">
	<div class="container">
		<div class="row">
			<div class="col-md-4 mb-5 mb-lg-0">
				<h4 class="text-uppercase mb-4">Location</h4>
				<p class="lead mb-0">
					2215 John Daniel Drive <br>Clark, MO 65243
				</p>
			</div>
			<div class="col-md-4 mb-5 mb-lg-0">
				<h4 class="text-uppercase mb-4">Around the Web</h4>
				<ul class="list-inline mb-0">
					<li class="list-inline-item"><a
						class="btn btn-outline-light btn-social text-center rounded-circle"
						href="#"> <i class="fa fa-fw fa-facebook"></i>
					</a></li>
					<li class="list-inline-item"><a
						class="btn btn-outline-light btn-social text-center rounded-circle"
						href="#"> <i class="fa fa-fw fa-google-plus"></i>
					</a></li>
					<li class="list-inline-item"><a
						class="btn btn-outline-light btn-social text-center rounded-circle"
						href="#"> <i class="fa fa-fw fa-twitter"></i>
					</a></li>
					<li class="list-inline-item"><a
						class="btn btn-outline-light btn-social text-center rounded-circle"
						href="#"> <i class="fa fa-fw fa-linkedin"></i>
					</a></li>
					<li class="list-inline-item"><a
						class="btn btn-outline-light btn-social text-center rounded-circle"
						href="#"> <i class="fa fa-fw fa-dribbble"></i>
					</a></li>
				</ul>
			</div>
			<div class="col-md-4">
				<h4 class="text-uppercase mb-4">About Freelancer</h4>
				<p class="lead mb-0">
					Freelance is a free to use, open source Bootstrap theme created by
					<a href="http://startbootstrap.com">Start Bootstrap</a>.
				</p>
			</div>
		</div>
	</div>
	</footer>

	<div class="copyright py-4 text-center text-white">
		<div class="container">
			<small>Copyright &copy; Your Website 2017</small>
		</div>
	</div>

	<!-- Scroll to Top Button (Only visible on small and extra-small screen sizes) -->
	<div class="scroll-to-top d-lg-none position-fixed ">
		<a class="js-scroll-trigger d-block text-center text-white rounded"
			href="#page-top"> <i class="fa fa-chevron-up"></i>
		</a>
	</div>

	<!-- Portfolio Modals -->

	<!-- Portfolio Modal 1 -->
	<div class="portfolio-modal mfp-hide" id="portfolio-modal-1">
		<div class="portfolio-modal-dialog bg-white">
			<a class="close-button d-none d-md-block portfolio-modal-dismiss"
				href="#"> <i class="fa fa-3x fa-times"></i>
			</a>
			<div class="container text-center">
				<div class="row">
					<div class="col-lg-8 mx-auto">
						<h2 class="text-secondary text-uppercase mb-0">Project Name</h2>
						<hr class="star-dark mb-5">
						<img class="img-fluid mb-5" src="img/portfolio/cabin.png" alt="">
						<p class="mb-5">Lorem ipsum dolor sit amet, consectetur
							adipisicing elit. Mollitia neque assumenda ipsam nihil, molestias
							magnam, recusandae quos quis inventore quisquam velit asperiores,
							vitae? Reprehenderit soluta, eos quod consequuntur itaque. Nam.</p>
						<a
							class="btn btn-primary btn-lg rounded-pill portfolio-modal-dismiss"
							href="#"> <i class="fa fa-close"></i> Close Project
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Portfolio Modal 2 -->
	<div class="portfolio-modal mfp-hide" id="portfolio-modal-2">
		<div class="portfolio-modal-dialog bg-white">
			<a class="close-button d-none d-md-block portfolio-modal-dismiss"
				href="#"> <i class="fa fa-3x fa-times"></i>
			</a>
			<div class="container text-center">
				<div class="row">
					<div class="col-lg-8 mx-auto">
						<h2 class="text-secondary text-uppercase mb-0">Project Name</h2>
						<hr class="star-dark mb-5">
						<img class="img-fluid mb-5" src="img/portfolio/cake.png" alt="">
						<p class="mb-5">Lorem ipsum dolor sit amet, consectetur
							adipisicing elit. Mollitia neque assumenda ipsam nihil, molestias
							magnam, recusandae quos quis inventore quisquam velit asperiores,
							vitae? Reprehenderit soluta, eos quod consequuntur itaque. Nam.</p>
						<a
							class="btn btn-primary btn-lg rounded-pill portfolio-modal-dismiss"
							href="#"> <i class="fa fa-close"></i> Close Project
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Portfolio Modal 3 -->
	<div class="portfolio-modal mfp-hide" id="portfolio-modal-3">
		<div class="portfolio-modal-dialog bg-white">
			<a class="close-button d-none d-md-block portfolio-modal-dismiss"
				href="#"> <i class="fa fa-3x fa-times"></i>
			</a>
			<div class="container text-center">
				<div class="row">
					<div class="col-lg-8 mx-auto">
						<h2 class="text-secondary text-uppercase mb-0">Project Name</h2>
						<hr class="star-dark mb-5">
						<img class="img-fluid mb-5" src="img/portfolio/circus.png" alt="">
						<p class="mb-5">Lorem ipsum dolor sit amet, consectetur
							adipisicing elit. Mollitia neque assumenda ipsam nihil, molestias
							magnam, recusandae quos quis inventore quisquam velit asperiores,
							vitae? Reprehenderit soluta, eos quod consequuntur itaque. Nam.</p>
						<a
							class="btn btn-primary btn-lg rounded-pill portfolio-modal-dismiss"
							href="#"> <i class="fa fa-close"></i> Close Project
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Portfolio Modal 4 -->
	<div class="portfolio-modal mfp-hide" id="portfolio-modal-4">
		<div class="portfolio-modal-dialog bg-white">
			<a class="close-button d-none d-md-block portfolio-modal-dismiss"
				href="#"> <i class="fa fa-3x fa-times"></i>
			</a>
			<div class="container text-center">
				<div class="row">
					<div class="col-lg-8 mx-auto">
						<h2 class="text-secondary text-uppercase mb-0">Project Name</h2>
						<hr class="star-dark mb-5">
						<img class="img-fluid mb-5" src="img/portfolio/game.png" alt="">
						<p class="mb-5">Lorem ipsum dolor sit amet, consectetur
							adipisicing elit. Mollitia neque assumenda ipsam nihil, molestias
							magnam, recusandae quos quis inventore quisquam velit asperiores,
							vitae? Reprehenderit soluta, eos quod consequuntur itaque. Nam.</p>
						<a
							class="btn btn-primary btn-lg rounded-pill portfolio-modal-dismiss"
							href="#"> <i class="fa fa-close"></i> Close Project
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Portfolio Modal 5 -->
	<div class="portfolio-modal mfp-hide" id="portfolio-modal-5">
		<div class="portfolio-modal-dialog bg-white">
			<a class="close-button d-none d-md-block portfolio-modal-dismiss" href="#"> 
			<i class="fa fa-3x fa-times"></i>
			</a>
			<div class="container text-center">
				<div class="row">
					<div class="col-lg-8 mx-auto">
						<h2 class="text-secondary text-uppercase mb-0">Project Name</h2>
						<hr class="star-dark mb-5">
						<img class="img-fluid mb-5" src="img/portfolio/safe.png" alt="">
						<p class="mb-5">Lorem ipsum dolor sit amet, consectetur
							adipisicing elit. Mollitia neque assumenda ipsam nihil, molestias
							magnam, recusandae quos quis inventore quisquam velit asperiores,
							vitae? Reprehenderit soluta, eos quod consequuntur itaque. Nam.</p>
						<a
							class="btn btn-primary btn-lg rounded-pill portfolio-modal-dismiss"
							href="#"> <i class="fa fa-close"></i> Close Project
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Portfolio Modal 6 -->
	<div class="portfolio-modal mfp-hide" id="portfolio-modal-6">
		<div class="portfolio-modal-dialog bg-white">
			<a class="close-button d-none d-md-block portfolio-modal-dismiss"
				href="#"> <i class="fa fa-3x fa-times"></i>
			</a>
			<div class="container text-center">
				<div class="row">
					<div class="col-lg-8 mx-auto">
						<h2 class="text-secondary text-uppercase mb-0">Project Name</h2>
						<hr class="star-dark mb-5">
						<img class="img-fluid mb-5" src="img/portfolio/submarine.png"
							alt="">
						<p class="mb-5">Lorem ipsum dolor sit amet, consectetur
							adipisicing elit. Mollitia neque assumenda ipsam nihil, molestias
							magnam, recusandae quos quis inventore quisquam velit asperiores,
							vitae? Reprehenderit soluta, eos quod consequuntur itaque. Nam.</p>
						<a
							class="btn btn-primary btn-lg rounded-pill portfolio-modal-dismiss"
							href="#"> <i class="fa fa-close"></i> Close Project
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- LoginRegisterForm -->
	<script
		src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
	<script src="js/general.js"></script>


	<!-- Bootstrap core JavaScript -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Plugin JavaScript -->
	<script src="vendor/jquery-easing/jquery.easing.min.js"></script>
	<script src="vendor/magnific-popup/jquery.magnific-popup.min.js"></script>

	<!-- Contact Form JavaScript -->
	<script src="js/jqBootstrapValidation.js"></script>
	<script src="js/contact_me.js"></script>

	<!-- Custom scripts for this template -->
	<script src="js/freelancer.min.js"></script>

	<!-- JS form action -->
	<script type="text/javascript">
          function get_action() { // inside script tags
        return form_action;
    }
</script>

	<form action=get_action()>...</form>

</body>

</html>
