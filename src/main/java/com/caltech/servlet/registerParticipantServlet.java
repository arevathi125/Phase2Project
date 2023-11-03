package com.caltech.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.caltech.dao.registerDAO;

/**
 * Servlet implementation class registerParticipantServlet
 */
public class registerParticipantServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public registerParticipantServlet() {
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
		registerDAO registerDao = new registerDAO();
		if(request!=null) {
			int participantId = Integer.parseInt((String)request.getParameter("participantId"));
			int batchId = Integer.parseInt((String)request.getParameter("batchId"));
			String participantName = (String)request.getParameter("name");
			if(participantId!=0 && batchId!=0
					&& participantName!=null) {
				try {
						int insertResult = registerDao.insert(participantId, batchId,participantName);
						
						if(insertResult>0) {
							
							System.out.println(" success login");
							response.sendRedirect("success2.jsp");
							} else {
							System.out.println(" failure login");
							response.sendRedirect("registerBatch.jsp");
						}
					
				} catch (ClassNotFoundException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
			}
		}
	}

}
