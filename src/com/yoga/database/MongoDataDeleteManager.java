package com.yoga.database;

import com.mongodb.BasicDBObject;
import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.yoga.config.ServerConfig;
import com.yoga.vo.BookInfoVo;

public class MongoDataDeleteManager {

	public static void main(String[] args) {

	}

	public void deleteDataFromBookInfoVo(String year, String month) {

		DB dbobj = MongoDBConnector.mongoDbConnector();

		DBCollection collection = dbobj
				.getCollection(ServerConfig.mongoDB_Book_Collection);

		BasicDBObject document = new BasicDBObject();

		document.put("year", Integer.parseInt(year));

		int monthInt = Integer.parseInt(month);

		if (monthInt != 0) {
			document.put("month", monthInt);
		}

		collection.remove(document);

	}
}
