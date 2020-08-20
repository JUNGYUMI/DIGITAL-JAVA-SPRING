package kr.green.springcafe;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
		@RequestMapping(value = "/", method = RequestMethod.GET)
		public ModelAndView boardListGet(ModelAndView mv) {
			logger.info("URI:/main/home");
			mv.setViewName("/main/home");
			return mv;
		}
		@RequestMapping(value = "/signin", method = RequestMethod.GET)
		public ModelAndView signinGet(ModelAndView mv) {
			logger.info("URI:/main/signin");
			mv.setViewName("/main/signin");
			return mv;
		}
		@RequestMapping(value = "/signup", method = RequestMethod.GET)
		public ModelAndView signupGet(ModelAndView mv) {
			logger.info("URI:/main/signup");
			mv.setViewName("/main/signup");
			return mv;
		}
}







