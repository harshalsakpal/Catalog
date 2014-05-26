package com.catalog.test;

import java.net.UnknownHostException;
import java.util.ArrayList;

import com.catalog.beans.BookBean;
import com.mongodb.BasicDBList;
import com.mongodb.BasicDBObject;
import com.mongodb.CommandResult;
import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.DBObject;
import com.mongodb.Mongo;

public class SearchTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Mongo mongoClient = null;
		DB db;
		DBCollection collection;
		BasicDBList result = null;
		try {
			mongoClient = new Mongo();
		} catch (UnknownHostException e) {
			e.printStackTrace();
		}
		System.out.println("Fetching db226 mongodb database");
		db = mongoClient.getDB("catalog");
		collection = db.getCollection("tv");

		final DBObject textSearchCommand = new BasicDBObject();
		textSearchCommand.put("text", collection.toString());
		textSearchCommand.put("search", "T1");
		System.out.println("textSearchCommand prepared.");

		final CommandResult commandResult = db.command(textSearchCommand);
		result = (BasicDBList) commandResult.get("results");
		BookBean bookBean = null;
		ArrayList<BookBean> arrayOfBookBean = new ArrayList<BookBean>();
		for (Object bdo : result) {
			bookBean = new BookBean();
			BasicDBObject b = (BasicDBObject) bdo;
			BasicDBObject j = (BasicDBObject) b.get("obj");

			bookBean.setProdId((String) j.get("prodId"));
			bookBean.setProductName((String) j.get("productName"));
			bookBean.setCompanyName((String) j.get("companyName"));
			bookBean.setAuthorName((String) j.get("authorName"));
			bookBean.setISBN((String) j.get("ISBN"));
			bookBean.setPrice((String) j.get("price"));
			bookBean.setDescription((String) j.get("description"));
			bookBean.setGenre((String) j.get("Genre"));
			bookBean.setProductURL((String) j.get("productURL"));
			arrayOfBookBean.add(bookBean);
		}
	}
}
