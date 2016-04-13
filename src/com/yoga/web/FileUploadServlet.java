package com.yoga.web;

import java.io.IOException;
import java.io.InputStream;
import java.util.Iterator;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.yoga.database.MongoDBFetchManager;
import com.yoga.excel.ExcelImportManager;
import com.yoga.vo.BookInfoVo;

public class FileUploadServlet extends HttpServlet {

	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// Check that we have a file upload request

		String forwardPage = "admin.jsp";

		DiskFileItemFactory factory = new DiskFileItemFactory();

		// Create a new file upload handler
		ServletFileUpload upload = new ServletFileUpload(factory);

		try {
			// Parse the request to get file items.
			List fileItems = upload.parseRequest(request);

			// Process the uploaded file items
			Iterator i = fileItems.iterator();

			while (i.hasNext()) {
				FileItem item = (FileItem) i.next();

				if (!item.isFormField()) {

					InputStream filecontent = item.getInputStream();

					new ExcelImportManager().readDataFromExcel(filecontent);

				}

			}

			MongoDBFetchManager fetchManager = new MongoDBFetchManager();

			List<BookInfoVo> bookInfoList = fetchManager
					.getCompleteBookInfoList();

			request.setAttribute("bookInfoList", bookInfoList);

			RequestDispatcher dispatcher = request
					.getRequestDispatcher(forwardPage);

			dispatcher.forward(request, response);

		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}

}