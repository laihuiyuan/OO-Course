/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package net.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.model.*;

/**
 * 关于借阅记录操作的控制器
 * <p/>
 *
 */
@WebServlet(name = "RecordBook", urlPatterns = {"/RecordBook"})
public class RecordBook extends HttpServlet {

	/**
	 * Processes requests for both HTTP
	 * <code>GET</code> and
	 * <code>POST</code> methods.
	 * <p/>
	 * @param request  servlet request
	 * @param response servlet response
	 * <p/>
	 * @throws ServletException if a servlet-specific error occurs
	 * @throws IOException      if an I/O error occurs
	 */
	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=UTF-8");


		String viewType = request.getParameter("viewType");
		String pageNowString = request.getParameter("pageNow");
		if (viewType == null) {
			viewType = "all";
		}

		int pageNow = 1;
		int pageSize = 10;

		if (pageNowString != null) {
			pageNow = Integer.parseInt(pageNowString);
		}


		RecordBO rbo = new RecordBO();

		if (viewType.equals("in")) {
			request.setAttribute("recordList", rbo.getAllInRecordList( pageNow, pageSize));
		} else if (viewType.equals("out")) {
			request.setAttribute("recordList", rbo.getAllOutRecordList( pageNow, pageSize));
		} else {
			request.setAttribute("recordList", rbo.getAllRecordList( pageNow, pageSize));
		}

		int rowCount = rbo.getRowCount();
		int pageCount = (int) Math.ceil(1.0 * rowCount / pageSize);
		request.getRequestDispatcher("RecordBookAdmin.jsp?viewType=" + viewType + "&pageNow=" + pageNow + "&pageCount=" + pageCount).forward(request, response);

	}

	// <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
	/**
	 * Handles the HTTP
	 * <code>GET</code> method.
	 * <p/>
	 * @param request  servlet request
	 * @param response servlet response
	 * <p/>
	 * @throws ServletException if a servlet-specific error occurs
	 * @throws IOException      if an I/O error occurs
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		processRequest(request, response);
	}

	/**
	 * Handles the HTTP
	 * <code>POST</code> method.
	 * <p/>
	 * @param request  servlet request
	 * @param response servlet response
	 * <p/>
	 * @throws ServletException if a servlet-specific error occurs
	 * @throws IOException      if an I/O error occurs
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		processRequest(request, response);
	}

	/**
	 * Returns a short description of the servlet.
	 * <p/>
	 * @return a String containing servlet description
	 */
	@Override
	public String getServletInfo() {
		return "Short description";
	}// </editor-fold>
}
