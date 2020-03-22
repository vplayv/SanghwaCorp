package com.dbinc.sanghwa.faq;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.sql.DataSource;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.omg.CORBA.Request;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.SessionAttributes;

public class FaqDBHandle {

	@Autowired
	DataSource dataSource;

	Connection conn;
	PreparedStatement pstmt;

	@Autowired
	Pagination pagi;

	public String makeFaqJson() {

		JSONArray arr = new JSONArray();
		ResultSet rs = null;

		String sql = "select f_idx, question, answer from (select rownum as rnum, A.f_idx, A.question, A.answer from(select f_idx, question, answer from faq order by f_idx desc) A where rownum <=?) X where X.rnum >=?";
		try {
			conn = dataSource.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, pagi.getPage() * pagi.getListSize());
			pstmt.setInt(2, (pagi.getPage() - 1) * pagi.getListSize() + 1);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				int f_idx = rs.getInt("f_idx");
				String question = rs.getString("question");
				String answer = rs.getString("answer");

				JSONObject o = new JSONObject();
				o.put("f_idx", f_idx);
				o.put("question", question);
				o.put("answer", answer);
				arr.add(o);
			}
			rs.close();
			return arr.toJSONString();

		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	public int countFaq() {
		String sql = "select count(*) as faqCnt from faq";
		int rowcnt = 0;
		ResultSet rs = null;

		try {
			conn = dataSource.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				rowcnt = rs.getInt(1);
			}
			rs.close();
			return rowcnt;

		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		}
	}
}
