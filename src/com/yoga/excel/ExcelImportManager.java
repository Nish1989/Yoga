package com.yoga.excel;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.util.Iterator;

import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Row;

import com.yoga.database.MongoDataInsertManager;
import com.yoga.vo.BookInfoVo;

public class ExcelImportManager {

	public static void main(String[] args) {

		try {
			InputStream inputstream = new FileInputStream(
					"C:/Import_Format.xls");

			new ExcelImportManager().readDataFromExcel(inputstream);

		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	public void readDataFromExcel(InputStream filecontent) {

		try {

			// Get the workbook instance for XLS file
			HSSFWorkbook workbook = new HSSFWorkbook(filecontent);

			readBookInfoExcel(workbook);

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	public void readBookInfoExcel(HSSFWorkbook workbook) {

		try {

			// Get first sheet from the workbook
			HSSFSheet sheet = workbook.getSheetAt(0);

			// Iterate through each rows from first sheet
			Iterator<Row> rowIterator = sheet.iterator();

			while (rowIterator.hasNext()) {

				Row row = rowIterator.next();
				if (row.getRowNum() == 0) {
					continue; // Skip Header Row
				}

				BookInfoVo bookInfoVo = new BookInfoVo();

				bookInfoVo.setYear((int) row.getCell(0).getNumericCellValue());

				bookInfoVo.setMonth((int) row.getCell(1).getNumericCellValue());

				bookInfoVo.setTotalPages((int) row.getCell(2)
						.getNumericCellValue());

				bookInfoVo.setIndexInfo(row.getCell(3).getStringCellValue());

				new MongoDataInsertManager()
						.insertDataIntoBookInfoVo(bookInfoVo);
			}

		} catch (Exception e) {

			e.printStackTrace();
		}
	}

}