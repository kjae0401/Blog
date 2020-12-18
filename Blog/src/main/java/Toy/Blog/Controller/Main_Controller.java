package Toy.Blog.Controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import Toy.Blog.Service.UserServiceImpl;
import Toy.Blog.Utils.UserSHA256;

@Controller
public class Main_Controller {
	private static final Logger logger = LoggerFactory.getLogger(Main_Controller.class);

	@Autowired
	UserServiceImpl userService;
	
	@RequestMapping(value = "/homepage.do")
	public ModelAndView homepage() throws Exception {
		ModelAndView mv = new ModelAndView("home");
		
		return mv;
	}
	
	@RequestMapping(value = "write.do")
	public String write(HttpServletRequest request) throws Exception {
		String view = "write";
		
		if (request.getSession().getAttribute("prev_url") == null)
			request.getSession().setAttribute("prev_url", request.getHeader("REFERER")); 
		
		return view;
	}
	
	@RequestMapping(value = "book.do")
	public String book() throws Exception {
		String view = "book";
		
		return view;
	}
	
	@RequestMapping(value = "setting.do")
	public String setting(Model model, HttpServletRequest request) throws Exception {
		String view = "setting";
		
		if (request.getSession().getAttribute("prev_url") == null)
			request.getSession().setAttribute("prev_url", request.getHeader("REFERER"));
		
		return view;
	}
	
	@RequestMapping(value = "detail.do", method=RequestMethod.GET)
	public String detail(Model model, String content_id) throws Exception {
		String view = "detail";
		System.out.println(content_id);
		return view;
	}
	
	@RequestMapping(value="/login.do")
	public ModelAndView login() throws Exception {
		ModelAndView mv = new ModelAndView("log_in");
		
		return mv;
	}
	
	
	@RequestMapping(value="/loginaction.do")
	public ModelAndView loginaction(String inputId, String inputPassword) throws Exception {
		ModelAndView mv;
		
		Map<String, String> cmap = new HashMap<String, String>();
		cmap.put("inputId", inputId);
		cmap.put("inputPassword", UserSHA256.encrypt(inputPassword));
		
		if (userService.login(cmap)) {
			mv = new ModelAndView("redirect:homepage.do");
		} else {
			mv = new ModelAndView("redirect:homepage.do");
		}
		
		return mv;
	}
}
