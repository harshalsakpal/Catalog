package com.catalog.test;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;

import com.catalog.beans.TestBean;
import com.google.gson.Gson;

public class Test {

	public static void main(String[] args) {
		Gson gson = new Gson();
		try {

			BufferedReader br = new BufferedReader(new FileReader(
					"h:\\file.json"));

			// convert the json string back to object
			TestBean testBean = gson.fromJson(br, TestBean.class);

			System.out.println(testBean.getProdId());
			System.out.println(testBean.getProductName());
			System.out.println(testBean.getPrice());
			System.out.println(testBean.getAuthorName());

			
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

}
