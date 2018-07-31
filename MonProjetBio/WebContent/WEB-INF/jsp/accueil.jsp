<%@ page 	language="java" 
			contentType="text/html; charset=ISO-8859-1"
    		pageEncoding="ISO-8859-1"%>
    
<!-- Tag librairies: -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Mon panier bio.com</title>
		
	<!-- 	Les dépendances en 1er:	 -->
	<!-- 	jQuery: -->
		<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
	<!-- 	Bootstrap: -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
		
	<!-- 	jQuery: -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
	<!-- Bootstrap: -->
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
	<!-- 	Custom: -->
	<!-- 	... -->
	
	</head>
	
	<body>
		<div class="container-fluid">
			<div class="row">
				<div class="col-sm-9">

					<nav id="MENU" class="navbar navbar-expand-sm bg-dark navbar-dark">
						<a class="navbar-brand" href="#">Menu</a>
						
						<button class="navbar-toggler" type="button" data-toggle="collapse"
							data-target="#collapsibleNavbar">
							<span class="navbar-toggler-icon"></span>
						</button>
						
						<div class="collapse navbar-collapse" id="collapsibleNavbar">
							<ul class="navbar-nav">
								<li class="nav-item"><a class="nav-link" href="/MonProjetBio/accueil" data-toggle="tooltip" title="Aller à l'accueil">Accueil</a></li>
								<li class="nav-item"><a class="nav-link" href="/MonProjetBio/monpanier" data-toggle="tooltip" title="Créer un panier">Créer un panier</a></li>
							</ul>
						</div>
					</nav>

					<h1>Accueil</h1>
					
					<!-- 	Afficher une date: -->
					<p>Bonjour, nous sommes le <fmt:formatDate value="${today}" pattern="dd/MM/yyyy"/></p>
					
					<img src="images/logo.jpg" alt="Mon Logo" class="mx-auto d-block img-fluid">
			    </div>
			 </div>
		</div>
	</body>
	
</html>