package com.caltech.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.caltech.dao.UserDAO;
import com.mysql.cj.util.StringUtils;

/**
 * Servlet implementation class loginUserServlet
 */
public class loginUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public loginUserServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		UserDAO userDao = new UserDAO();
		if(request!=null) {
			String userName = request.getParameter("user");
			String password = request.getParameter("pwd");
			if(!StringUtils.isEmptyOrWhitespaceOnly(userName) && 
			   !StringUtils.isEmptyOrWhitespaceOnly(password)) {
				try {
					boolean loginResult = userDao.login(userName, password);
					if(loginResult) {
						int participantId = userDao.getParticipantId(userName, password);
						String participantName = userDao.getParticipantName(userName, password);
						response.sendRedirect("showUserBatches.jsp?id="+participantId+"&name="+participantName);
						System.out.println(" success login");
					} else {
						System.out.println(" failure login");
						response.sendRedirect("loginUser.jsp?loginStatus=F");
					}
				} catch (ClassNotFoundException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
			} else {
				response.sendRedirect("loginUser.jsp?loginStatus=F");
			}
		}
	}

}
