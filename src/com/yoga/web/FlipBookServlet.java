package com.yoga.web;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.collections4.MultiMap;

import com.yoga.config.FileUtil;
import com.yoga.config.ServerConfig;
import com.yoga.database.MongoDBFetchManager;
import com.yoga.vo.BookInfoVo;

public class FlipBookServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		dataProcessing(request, response);
	}

	@Override
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		dataProcessing(request, response);
	}

	private void dataProcessing(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		String forwardPage = null;

		MongoDBFetchManager fetchManager = new MongoDBFetchManager();

		String strYear = request.getParameter("year");

		String strMonth = request.getParameter("month");

		int year = 0;

		int month = 0;

		if (strYear != null && strYear.length() != 0) {

			year = Integer.parseInt(strYear);
		}

		if (strMonth != null && strMonth.length() != 0) {

			month = Integer.parseInt(strMonth);
		}

		if (year == 0 && month == 0) {

			MultiMap multiMap = fetchManager
					.getCompleteBookInfoMap();

			forwardPage = "yearList.jsp";

			request.setAttribute("bookInfoMultiMap", multiMap);

		} else {

			List<BookInfoVo> bookInfoList = fetchManager.getUserInfo(year,
					month);

			if (bookInfoList != null && bookInfoList.size() > 1) {

				forwardPage = "monthList.jsp";

				request.setAttribute("bookInfoList", bookInfoList);
			}

			else if (bookInfoList != null && bookInfoList.size() == 1) {

				forwardPage = "flip.jsp";

				BookInfoVo bookInfoVo = bookInfoList.get(0);

				String srcFile = FileUtil.flipBookFilePathBuilder(
						bookInfoVo.getYear(), bookInfoVo.getMonth());

				request.setAttribute("bookInfoList", bookInfoVo);

				request.setAttribute("srcFile", srcFile);
			}

			else {

				request.setAttribute("msg", ServerConfig.error_msg);

				forwardPage = "index.jsp";
			}

		}

		RequestDispatcher dispatcher = request
				.getRequestDispatcher(forwardPage);

		dispatcher.forward(request, response);

	}

}
