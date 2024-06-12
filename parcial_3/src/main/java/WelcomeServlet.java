

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Servlet implementation class WelcomeServlet
 */
public class WelcomeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public WelcomeServlet() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 response.setContentType("text/html; charset=UTF-8");
	      PrintWriter out = response.getWriter();
	      
	      out.println("""
	      		 
	              <h1>creacion de cookies</h1>
	              <form action="LoginServlet" method="post">

Username: <input type="text" name="user">
<br>
Password: <input type="password" name="pwd">
<br>
<input type="submit" value="Login">
</form>
	      		""");
	      
	      // Creación de una cookie
	        Cookie userCookie = new Cookie("username", "jorge_pajarito"); 
	        userCookie.setMaxAge(60 * 60 * 24); // 1 día
	        response.addCookie(userCookie);

	        // Lectura de cookies
	        Cookie[] cookies = request.getCookies();
	        if (cookies != null) {
	            for (Cookie cookie : cookies) {
	                if (cookie.getName().equals("username")) {
	                    response.getWriter().println("Hola soy, " + cookie.getValue() +" y se ha creado una nueva cookies si deseas puedes borrar cookies en tu navegador");
	                }
	            }
	        } else {
	            response.getWriter().println("No se encontraron cookies "
	            		+ "PORQUE TIENE QUE VOLVER A CARGAR LA PAGINA Y TE ALMACENARA UNA COOKIES.");
	        }
	    
	

	      out.println("""
	            <!DOCTYPE html>
	            <html>
	            <head><title></title></head>
	            <body>
	              <h1>html por servlet!</h1>
	              <p>Request URI: %s</p>
	              <p>Protocol:%s</p>
	              <p>Remote Address: %s</p>
	              <p>A Random Number: <strong>%f</strong></p>
	              <h1>archivo JSP</h1>
	              <p>deseas ir al archivo jsp ?</p>
                 <a href="http://localhost:8080/parcial_3/parcial_3.jsp">archivo jsp 2 recordar que sale por puerto 8080 punto</a>
	            </body>
	            </html>
	            """.formatted(request.getRequestURI(), request.getProtocol(),
	                          request.getRemoteAddr(), Math.random()));
	      
	      out.close();
	      
	      
	      
	}
	      	   
	
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
