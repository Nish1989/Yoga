package com.yoga.config;

import java.io.File;
import java.io.IOException;

import org.apache.commons.io.FileUtils;

public class FolderCreater {

	public static void main(String[] args) throws IOException {

		int startYear = 1958;

		int totalYears = 10;

		String destLocation = "D:/ToDelete";

		String fileBookLocation = destLocation + ServerConfig.file_Seperator
				+ "flipbook.jsp";

		File fileBook = new File(fileBookLocation);

		if (!fileBook.exists()) {

			System.out
					.println(" * * * flipbook.jsp missing in  ToDelete Folder * * * ");

			System.exit(0);

		}

		for (int i = 0; i <= totalYears; i++) {

			int year = startYear + i;

			createFolder(fileBook, year, destLocation);
		}

	}

	public static void createFolder(File fileBook, int year, String dest)
			throws IOException {

		String[] monthList = ServerConfig.monthList;

		dest = dest + ServerConfig.file_Seperator + year
				+ ServerConfig.file_Seperator;

		for (String month : monthList) {

			String destLocation = dest + month;

			File file = new File(destLocation + ServerConfig.file_Seperator
					+ "pages");
			if (!file.exists()) {
				if (file.mkdirs()) {

					System.out.println("Directory is created!");

					copyFlipBook(fileBook, destLocation);

				} else {
					System.out.println("Failed to create directory!");
				}
			}

		}

	}

	public static void copyFlipBook(File srcFile, String dest)
			throws IOException {

		File destDir = new File(dest);

		FileUtils.copyFileToDirectory(srcFile, destDir);
	}

}
