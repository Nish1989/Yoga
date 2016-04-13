package com.yoga.database;

import com.mongodb.DB;
import com.mongodb.Mongo;
import com.yoga.config.ServerConfig;

public class MongoDBConnector {

	static DB dbObj;

	public static DB mongoDbConnector() {

		if (dbObj == null) {

			try {

				Mongo mongoObj = new Mongo(ServerConfig.mongoDB_hostname,
						ServerConfig.mongoDB_port);
				dbObj = mongoObj.getDB(ServerConfig.mongoDB_DB_Name);

			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}

		return dbObj;
	}

}
