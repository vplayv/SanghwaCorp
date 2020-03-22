package com.dbinc.sanghwa.insurance;

import java.io.PrintWriter;
import java.util.Calendar;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class InsuranceController {
	@RequestMapping(value = "/inspetinfo", method = { RequestMethod.GET, RequestMethod.POST })
	public String inspetinfo(Locale locale, Model model) {
		return "inspetinfo";
	}

	@RequestMapping(value = "/inscalcmoney", method = { RequestMethod.GET, RequestMethod.POST })
	public String inscalcmoney(HttpServletRequest request, Model model) {
		try {
			request.setCharacterEncoding("utf-8");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		String birth = request.getParameter("birthinput");

		int yearbirth = Integer.parseInt(birth.substring(0, 4));

		Calendar cal = Calendar.getInstance();
		int todayyear = cal.get(cal.YEAR);

		int agecalc = todayyear - yearbirth + 1;

		model.addAttribute("petinput", request.getParameter("petinput"));
		model.addAttribute("birthinput", agecalc);
		return "inscalcmoney";
	}

	@RequestMapping(value = "/selectpetinfo", method = { RequestMethod.GET, RequestMethod.POST })
	public void selectpetinfo(HttpServletResponse response, Model model) {
		response.setContentType("text/html; charset=UTF-8");
		InsDBHandle db = new InsDBHandle();
		try {
			PrintWriter out = response.getWriter();
			String jsonStr = db.selectCalc();
			if (jsonStr != null) {
				out.print(jsonStr);
				out.flush();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
