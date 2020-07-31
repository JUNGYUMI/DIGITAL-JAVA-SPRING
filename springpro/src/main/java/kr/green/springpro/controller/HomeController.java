package kr.green.springpro.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import kr.green.springpro.service.UserService;
import kr.green.springpro.vo.UserVo;

@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	@Autowired
	private UserService userService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView homeGet(ModelAndView mv) throws Exception{
	    logger.info("URI:/main/home");
	    
		mv.setViewName("/main/home");
	    return mv;
	}
	@RequestMapping(value = "/", method = RequestMethod.POST)
	public ModelAndView homePost(ModelAndView mv, UserVo user) {
		logger.info("URI:/");
		UserVo dbUser = userService.isSignin(user);
		if(dbUser != null) {
			mv.setViewName("redirect:/board/list");
			mv.addObject("user",dbUser);
		}else
			mv.setViewName("redirect:/");
		return mv;
	}
	@RequestMapping(value = "/signup", method = RequestMethod.GET)
	public ModelAndView signupGet(ModelAndView mv) throws Exception{
	    logger.info("URI:/main/signup");
		mv.setViewName("/main/signup");
	    return mv;
	}
	@RequestMapping(value = "/signup", method = RequestMethod.POST)
	public ModelAndView signupPoset(ModelAndView mv, UserVo user) throws Exception{
	    logger.info("URI: signup:POST");
		if(userService.signup(user)) {
			mv.setViewName("redirect:/");
		}else {
			mv.setViewName("redirect:/signup");
			mv.addObject("user",user);
		}
	    return mv;
	}

	@RequestMapping(value = "/signout", method = RequestMethod.GET)
	public ModelAndView signoutGet(ModelAndView mv, HttpServletRequest request) {
		logger.info("URI:/signout:GET");
		mv.setViewName("redirect:/");
		request.getSession().removeAttribute("user");
		return mv;
	}
}

