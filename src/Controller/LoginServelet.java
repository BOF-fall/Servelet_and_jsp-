package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.LoginDao;
import model.LoginBean;

/**
 * Servlet implementation class LoginServelet
 */
@WebServlet("/LoginServelet")

public class LoginServelet extends HttpServlet{
	private static final long serialVersionUID = 1L;
	public void init() {
		new LoginDao();
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	/*	response.getWriter().append("Served at: ").append(request.getContextPath());*/
		this.getServletContext().getRequestDispatcher("../Connexion.jsp").forward(request, response);
	
		/**RequestDispatcher dispatcher = request.getRequestDispatcher("../Connexion.jsp");
		dispatcher.forward(request, response);*/
	
	}
	@SuppressWarnings("unused")
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String cni = request.getParameter("cni");
		String password = request.getParameter("password");
		
		LoginBean loginBean = new LoginBean();
		loginBean.setCni(cni);
		loginBean.setPassword(password);
		try {
			if (LoginDao.validate(loginBean)) {
				HttpSession session = request.getSession();
				session.setAttribute("cni",cni);
				response.sendRedirect("../Connexion.jsp");
			} else {
				//session.setAttribute("user", cni);
				HttpSession session = request.getSession();
				response.sendRedirect("../Inscription.jsp");
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}

	}
	


