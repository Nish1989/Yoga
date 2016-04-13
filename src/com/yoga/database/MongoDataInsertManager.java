package com.yoga.database;

import com.mongodb.BasicDBObject;
import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.yoga.config.ServerConfig;
import com.yoga.vo.BookInfoVo;

public class MongoDataInsertManager {

	public static void main(String[] args) {

	}

	public void populateBookInfoVo(String year, String month,
			String totalPages, String indexInfo) {

		BookInfoVo bookInfoVo = new BookInfoVo();

		bookInfoVo.setYear(Integer.parseInt(year));

		bookInfoVo.setMonth(Integer.parseInt(month));

		bookInfoVo.setTotalPages(Integer.parseInt(totalPages));

		bookInfoVo.setIndexInfo(indexInfo);

		new MongoDataInsertManager().insertDataIntoBookInfoVo(bookInfoVo);

	}

	public void insertDataIntoBookInfoVo(BookInfoVo bookInfoVo) {

		DB dbobj = MongoDBConnector.mongoDbConnector();

		DBCollection collection = dbobj
				.getCollection(ServerConfig.mongoDB_Book_Collection);

		BasicDBObject document = new BasicDBObject();

		document.put("year", bookInfoVo.getYear());

		document.put("month", bookInfoVo.getMonth());

		document.put("totalPages", bookInfoVo.getTotalPages());

		document.put("indexInfo", bookInfoVo.getIndexInfo());

		collection.insert(document);

	}

}
