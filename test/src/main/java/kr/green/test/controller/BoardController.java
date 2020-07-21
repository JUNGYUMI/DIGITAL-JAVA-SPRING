package kr.green.test.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import kr.green.test.pagination.Criteria;
import kr.green.test.pagination.PageMaker;
import kr.green.test.service.BoardService;
import kr.green.test.service.UserService;
import kr.green.test.vo.BoardVo;
import kr.green.test.vo.UserVo;

@Controller
public class BoardController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	BoardService boardService;
	@Autowired
	UserService userService;
	
	@RequestMapping(value = "/board/list", method = RequestMethod.GET)
	public ModelAndView boardListGet(ModelAndView mv, Criteria cri) {
		mv.setViewName("/board/list");
		ArrayList<BoardVo> list = boardService.getBoardList(cri);
		PageMaker pm = boardService.getPageMakerByBoard(cri); 
		mv.addObject("list",list);
		mv.addObject("pm",pm);
		return mv;
	}
	@RequestMapping(value = "/board/detail", method = RequestMethod.GET)
	public ModelAndView boardDetailGet(ModelAndView mv, Integer num, Criteria cri) {
		mv.setViewName("/board/detail");
		BoardVo board = boardService.view(num); //번호를 서비스한테 넘겨줌 - 서비스는 그에 맞는 번호를 
		mv.addObject("board", board); //보드를 클라이언트로 보내줌
		mv.addObject("cri", cri);
		return mv;
	}
	@RequestMapping(value = "/board/register", method = RequestMethod.GET)
	public ModelAndView boardRegisterGet(ModelAndView mv) {
		mv.setViewName("/board/register"); 
		return mv;
	}
	@RequestMapping(value = "/board/register", method = RequestMethod.POST)
	public ModelAndView boardRegisterPost(ModelAndView mv, BoardVo board, HttpServletRequest r) {
		mv.setViewName("redirect:/board/list");
		board.setWriter(userService.getUser(r).getId());
		boardService.insertBoard(board);
		return mv;
	}
	@RequestMapping(value = "/board/modify", method = RequestMethod.GET)
	public ModelAndView boardModifyGet(ModelAndView mv, Integer num, HttpServletRequest r) {
		mv.setViewName("/board/modify");
		BoardVo board = boardService.getBoard(num);
		UserVo user = userService.getUser(r);
		if(board == null || !user.getId().equals(board.getWriter()))
			mv.setViewName("redirect:/board/list");
		mv.addObject("board",board);
		return mv;
	}
	@RequestMapping(value = "/board/modify", method = RequestMethod.POST)
	public ModelAndView boardModifyPost(ModelAndView mv, BoardVo board, HttpServletRequest r) {
		mv.setViewName("redirect:/board/list");
		board.setWriter(userService.getUser(r).getId());
		boardService.updateBoard(board);
		return mv;
	}
	@RequestMapping(value = "/board/delete", method = RequestMethod.GET)
	public ModelAndView boardDeleteGet(ModelAndView mv, Integer num, HttpServletRequest r) {
		mv.setViewName("redirect:/board/list");
		boardService.deleteBoard(num, userService.getUser(r));
		return mv;
	}
}
