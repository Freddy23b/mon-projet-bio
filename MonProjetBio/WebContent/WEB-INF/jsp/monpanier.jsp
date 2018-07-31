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
		<script type="text/javascript">
			//jQuery:
			$(function() {
				$( "#datepicker" ).datepicker({
					dateFormat: "dd-mm-yy",
					minDate: 1
				});
			});
		</script>
	
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

<!-- 					si le formulaire est ok: -->
				<c:if test="${null != validateForm}">
					<div class="alert alert-success">
						<strong>${validateForm}</strong> Votre panier a bien été soumis.
					</div>
				</c:if>

				<h1>Créer votre panier</h1>
					
					<h3>Formulaire</h3>
	
					<form action="submitFormGestion" method="POST">

						<div class="form-group font-weight-bold">
							<label for="CODE">Code du panier:</label>
							<c:if test="${null != errorCode}"><span class="text-danger">${errorCode}</span></c:if><br>
<!-- 							On récupère ce qui a été précédemment posté avec "param.": -->
							<input type="text" class="form-control" id="CODE" name="CODE" value="${param.CODE}" placeholder="Entrez un code">
						</div>

						<div class="form-group font-weight-bold">
							<label for="CATEGORIE">Catégorie du panier:</label>
							<c:if test="${null != errorCategorie}"><span class="text-danger">${errorCategorie}</span></c:if><br>
							<select class="form-control" id="CATEGORIE" name="CATEGORIE">
								<option value="">Choisissez une catégorie du panier</option>
								<option value="legumes">Légumes</option>
								<option value="poissons">Poissons</option>
								<option value="viandes">Viandes</option>
							</select>
						</div>

						<div class="form-group font-weight-bold">
							<label for="NOM">Nom du panier:</label>
							<c:if test="${null != errorNom}"><span class="text-danger">${errorNom}</span></c:if><br>
							<input type="text" class="form-control"  id="NOM" name="NOM" value="${param.NOM}" placeholder="Entrez un nom de panier">
						</div>

						<div class="form-group font-weight-bold">
							<label for="PRIX">Prix du panier:</label>
							<c:if test="${null != errorPrix}"><span class="text-danger">${errorPrix}</span></c:if><br>
							<input type="text" class="form-control"  id="PRIX" name="PRIX" value="${param.PRIX}" placeholder="Entrez un prix">
						</div>

						<div class="form-group font-weight-bold">
							<label for="POIDS">Poids du panier:</label>
							<c:if test="${null != errorPoids}"><span class="text-danger">${errorPoids}</span></c:if><br>
							<input type="text" class="form-control"  id="POIDS" name="POIDS" value="${param.POIDS}" placeholder="Entrez un poids">
						</div>
						
						<div class="form-group font-weight-bold">
							<label for="datepicker">Date de mise en vente du panier:</label>
							<c:if test="${null != errorDate}"><span class="text-danger">${errorDate}</span></c:if><br>
							<input type="text" class="form-control" id="datepicker" name="DATEPICKER" value="${param.DATEPICKER}" placeholder="JJ/MM/YYYY">
						</div>
	
						<div class="form-group font-weight-bold">
							<label for="DESCRIPTION">Description du panier:</label>
							<c:if test="${null != errorDescription}"><span class="text-danger">${errorDescription}</span></c:if><br>
							<textarea class="form-control" rows="5" id="DESCRIPTION" name="DESCRIPTION" placeholder="Votre description...">${param.DESCRIPTION}</textarea>
						</div>
											
						<input type="reset" value="Reset" class="btn btn-default">
						<input type="submit" value="Soumettre" class="btn btn-primary">
					
					</form>
					
			    </div>
			</div>
		</div>
	</body>
	
</html>