package com.dbinc.sanghwa.insurance;

import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.text.DateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class InsuranceController {
	@Autowired
	CalcDBHandle db;

	@RequestMapping(value = "/inscalmoney", method = { RequestMethod.GET, RequestMethod.POST })
	public String inscalmoney(HttpServletRequest request, Model model, HttpSession session) {
		return "inscalmoney";
	}

	@RequestMapping(value = "/inscusinfo", method = { RequestMethod.GET, RequestMethod.POST })
	public String inscusinfo(HttpServletRequest request, Model model) {
		return "inscusinfo";
	}

	@RequestMapping(value = "/insobligation", method = { RequestMethod.GET, RequestMethod.POST })
	public String insobligation(Locale locale, Model model) {
		return "insobligation";

	}

	@RequestMapping(value = "/insfinalchk", method = { RequestMethod.GET, RequestMethod.POST })
	public String insfinalchk(Locale locale, Model model) {
		return "insfinalchk";
	}

	@RequestMapping(value = "/selectpetinfo", method = { RequestMethod.GET, RequestMethod.POST })
	public void selectpetinfo(HttpServletResponse response, Model model, @RequestParam String p_name) {
		response.setContentType("text/html; charset=UTF-8");
		try {
			PrintWriter out = response.getWriter();
			System.out.println(p_name);

			String jsonStr = db.selectCalc(p_name);

			model.addAttribute("");

			if (jsonStr != null) {
				out.print(jsonStr);
				out.flush();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
