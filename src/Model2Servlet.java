import javax.servlet.*;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;

@WebServlet("/Model2Servlet")
public class Model2Servlet extends GenericServlet {
	private static final long serialVersionUID = 1L;
	public void service(ServletRequest request, ServletResponse
			response)
			throws ServletException, java.io.IOException {
			String userName = request.getParameter("userName");
			String password = request.getParameter("password");
			if (userName == null) {
			RequestDispatcher rd =
			request.getRequestDispatcher("/Login.jsp");
			rd.forward(request, response);
			}
			else {
			if (password != null && userName.equals("aibo")
			&& password.equals("kitada")) {
			// login successful
			RequestDispatcher rd =
			request.getRequestDispatcher("/Welcome.jsp");
			rd.forward(request, response);
			}
			else {
			// login failed
			request.setAttribute("error", "yes");
			RequestDispatcher rd =
			request.getRequestDispatcher("/Login.jsp");
			rd.forward(request, response);
			}
			}
			}
  
   
}
