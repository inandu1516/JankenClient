import daw2.JankenWebService_Service;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.ws.WebServiceRef;

@WebServlet(urlPatterns = {"/JankenServlet"})
public class JankenServlet extends HttpServlet {

    @WebServiceRef(wsdlLocation = "WEB-INF/wsdl/localhost_8080/SOAPjanken/JankenWebService.wsdl")
    private JankenWebService_Service service;
    
    public String[] opcions = new String[2];
    public int jugadors = 0;
    public int guanyador;
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if(jugadors <= 1){
            jugadors++;
            
            String Opcio = request.getParameter("opcio");
            if(jugadors == 1){
                opcions[0] = Opcio;
            }else if(jugadors == 2){
                opcions[1] = Opcio;
            }
            String jugador_1 = opcions[0];
            String jugador_2 = opcions[1];

            request.setAttribute("jugador_1", jugador_1);
            request.setAttribute("jugador_2", jugador_2);

            request.setAttribute("jugadors", jugadors);

            RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/resultats.jsp");
            dispatcher.forward(request, response);
            
        }else{
            RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/resultats.jsp");
            String jugador_1 = opcions[0];
            String jugador_2 = opcions[1];
            request.setAttribute("jugador_1", jugador_1);
            request.setAttribute("jugador_2", jugador_2);
            request.setAttribute("jugadors", jugadors);
            guanyador = resultatTirada(jugador_1, jugador_2);
            request.setAttribute("guanyador", guanyador);
            dispatcher.forward(request, response);
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    private int resultatTirada(java.lang.String jugador1, java.lang.String jugador2) {
        daw2.JankenWebService port = service.getJankenWebServicePort();
        return port.resultatTirada(jugador1, jugador2);
    }
}