package kr.green.springcafe;

import java.util.ArrayList;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
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
import kr.green.springcafe.vo.MembershipVo;

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
			MemberVo dbUser = memberService.isSign(member);
			if(dbUser != null) {
				mv.setViewName("redirect:/");
				mv.addObject("member",dbUser);
			}else
				mv.setViewName("redirect:/signin");
			return mv;
		}
		@RequestMapping(value = "/signout", method = RequestMethod.GET)
		public ModelAndView signoutGet(ModelAndView mv, HttpServletRequest request) {
			logger.info("URI:/signout:GET");
			mv.setViewName("redirect:/");
			request.getSession().removeAttribute("member");
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
		@RequestMapping(value = "/online_order", method = RequestMethod.POST)
		public ModelAndView online_orderPost(ModelAndView mv) {
			logger.info("URI:redirect:/order_list");
			mv.setViewName("redirect:/order_list");
			return mv;
		}
		@RequestMapping(value = "/order_list", method = RequestMethod.GET)
		public ModelAndView order_listGet(ModelAndView mv) {
			logger.info("URI:/main/order_list");
			mv.setViewName("/main/order_list");
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
		public ModelAndView membershipPost(ModelAndView mv, MembershipVo membership){
			logger.info("URI: redirect:/");
			mv.setViewName("redirect:/");
			communityService.insertMembership(membership);
			
			String setfrom = "roumeiii@naver.com";         
		    String tomail  = "roumeiii@naver.com";     // 받는 사람 이메일
		    String title   = "가맹문의";      // 제목
		    String content = setMail(membership);    // 내용

			    try {
			        MimeMessage message = mailSender.createMimeMessage();
			        MimeMessageHelper messageHelper 
			            = new MimeMessageHelper(message, true, "UTF-8");

			        messageHelper.setFrom(setfrom);  // 보내는사람 생략하거나 하면 정상작동을 안함
			        messageHelper.setTo(tomail);     // 받는사람 이메일
			        messageHelper.setSubject(title); // 메일제목은 생략이 가능하다
			        messageHelper.setText(content, true);  // 메일 내용

			        mailSender.send(message);
			    } catch(Exception e){
			        System.out.println(e);
			    }
			
			return mv;
		}
		
		@Autowired
		private JavaMailSender mailSender;
		@RequestMapping(value = "/mail/mailForm")
		public String mailForm() {

		    return "mail";
		}  

		// mailSending 코드
		@RequestMapping(value = "/mail/mailSending")
		public String mailSending(HttpServletRequest request) {

		    String setfrom = "roumeiii@naver.com";         
		    String tomail  = request.getParameter("tomail");     // 받는 사람 이메일
		    String title   = request.getParameter("title");      // 제목
		    String content = request.getParameter("content");    // 내용

		    try {
		        MimeMessage message = mailSender.createMimeMessage();
		        MimeMessageHelper messageHelper 
		            = new MimeMessageHelper(message, true, "UTF-8");

		        messageHelper.setFrom(setfrom);  // 보내는사람 생략하거나 하면 정상작동을 안함
		        messageHelper.setTo(tomail);     // 받는사람 이메일
		        messageHelper.setSubject(title); // 메일제목은 생략이 가능하다
		        messageHelper.setText(content, true);  // 메일 내용

		        mailSender.send(message);
		    } catch(Exception e){
		        System.out.println(e);
		    }

		    return "redirect:/mail/mailForm";
		}
		public String setMail(MembershipVo m) {
			String form = "<div class=\"container-content\">\n" + 
					"	        <div class=\"container-membership-body\">\n" + 
					"	            <div class=\"container-box-word\">\n" + 
					"	                <p class=\"container-member-title\">가맹 희망지역</p>\n" + 
					"	                <div class=\"container-membership hope-location\">\n" + 
					"	                    <input type=\"text\" name=\"ship_location\" value=\""+m.getShip_location()+"\" >\n" + 
					"	                </div>\n" + 
					"	            </div>\n" + 
					"	            <div class=\"container-box-word\">\n" + 
					"	                <p class=\"container-member-title\">원하는 점포형태</p>\n" + 
					"	                <div class=\"container-membership hope-store\">\n" + 
					"	                    <input type = \"radio\" name = \"ship_store_shape\" value=\"일반매장\" id=\"normal\""+ (m.getShip_store_shape().equals("일반매장")?"checked":"") +"> <label for =\"normal\"> 일반매장</label>\n" + 
					"	                    <input type = \"radio\" name = \"ship_store_shape\" value=\"드라이브 인/스루\" id=\"drive\""+ (m.getShip_store_shape().equals("드라이브 인/스루")?"checked":"") +"> <label for =\"drive\"> 드라이브 인/스루</label>\n" + 
					"	                    <input type = \"radio\" name = \"ship_store_shape\" value=\"기타\" id=\"etc\" value=\""+ m.getShip_store_shape() +"\"> <label for =\"etc\"> 기타</label> <input type=\"text\">\n" + 
					"	                </div>\n" + 
					"	            </div>\n" + 
					"	\n" + 
					"	            <div class=\"container-box-word\">\n" + 
					"	                <p class=\"container-member-title\">점포 소유 여부</p>\n" + 
					"	                <div class=\"container-membership get-store\">\n" + 
					"	                    <input type=\"radio\" name=\"ship_possession\" value=\"Y\" id=\"Y\""+ (m.getShip_possession().equals("Y")?"checked":"") +"> <label for=\"Y\">예</label>\n" + 
					"	                    <input type=\"radio\" name=\"ship_possession\" value=\"N\" id=\"N\""+ (m.getShip_possession().equals("N")?"checked":"") +"> <label for=\"N\">아니오</label>\n" + 
					"	                </div>\n" + 
					"	            </div>\n" + 
					"	            <div class=\"container-box-word\">\n" + 
					"	                <p class=\"container-member-title\">연령대</p>\n" + 
					"	                <div class=\"container-membership mem-age\">\n" + 
					"	                    <input type=\"radio\" name=\"ship_age\" value=\"20대\" id=\"20대\""+ (m.getShip_age().equals("20대")?"checked":"") +"> <label for=\"20대\">20대</label>\n" + 
					"	                    <input type=\"radio\" name=\"ship_age\" value=\"30대\" id=\"30대\""+ (m.getShip_age().equals("30대")?"checked":"") +"> <label for=\"30대\">30대</label>\n" + 
					"	                    <input type=\"radio\" name=\"ship_age\" value=\"40대\" id=\"40대\""+ (m.getShip_age().equals("40대")?"checked":"") +"> <label for=\"40대\">40대</label>\n" + 
					"	                    <input type=\"radio\" name=\"ship_age\" value=\"50대\" id=\"50대\""+ (m.getShip_age().equals("50대")?"checked":"") +"> <label for=\"50대\">50대</label>\n" + 
					"	                    <input type=\"radio\" name=\"ship_age\" value=\"60대 이상\" id=\"60대 이상\""+ (m.getShip_age().equals("60대 이상")?"checked":"") +"> <label for=\"60대 이상\">60대 이상</label>\n" + 
					"	                </div>\n" + 
					"	            </div>\n" + 
					"	            <div class=\"container-box-word\">\n" + 
					"	                <p class=\"container-member-title\">신청자명</p>\n" + 
					"	                <div class=\"container-membership mem-name\">\n" + 
					"	                    <input type=\"text\" name=\"ship_name\" value=\""+ m.getShip_name() +"\">\n" + 
					"	                </div>\n" + 
					"	            </div>\n" + 
					"	            <div class=\"container-box-word\">\n" + 
					"	                <p class=\"container-member-title\">휴대폰 번호</p>\n" + 
					"	                <div class=\"container-membership mem-tel\">\n" + 
					"	                    <input type=\"text\" name=\"ship_phone\" value=\""+ m.getShip_phone1() +"\"> -\n" + 
					"	                    <input type=\"text\" name=\"ship_phone\" value=\""+ m.getShip_phone2() +"\"> -\n" + 
					"	                    <input type=\"text\" name=\"ship_phone\" value=\""+ m.getShip_phone3() +"\"> \n" + 
					"	                </div>\n" + 
					"	            </div>\n" + 
					"	\n" + 
					"	            <p>유디아 가맹문의 개인정보 수집이용 동의 안내</p>\n" + 
					"	            <div class=\"box-container-info\">\n" + 
					"	                <p>회사는 유디아 가맹설명회 신청에서 수집한 개인정보를 다음의 목적을 위해 활용합니다. 이용자가 제공한 모든 정보는 하기 목적에 필요한 용도 이외로는 사용되지 않으며 이용 목적이 변경될 시에는 사전 동의를 구할 것입니다.</p>\n" + 
					"	                <ul class=\"nav-info-list\">\n" + 
					"	                    <li class=\"list-info\">\n" + 
					"	                        <p>■ 개인정보 수집 이용목적<br>\n" + 
					"	                        - 유디아 가맹 및 고객문의 응답처리를 위해 수집</p>\n" + 
					"	                    </li>\n" + 
					"	                    <li class=\"list-info\">\n" + 
					"	                        <p>■ 수집하는 개인정보 항목<br>\n" + 
					"	                        - 이름, 연락처(전화번호, 핸드폰번호), 이메일 가맹희망지역, 문의내용</p>\n" + 
					"	                    </li>\n" + 
					"	                    <li class=\"list-info\">\n" + 
					"	                        <p>■ 개인정보 수집 이용목적<br>\n" + 
					"	                        - 가맹 및 고객문의 처리 완료되는 시점으로 부터 1개월 보유 후 파기</p>\n" + 
					"	                    </li>\n" + 
					"	                </ul>\n" + 
					"	                <p class=\"mem-info\">※위의 개인정보 수집·이용에 대한 동의를 거부할 권리가 있습니다. 그러나 동의를 거부할 경우 원활한 가맹문의 서비스 제공에 일부 제한을 받을 수 있습니다.</p>\n" + 
					"	            </div>\n" + 
					"	\n" + 
					"	            <div class=\"box-agree\">\n" + 
					"	                <div class=\"box-container-agree\">\n" + 
					"	                    <input type=\"radio\" name=\"agree-disagree\" class=\"agree\" value=\"agree\" id=\"agree\""+ (m.getShip_agree().equals("동의")?"checked":"") +"> <label for=\"agree\">동의</label>\n" + 
					"	                    <input type=\"radio\" name=\"agree-disagree\" class=\"unagree\" value=\"disagree\" id=\"disagree\""+ (m.getShip_agree().equals("비동의")?"checked":"") +"> <label for=\"disagree\">비동의</label>\n" + 
					"	                </div>\n" + 
					"	            </div>\n" + 
					"	            <br>\n" + 
					"	        </div>\n" + 
					"        </div>";
			return form;
		}
}







