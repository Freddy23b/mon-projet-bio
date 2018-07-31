package tp.panierbio.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tp.panierbio.entities.PanierBio;

/**
 * Servlet implementation class SubmitFormGestion
 */
public class SubmitFormGestion extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//DD:
		System.out.println("SubmitFormGestion.doPost();");
		
		// vérification de la validité de la requête faite dans monpanier.jsp:
		// avec request, on récupère ce qui a été POSTE:
		boolean validate = validate(request);//on appelle ainsi directement la méthode statique
		// Si le formulaire est bon:
		if(validate) {
			// et ici on ajoute à la request cet attribut:
			System.out.println("============  CREATION PANIER  ==============");
			
			PanierBio panierBio = new PanierBio();
			panierBio.setCode(request.getParameter("CODE"));
			panierBio.setCategorie(request.getParameter("CATEGORIE"));
			panierBio.setNom(request.getParameter("NOM"));
			double prix = Double.valueOf(request.getParameter("PRIX"));
			panierBio.setPrix(prix);
			double poids = Double.valueOf(request.getParameter("POIDS"));
			panierBio.setPoids(poids);
			panierBio.setDescription(request.getParameter("DESCRIPTION"));
			
			System.out.println(panierBio);
			
			System.out.println("===========================================");
			
//			Message de succès sur la jsp à ajouter:
			request.setAttribute("validateForm", "Succès !");
		}		
		
		// REDIRECTION : vers la JSP:
		// on récupère le contexte
		// puis on appelle sur ce contexte la page jsp voulue:
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/WEB-INF/jsp/monpanier.jsp");		
		dispatcher.forward(request, response);
	}
	
	private static boolean validate(HttpServletRequest request) {
		boolean validate = true;
		
		// avec request, on récupère ce qui a été POSTE:
		String code = request.getParameter("CODE");
		if (code == null || code.isEmpty()) {
			// et ici on ajoute à la request cet attribut:
			request.setAttribute("errorCode", "(code obligatoire)");
			validate = false;
		}
		
		String categorie = request.getParameter("CATEGORIE");
		if (categorie == null || categorie.isEmpty()) {
			request.setAttribute("errorCategorie", "(catégorie obligatoire)");
			validate = false;
		}
		
		String nom = request.getParameter("NOM");
		if (nom == null || nom.isEmpty()) {
			request.setAttribute("errorNom", "(nom obligatoire)");
			validate = false;
		}
		
		String prix = request.getParameter("PRIX");
		if (prix == null || prix.isEmpty()) {
			request.setAttribute("errorPrix", "(prix obligatoire)");
			validate = false;
		}

		String poids = request.getParameter("POIDS");
		if (poids == null || poids.isEmpty()) {
			request.setAttribute("errorPoids", "(poids obligatoire)");
			validate = false;
		}

		String date = request.getParameter("DATEPICKER");
		if (date == null || date.isEmpty()) {
			request.setAttribute("errorDate", "(date obligatoire)");
			validate = false;
		}
		
		String description = request.getParameter("DESCRIPTION");
		if (description == null || description.isEmpty()) {
			request.setAttribute("errorDescription", "(description obligatoire)");
			validate = false;
		}

		return validate;//facultatif
	}
}
