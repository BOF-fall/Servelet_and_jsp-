package bof.BOF.Controller;

import bof.BOF.dao.LoginDao;
import bof.BOF.model.LoginBean;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


/**
 * Servlet implementation class LoginServelet
 */
@WebServlet(name = "LoginServelet", value = "/login-servlet")
public class LoginServelet extends HttpServlet
{
	private static final long serialVersionUID = 1L;

	public void init() {
		new LoginDao();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		this.getServletContext().getRequestDispatcher("/static/html/Connexion.jsp")
								.forward(request, response);
	
	}
	@SuppressWarnings("unused")
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
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
	


