package kr.green.springcafe;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import kr.green.springcafe.pagination.Criteria;
import kr.green.springcafe.pagination.PageMaker;
import kr.green.springcafe.service.CommunityService;
import kr.green.springcafe.service.MemberService;
import kr.green.springcafe.vo.CommunityVo;
import kr.green.springcafe.vo.MemberVo;

@Controller
public class HomeController {
	@Autowired
	private CommunityService communityService; 
	
	@Autowired
	private MemberService memberService;
	
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
		@RequestMapping(value = "/signin", method = RequestMethod.POST)
		public ModelAndView homePost(ModelAndView mv, MemberVo member) {
			logger.info("URI:/main/signin:POST");
			System.out.println(member);
			MemberVo dbUser = memberService.isSign(member);
			if(dbUser != null) {
				mv.setViewName("redirect:/");
				mv.addObject("member",dbUser);
			}else
				mv.setViewName("redirect:/signin");
			return mv;
		}
		@RequestMapping(value = "/signup", method = RequestMethod.GET)
		public ModelAndView signupGet(ModelAndView mv) {
			logger.info("URI:/signup");
			mv.setViewName("/main/signup");
			return mv;
		}
		@RequestMapping(value = "/signup", method = RequestMethod.POST)
		public ModelAndView signupPost(ModelAndView mv, MemberVo member) {
		    logger.info("URI: signup:POST");
			if(memberService.signup(member)) {
				mv.setViewName("redirect:/");
			}else {
				mv.setViewName("redirect:/signup");
				mv.addObject("member",member);
			}
		    return mv;
		}
		@RequestMapping(value = "/introduce", method = RequestMethod.GET)
		public ModelAndView introduceGet(ModelAndView mv) {
			logger.info("URI:/main/introduce");
			mv.setViewName("/main/introduce");
			return mv;
		}
		@RequestMapping(value = "/location", method = RequestMethod.GET)
		public ModelAndView locationGet(ModelAndView mv) {
			logger.info("URI:/main/location");
			mv.setViewName("/main/location");
			return mv;
		}
		@RequestMapping(value = "/drink_menu", method = RequestMethod.GET)
		public ModelAndView drink_menuGet(ModelAndView mv) {
			logger.info("URI:/main/drink_menu");
			mv.setViewName("/main/drink_menu");
			return mv;
		}
		@RequestMapping(value = "/dessert_menu", method = RequestMethod.GET)
		public ModelAndView dessert_menuGet(ModelAndView mv) {
			logger.info("URI:/main/dessert_menu");
			mv.setViewName("/main/dessert_menu");
			return mv;
		}
		@RequestMapping(value = "/online_order", method = RequestMethod.GET)
		public ModelAndView online_orderGet(ModelAndView mv) {
			logger.info("URI:/main/online_order");
			mv.setViewName("/main/online_order");
			return mv;
		}
		@RequestMapping(value = "/takeout_order", method = RequestMethod.GET)
		public ModelAndView takeout_orderGet(ModelAndView mv) {
			logger.info("URI:/main/takeout_order");
			mv.setViewName("/main/takeout_order");
			return mv;
		}
		@RequestMapping(value = "/notice_list", method = RequestMethod.GET)
		public ModelAndView noticeListGet(ModelAndView mv, Criteria cri) {
			logger.info("URI:/main/notice_list");
			mv.setViewName("/main/notice_list");
			PageMaker pm = communityService.getPageMaker(cri);
			ArrayList<CommunityVo> list; 
			list = communityService.getBoardList(cri); 
			mv.addObject("notice_list",list); 
			mv.addObject("pm",pm); 
			return mv;
		}
		@RequestMapping(value = "/detail", method = RequestMethod.GET)
		public ModelAndView boardDetailGet(ModelAndView mv, Integer num) { 
			logger.info("URI:/main/detail"); 
			mv.setViewName("/main/detail"); 
			CommunityVo community = null; 
			if(num != null) { 
				community = communityService.getBoard(num); 
				mv.addObject("community", community);  
			} 
			return mv; 
		} 
		@RequestMapping(value = "/register", method = RequestMethod.GET)		
		public ModelAndView registerBoardGet(ModelAndView mv) {
			logger.info("URI:/main/register");
			mv.setViewName("/main/register");
			return mv;
		}
		@RequestMapping(value = "/register", method = RequestMethod.POST)
		public ModelAndView registerBoardPost(ModelAndView mv) {
			logger.info("URI:/main/notice_list");
			mv.setViewName("/main/notice_list");
			return mv;
		}
		@RequestMapping(value = "/customer_list", method = RequestMethod.GET)
		public ModelAndView customerListGet(ModelAndView mv) {
			logger.info("URI:/main/customer_list");
			mv.setViewName("/main/customer_list");
			return mv;
		}
		@RequestMapping(value = "/membership", method = RequestMethod.GET)
		public ModelAndView membershipGet(ModelAndView mv) {
			logger.info("URI:/main/membership");
			mv.setViewName("/main/membership");
			return mv;
		}
		@RequestMapping(value = "/membership", method = RequestMethod.POST)
		public ModelAndView membershipPost(ModelAndView mv, CommunityVo community) {
			logger.info("URI: redirect:/");
			mv.setViewName("redirect:/");
			communityService.insertCommunity(community); 
			return mv;
		}
		
		
		
}







