package com.yoga.admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yoga.database.MongoDBFetchManager;
import com.yoga.database.MongoDataDeleteManager;
import com.yoga.database.MongoDataInsertManager;
import com.yoga.vo.BookInfoVo;

public class AdministrativeServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		adminDataProcessing(request, response);
	}

	@Override
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		adminDataProcessing(request, response);
	}

	private void adminDataProcessing(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		String forwardPage = null;

		MongoDBFetchManager fetchManager = new MongoDBFetchManager();

		String operation = request.getParameter("operation");

		if (operation != null) {

			String year = request.getParameter("year");

			String month = request.getParameter("month");

			if (operation.equalsIgnoreCase("add")) {

				String totalPages = request.getParameter("totalPages");

				String indexInfo = request.getParameter("indexInfo");

				new MongoDataInsertManager().populateBookInfoVo(year, month,
						totalPages, indexInfo);

			} else {

				new MongoDataDeleteManager().deleteDataFromBookInfoVo(year,
						month);

			}

		}

		List<BookInfoVo> bookInfoList = fetchManager.getCompleteBookInfoList();

		forwardPage = "admin.jsp";

		request.setAttribute("bookInfoList", bookInfoList);

		RequestDispatcher dispatcher = request
				.getRequestDispatcher(forwardPage);

		dispatcher.forward(request, response);

	}

}
