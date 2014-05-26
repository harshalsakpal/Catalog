package com.catalog.servlet;

import java.net.UnknownHostException;

import org.apache.log4j.Logger;

import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.DBCursor;
import com.mongodb.Mongo;

public class Driver {
	static Logger logger = Logger.getLogger(Driver.class);

	public static void main(String[] args) throws UnknownHostException {
		logger.info("public main method starts");
			System.out.println(authenticate());
		logger.debug("public main method ends");
	}

	public static boolean authenticate() throws UnknownHostException {
		DB db = (new Mongo("localhost", 27017)).getDB("catalog");
		boolean flag = true;
		String user = "admin";
		String pass = "admin";
		if (db.authenticate(user, pass.toCharArray())) {
			flag = true;
			System.out.println("Authentication Successful");
			DBCollection dbCollection = db.getCollection("test_info");
			DBCursor dbCursor = dbCollection.find();

			while (dbCursor.hasNext()) {
				System.out.println(dbCursor.next());
			}

		} else {
			System.out.println("Invalid Username or password");
			flag = false;
		}
		return flag;
	}

}
