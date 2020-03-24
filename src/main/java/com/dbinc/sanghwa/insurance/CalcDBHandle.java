package com.dbinc.sanghwa.insurance;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.sql.DataSource;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class CalcDBHandle {

	@Autowired
	DataSource dataSource;

	Connection conn;
	PreparedStatement pstmt;

	public String selectCalc(String petname) {
		JSONArray arr = new JSONArray();
		String sql = "SELECT p_name, p_type, p_birth FROM petest where p_name = ?";
		ResultSet rs = null;
		try {
			conn = dataSource.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, petname);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				String p_name = rs.getString("p_name");
				String p_type = rs.getString("p_type");
				Date p_birth = rs.getDate("p_birth");

				JSONObject o = new JSONObject();
				o.put("p_name", p_name);
				o.put("p_type", p_type);
				o.put("p_birth", p_birth.toString());

				arr.add(o);
			}
			rs.close(); // cursor close
			return arr.toJSONString();
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	public String selectCalc() {
		JSONArray arr = new JSONArray();
		String sql = "SELECT p_name, p_type, p_birth FROM petest";
		ResultSet rs = null;
		try {
			conn = dataSource.getConnection();
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

	public String selectCus() {
		JSONArray arr = new JSONArray();
		String sql = "SELECT c_name, c_pid, c_zipcode, c_road, c_detail FROM pet_customer";
		ResultSet rs = null;
		try {
			conn = dataSource.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				String c_name = rs.getString("c_name");
				String c_pid = rs.getString("c_pid");
				String c_zipcode = rs.getString("c_zipcode");
				String c_road = rs.getString("c_road");
				String c_detail = rs.getString("c_detail");

				JSONObject o = new JSONObject();
				o.put("c_name", c_name);
				o.put("c_pid", c_pid);
				o.put("c_zipcode", c_zipcode);
				o.put("c_road", c_road);
				o.put("c_detail", c_detail);

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
