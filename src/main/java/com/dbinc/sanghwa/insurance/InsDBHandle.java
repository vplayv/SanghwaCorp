package com.dbinc.sanghwa.insurance;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

public class InsDBHandle {
	final static String url = "jdbc:oracle:thin:@localhost:1521:prod";
	final static String system = "scott";
	final static String oracle = "tiger";

	Connection conn = null;
	PreparedStatement pstmt = null;

	public InsDBHandle() {
		super();
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			System.out.println("driver on...");
			dbConnect();
		} catch (Exception e) {
			System.out.println("fail");
		}
	}

	public void dbConnect() {
		try {
			conn = DriverManager.getConnection(url, system, oracle);
			System.out.println("DB login...\n");
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("DB login fail!\n");
		}
	}

	public String selectCalc() {
		JSONArray arr = new JSONArray();
		String sql = "SELECT p_name, p_type, p_birth FROM pet";
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				String p_name = rs.getString("p_name");
				String p_type = rs.getString("p_type");
				Date p_birth = rs.getDate("p_birth");

				JSONObject o = new JSONObject();
				o.put("p_name", p_name);
				o.put("p_type", p_type);
				o.put("p_birth", p_birth);

				arr.add(o);
			}
			rs.close(); // cursor close
			return arr.toJSONString();
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
}
