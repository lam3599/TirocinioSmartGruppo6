package control.gestioneAccount;

import bean.Azienda;
import bean.Studente;
import dao.AziendaDaoImpl;
import dao.AziendaDaoInterface;
import dao.StudenteDaoImpl;
import dao.StudenteDaoInterface;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



/**
 * Servlet che permette di inoltra le informazioni dell'utente all jsp.
 *
 */
@WebServlet("/ViewProfileControl")
public class ViewProfileControl extends HttpServlet {
  
  private static final long serialVersionUID = 1L;
       
   
  public ViewProfileControl() {
        super();   
  }

  /**
   * Prende come parametro il tipo di utente loggato e la propria email dalla sessione
   * e richiama un metodo dao per ricavare le informazioni del profilo.
   * 
   * @author: Mario Procia , Anna Maria Rosanova.
   */
  
  
  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    
    HttpSession session = request.getSession();
    
    String tipoUtente = (String) session.getAttribute("tipoUtente");
    String email = (String) session.getAttribute("email");
    
    
    if (tipoUtente != null && tipoUtente.equals("Studente")) {
      
      StudenteDaoInterface studenteDao = new StudenteDaoImpl();
      
      //istanzia il bean restituito dal metodo del dao
      Studente user = studenteDao.getStudenteByEmail(email);
      
      request.setAttribute("bean", user); //ritorna alla request l'oggetto bean 
      
      getServletConfig().getServletContext()
      .getRequestDispatcher("/AccountView.jsp").forward(request, response);
      
    }
    
    if (tipoUtente != null && tipoUtente.equals("Azienda")) {
      
      AziendaDaoInterface aziendaDao = new AziendaDaoImpl();
      
      //istanzia il bean restituito dal metodo del dao
      Azienda user = aziendaDao.getAziendaByEmail(email); 
      
      //ritorna alla request l'oggetto bean 
      request.setAttribute("bean", user);
      
      getServletConfig().getServletContext()
      .getRequestDispatcher("/AccountView.jsp").forward(request, response);
      
    }
    
    if (tipoUtente == null) {
      getServletConfig().getServletContext()
      .getRequestDispatcher("/AccountView.jsp").forward(request, response);
    }
  }

  
  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    
    doGet(request, response);
  }

}
