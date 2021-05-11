// package html2latex;
     
import java.io.IOException;
 
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
/**
 * Servlet implementation class converter
 */
public class Converter extends HttpServlet {
    private static final long serialVersionUID = 1L;
       
    
     protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        String code = request.getParameter("code");
        
        if(code.isEmpty())
        {
            RequestDispatcher req = request.getRequestDispatcher("index.jsp");
            req.include(request, response);
        }
        else
        {
            RequestDispatcher req = request.getRequestDispatcher("register_2.jsp");
            req.forward(request, response);
        }
    }
 
}