package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UserDao;
import model.UserBean;
/**
 * Servlet implementation class UserServelet
 */
@WebServlet("/UserServelet")

public class UserServelet extends HttpServlet{
	private static final long serialVersionUID = 1L;
	/**
     * Default constructor. 
     */
	private UserDao userdao=new UserDao();
	 public UserServelet() {
	        // TODO Auto-generated constructor stub
	    }
	 /**
		 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	*/
	 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			// TODO Auto-generated method stub
			response.getWriter().append("Served at: ").append(request.getContextPath());
		
			RequestDispatcher dispatcher = request.getRequestDispatcher("/UserRegister.jsp");
			dispatcher.forward(request, response);
		
		}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String nom =request.getParameter("nom");
		String prenom =request.getParameter("prenom");
		String date_naiss =request.getParameter("date_naiss");
		String cni =request.getParameter("cni");
		String adresse =request.getParameter("adresse");
		String region=request.getParameter("region");
		String password =request.getParameter("password");
		
		UserBean user = new UserBean();
		user.setPrenom(prenom);
		user.setNom(nom);
		user.setDate_naiss(date_naiss);
		user.setCni(cni);
		user.setAdresse(adresse);
		user.setRegion(region);
		user.setPassword(password);
		try {
			userdao.registerUser(user);
			userdao.registerlogin(user);
		} catch (ClassNotFoundException e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher("/Dashboard.jsp");
		dispatcher.forward(request, response);
		
	}

}
