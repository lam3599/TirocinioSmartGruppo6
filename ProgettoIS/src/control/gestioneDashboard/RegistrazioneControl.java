package control.gestioneDashboard;

import bean.Azienda;
import bean.Studente;
import dao.AziendaDaoImpl;
import dao.AziendaDaoInterface;
import dao.StudenteDaoImpl;
import dao.StudenteDaoInterface;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.UUID;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import util.FileUtil;

/**
 * Servlet che permette la registrazione in base al tipo di utente,
 * crea il bean e poi inserisce i dati nel database.
 *
 */
@WebServlet("/RegistrazioneControl")
  
public class RegistrazioneControl extends HttpServlet {
  private static final long serialVersionUID = 1L;
  
  public RegistrazioneControl() {

  }

  /**
     * Prende il parametro tipo per controllare il tipo di utente da registrare
     * e a seconda se � uno Studente o Azienda istanzia il bean.
     * Subito dopo istanzia l'interfaccia dao
     * e l'implementazione dell'interfaccia per eseguire le query
     * e ritorna un risultato a seconda se l'operazione � riuscita oppure no.
     * 
     * @author: Mario Procida,  Francesco D'auria
     */
  
  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    PrintWriter out = response.getWriter();
    
    String userType = request.getParameter("tipo");
    
    if (userType.equals("Studente")) {
      
      String matricola = request.getParameter("matricola");
      String nome = request.getParameter("nome");
      String cognome = request.getParameter("cognome");
      String password = request.getParameter("password");
      String codiceFiscale = request.getParameter("codiceFiscale");
      String email = request.getParameter("email");
      String dataNascita = request.getParameter("dataNascita");
      String luogoNascita = request.getParameter("luogoNascita");
      
      //genera un ID univoco per l'utente
      String uniqueID = UUID.randomUUID().toString();
      Studente user = new Studente();

      user.setMatricola(matricola);
      user.setNome(nome);
      user.setCognome(cognome);
      user.setPassword(password);
      user.setCodiceFiscale(codiceFiscale);
      user.setEmail(email);
      user.setDataNascita(dataNascita);
      user.setLuogoNascita(luogoNascita);
      user.setUniqueID(uniqueID);
      
      StudenteDaoInterface studenteDao = new StudenteDaoImpl();
      
      boolean userRegistered = studenteDao.registerUser(user);

      if (userRegistered) {
        
        String path = getServletContext().getInitParameter("fsroot");
        FileUtil fu = new FileUtil();
        
        /*Richiama il metodo di FileManager per creare una folder
        con l'id unico dell'utente appena registrato */
        
        fu.createFolder(path, uniqueID);
        
        out.println("<script type=\"text/javascript\">");
        out.println("alert('Registrazione effettuata con successo."
            + "Ora puoi effettuare l accesso');");
        out.println("location='index.jsp';");
        out.println("</script>");
        
      } else {
        out.println("<script type=\"text/javascript\">");
        out.println("alert('Registrazione non riuscita, riprova');");
        out.println("window.history.back()");
        out.println("</script>");
        
      }
    }   else if (userType.equals("Azienda")) {
      
      String nomeAzienda = request.getParameter("nomeAzienda");
      String partitaIva = request.getParameter("partitaIva");
      String email = request.getParameter("email");
      String password = request.getParameter("password");
      String sede = request.getParameter("sede");
      String telefono = request.getParameter("telefono");
      
      //genera un ID univoco per l'utente
      String uniqueID = UUID.randomUUID().toString(); 
      
      Azienda user = new Azienda();
      
      user.setNomeAzienda(nomeAzienda);
      user.setP_iva(partitaIva);
      user.setEmail(email);
      user.setPassword(password);
      user.setSede(sede);
      user.setTelefono(telefono);
      user.setUniqueID(uniqueID);
      
      AziendaDaoInterface aziendaDao = new AziendaDaoImpl();
      
      boolean userRegistered = aziendaDao.registerUser(user);
      
      if (userRegistered) {
        
        String path = getServletContext().getInitParameter("fsroot");
        FileUtil fm = new FileUtil();
        
        /*Richiama il metodo di FileManager per creare una folder
        *con l'id unico dell'utente appena registrato
        */
        
        fm.createFolder(path, uniqueID);
        out.println("<script type=\"text/javascript\">");
        out.println("alert('Registrazione effettuata con successo."
            + "Ora puoi effettuare l accesso');");
        out.println("location='index.jsp';");
        out.println("</script>");
        
      } else {
        
        out.println("<script type=\"text/javascript\">");
        out.println("alert('Registrazione non riuscita, riprova')");
        out.println("window.history.back()");
        out.println("</script>");
      }
      
    }
    
    out.flush();
    out.close();
  }

}
