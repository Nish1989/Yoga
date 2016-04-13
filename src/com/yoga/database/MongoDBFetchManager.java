package com.yoga.database;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import org.apache.commons.collections4.MultiMap;
import org.apache.commons.collections4.map.MultiValueMap;

import com.mongodb.BasicDBObject;
import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.DBCursor;
import com.mongodb.DBObject;
import com.yoga.config.ServerConfig;
import com.yoga.vo.BookInfoVo;

public class MongoDBFetchManager {

	public static void main(String[] args) {
		MultiMap multiMap = new MongoDBFetchManager().getCompleteBookInfoMap();

		// get all the set of keys
		Set<Integer> keys = multiMap.keySet();

		// iterate through the key set and display key and values
		for (int key : keys) {

			List<Integer> abc = (List<Integer>) multiMap.get(key);

			System.out.println(abc.contains(4));

			System.out.println("Key = " + key);
			System.out.println("Values => " + abc + "\n");
		}

	}

	public List<BookInfoVo> getUserInfo(int year, int month) {
		DB dbobj = MongoDBConnector.mongoDbConnector();

		DBCollection coll = dbobj
				.getCollection(ServerConfig.mongoDB_Book_Collection);

		BasicDBObject query = new BasicDBObject();
		query.put("year", year);

		if (month != 0) {

			query.put("month", month);

		}

		DBCursor result = coll.find(query);

		result.sort(new BasicDBObject("month", 1));

		List<BookInfoVo> bookInfoList = new ArrayList<BookInfoVo>();

		DBObject dbObj = null;
		while (result.hasNext()) {
			dbObj = result.next();

			BookInfoVo bookInfoVo = new BookInfoVo();

			bookInfoVo = populateBookInfoVo(dbObj, bookInfoVo);

			bookInfoList.add(bookInfoVo);

		}

		return bookInfoList;

	}

	public List<BookInfoVo> getCompleteBookInfoList() {
		DB dbobj = MongoDBConnector.mongoDbConnector();

		DBCollection coll = dbobj
				.getCollection(ServerConfig.mongoDB_Book_Collection);

		DBCursor result = coll.find();

		result.sort(new BasicDBObject("year", 1).append("month", 1));

		List<BookInfoVo> bookInfoList = new ArrayList<BookInfoVo>();

		DBObject dbObj = null;
		while (result.hasNext()) {
			dbObj = result.next();

			BookInfoVo bookInfoVo = new BookInfoVo();

			bookInfoVo = populateBookInfoVo(dbObj, bookInfoVo);

			bookInfoList.add(bookInfoVo);

		}

		return bookInfoList;

	}

	public MultiMap getCompleteBookInfoMap() {
		DB dbobj = MongoDBConnector.mongoDbConnector();

		DBCollection coll = dbobj
				.getCollection(ServerConfig.mongoDB_Book_Collection);

		DBCursor result = coll.find();

		result.sort(new BasicDBObject("year", 1).append("month", 1));

		MultiMap multiMap = new MultiValueMap();

		DBObject dbObj = null;
		while (result.hasNext()) {
			dbObj = result.next();

			int year = ((Number) dbObj.get("year")).intValue();

			int month = ((Number) dbObj.get("month")).intValue();

			multiMap.put(year, month);

		}

		return multiMap;

	}

	public BookInfoVo populateBookInfoVo(DBObject dbObj, BookInfoVo bookInfoVo) {

		int year = ((Number) dbObj.get("year")).intValue();
		bookInfoVo.setYear(year);

		int month = ((Number) dbObj.get("month")).intValue();
		bookInfoVo.setMonth(month);

		int totalPages = ((Number) dbObj.get("totalPages")).intValue();
		bookInfoVo.setTotalPages(totalPages);

		String indexInfo = (String) dbObj.get("indexInfo");
		bookInfoVo.setIndexInfo(indexInfo);

		return bookInfoVo;

	}

}
