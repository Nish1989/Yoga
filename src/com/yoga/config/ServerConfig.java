package com.yoga.config;

public class ServerConfig {

	/*
	 * MongoDB Settings
	 */

	public static final String mongoDB_hostname = "localhost";

	public static final int mongoDB_port = 27017;

	public static final String mongoDB_DB_Name = "Yogo";

	public static final String mongoDB_Book_Collection = "BookCollection";

	/*
	 * Application Config
	 */

	public static final String storage_Location = "magazine";

	public static final String file_Seperator = "/";
	
	public static final String flip_book_jsp = "flipbook.jsp";

	public static final String error_msg = "error";
	

	/*
	 * Months
	 */

	public static final String[] monthList = { "Janaury", "February", "March",
			"April", "May", "June", "July", "August", "September", "October",
			"November", "December" };

}
