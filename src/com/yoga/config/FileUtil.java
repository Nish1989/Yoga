package com.yoga.config;

public class FileUtil {

	public static String flipBookFilePathBuilder(int year, int month) {

		String[] monthList = ServerConfig.monthList;

		String monthName = monthList[month - 1];

		String pathBuilder = ServerConfig.storage_Location
				+ ServerConfig.file_Seperator + year
				+ ServerConfig.file_Seperator + monthName
				+ ServerConfig.file_Seperator + ServerConfig.flip_book_jsp;

		return pathBuilder;

	}

	public static String flipBookFilePathBuilder(int year, String monthName,String pageNo) {
		
		String pathBuilder = ServerConfig.storage_Location
				+ ServerConfig.file_Seperator + year
				+ ServerConfig.file_Seperator + monthName
				+ ServerConfig.file_Seperator + ServerConfig.flip_book_jsp + "#page" +  ServerConfig.file_Seperator+pageNo;

		return pathBuilder;

	}
}
