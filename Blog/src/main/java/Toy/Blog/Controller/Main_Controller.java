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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.support.RequestContextUtils;

import Toy.Blog.DTO.UserDTO;
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
	public String setting(HttpServletRequest request) throws Exception {
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
	public String login(Model model, HttpServletRequest request) throws Exception {
		String view = "login";
		boolean login_message = false;
		
		try {
			login_message = (boolean) RequestContextUtils.getInputFlashMap(request).get("login_message");
		
			if (login_message) {
				model.addAttribute("login_message", login_message);
			}
		} catch (NullPointerException e) { }
		
		return view;
	}
	
	
	@RequestMapping(value="/loginaction.do")
	public String loginaction(UserDTO userDTO, RedirectAttributes redirectAttributes, HttpServletRequest request) throws Exception {
		String view = "";
		try {
			view = request.getSession().getAttribute("next_url").toString().split(request.getContextPath() + "/")[1].split(".do")[0];
		} catch (NullPointerException e) {
			view = "redirect:homepage.do";
		}
		
		userDTO.setPwd(UserSHA256.encrypt(userDTO.getPwd()));
		
		if (userService.login(userDTO)) {
			request.getSession().setAttribute("next_url", null);
			String user_id = SessionConfig.getSessionidCheck("user_id", userDTO.getId());
			request.getSession().setAttribute("user_id", userDTO.getId());
			view = "redirect:" + view + ".do";
		} else {
			redirectAttributes.addFlashAttribute("login_message", true);
			view = "redirect:login.do";
		}
		
		return view;
	}
}
