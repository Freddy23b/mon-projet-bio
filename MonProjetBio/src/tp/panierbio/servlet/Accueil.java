package tp.panierbio.servlet;

import java.io.IOException;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Accueil
 */
public class Accueil extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//DD:
		System.out.println("Accueil.doGet();");
		
		// Ajouter un oj Date dans la req pour le rendre dispo dans la jsp:
		request.setAttribute("today", new Date());
		
		// REDIRECTION : vers la JSP:
		// on récupère le contexte
		// puis on appelle sur ce contexte la page jsp voulue:
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/WEB-INF/jsp/accueil.jsp");
		// redirection:
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
