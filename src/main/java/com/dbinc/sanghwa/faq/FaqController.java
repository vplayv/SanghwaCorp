package com.dbinc.sanghwa.faq;

import java.io.PrintWriter;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class FaqController {

	@Autowired
	FaqDBHandle faqDBHandle;

	@Autowired
	Pagination pagi;

	@RequestMapping(value = "/faqtablemake", method = RequestMethod.GET)
	public void selectfaqFn(HttpServletResponse response, Model model) {
		response.setContentType("text/html; charset=UTF-8");
		try {
			PrintWriter out = response.getWriter();
			String jsonStr = faqDBHandle.makeFaqJson();
			if (jsonStr != null) {
				out.print(jsonStr);
				out.flush();
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}

	@RequestMapping(value = "/cnt", method = RequestMethod.GET)
	public void cntfn(HttpServletResponse response, Model model) {
		response.setContentType("text/html; charset=UTF-8");
		int cnt = 0;
		try {
			PrintWriter out = response.getWriter();
			cnt = faqDBHandle.countFaq();
			System.out.println(cnt);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}

	@RequestMapping(value = "/faq", method = RequestMethod.GET)
	public String getList(Model model, @RequestParam(required = false, defaultValue = "1") int page,
			@RequestParam(required = false, defaultValue = "1") int range

	) throws Exception {
		try {
			int listCnt = faqDBHandle.countFaq();
			System.out.println(page);
			pagi.pageInfo(page, faqDBHandle.countFaq());
			model.addAttribute("pagination", pagi);
			model.addAttribute("listCnt", listCnt);
			model.addAttribute("pageCnt", pagi.getPageCnt());

		} catch (Exception e) {

			e.printStackTrace();
		}

		return "faq";
	}
}
