package com.dbinc.sanghwa.petinfo;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.Locale;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class PetInfoController {
	@Autowired
	DataSource dataSource;

	@RequestMapping(value = "/petinfoinsert", method = RequestMethod.GET)
	public String petinfoinsert(Locale locale, Model model) {
		return "petinfoinsert";
	}

	@RequestMapping(value = "/petinfoinsertsave", method = RequestMethod.POST)
	public String petinfoinsertsave(@RequestParam("p_photo") MultipartFile p_photo,
			@RequestParam("p_name") String p_name, @RequestParam("p_type") String p_type,
			@RequestParam("p_birth") String p_birth, @RequestParam("p_gender") String p_gender,
			@RequestParam("p_weight") int p_weight, @RequestParam("p_status") String p_status, Model model) {
		try {
			// 한글 안깨지게..
			// String s = new String(p_photo.getOriginalFilename().getBytes("8859_1"),
			// "utf-8");
			InputStream pfile = p_photo.getInputStream();
			// db connection 객체 얻어오기
			Connection conn = dataSource.getConnection();
			String sql = "insert into pet values(?,?,?,?,?,?,?,?,?)";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			// pstmt.setString(1, s);
			pstmt.setInt(1, 1);
			pstmt.setBlob(2, pfile);
			pstmt.setString(3, p_name);
			pstmt.setString(4, p_type);
			pstmt.setString(5, p_birth);
			pstmt.setString(6, p_gender);
			pstmt.setInt(7, p_weight);
			pstmt.setString(8, p_status);
			pstmt.setString(9, "hello");
			/* String p_id = (String) session.getAttribute("c_id"); */
			/* pstmt.setString(7, p_id); */

			pstmt.execute();
			conn.close();
			model.addAttribute("insresult", "추가성공");
		} catch (Exception e) {
			model.addAttribute("insresult", "실패" + e.getMessage());
		}
		return "saveresult";
	}

	@RequestMapping(value = "/petinfoupdate", method = RequestMethod.GET)
	public String petinfoupdate(Locale locale, Model model) {
		return "petinfoupdate";
	}

	/*
	 * @RequestMapping(value = "/petinfoupdate", method = RequestMethod.GET) public
	 * String petinfoupdate(Locale locale, Model model) { return "petinfoupdate"; }
	 * 
	 * @RequestMapping(value = "/petinfoupdatesave", method = RequestMethod.POST)
	 * public String petinfoupdatesave(@RequestParam("p_photo") MultipartFile
	 * p_photo,
	 * 
	 * @RequestParam("p_name") String p_name, @RequestParam("p_type") String p_type,
	 * 
	 * @RequestParam("p_birth") String p_birth, @RequestParam("p_gender") String
	 * p_gender,
	 * 
	 * @RequestParam("p_weight") int p_weight, @RequestParam("p_status") String
	 * p_status, Model model) { try { // 한글 안깨지게.. // String s = new
	 * String(p_photo.getOriginalFilename().getBytes("8859_1"), // "utf-8");
	 * InputStream pfile = p_photo.getInputStream(); // db connection 객체 얻어오기
	 * Connection conn = dataSource.getConnection(); String sql =
	 * "update pet set pfile=?, p_name=?, p_type=?,p_birth=?, p_gender=?,p_weight=?, p_status=? where p_id=?"
	 * ;
	 * 
	 * PreparedStatement pstmt = conn.prepareStatement(sql); // pstmt.setString(1,
	 * s); pstmt.setBlob(1, pfile); pstmt.setString(2, p_name); pstmt.setString(3,
	 * p_type); pstmt.setString(4, p_birth); pstmt.setString(5, p_gender);
	 * pstmt.setInt(6, p_weight); pstmt.setString(7, p_status); String p_id =
	 * (String) session.getAttribute("c_id"); pstmt.setString(7, p_id);
	 * 
	 * pstmt.execute(); conn.close(); model.addAttribute("insresult", "추가성공"); }
	 * catch (Exception e) { model.addAttribute("insresult", "실패" + e.getMessage());
	 * } return "saveresult"; }
	 */

	@RequestMapping(value = "/petinfoempty", method = RequestMethod.GET)
	public String petinfoempty(Locale locale, Model model) {
		return "petinfoempty";
	}

	@RequestMapping(value = "/petinfoshow", method = RequestMethod.GET)
	public String petinfoshow(Locale locale, Model model) {
		return "petinfoshow";
	}
}
