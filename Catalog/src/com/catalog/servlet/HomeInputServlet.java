package com.catalog.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;

import com.catalog.beans.BookBean;
import com.catalog.beans.FridgeBean;
import com.catalog.beans.NailPolishBean;
import com.catalog.beans.TVBean;
import com.catalog.service.CatalogService;

/**
 * Servlet implementation class HomeInputServlet
 */
public class HomeInputServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	static Logger logger = Logger.getLogger(HomeInputServlet.class);

	public HomeInputServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		logger.info("HomeInputServlet doPost() Starts");
		String homeInput = "", redirect = "";
		HttpSession session = request.getSession();
		logger.info("Value of Input From Home ::  "
				+ request.getParameter("homeInput"));
		if (request.getParameter("homeInput") != null
				|| !"".equals(request.getParameter("homeInput")))
			homeInput = request.getParameter("homeInput");

		if (homeInput.equals("books")) {
			ArrayList<BookBean> bookBean = CatalogService.getBookData();
			session.setAttribute("bookBean", bookBean);
			redirect = "pages/listBooks.jsp";
		} else if (homeInput.equals("tvs")) {
			ArrayList<TVBean> tvBean = CatalogService.getTVData();
			session.setAttribute("tvBean", tvBean);
			redirect = "pages/listTV.jsp";
		} else if (homeInput.equals("nailpolishes")) {
			ArrayList<NailPolishBean> nailPolishBean = CatalogService
					.getNailPolishData();
			session.setAttribute("nailPolishBean", nailPolishBean);
			redirect = "pages/listNailPolish.jsp";
		} else if (homeInput.equals("fridges")) {
			ArrayList<FridgeBean> fridgeBean = CatalogService.getFridgeData();
			session.setAttribute("fridgeBean", fridgeBean);
			redirect = "pages/listFridge.jsp";
		} else
			redirect = "pages/home.jsp";
		logger.info("HomeInputServlet doPost() Ends");
		response.sendRedirect(redirect);
	}
}
