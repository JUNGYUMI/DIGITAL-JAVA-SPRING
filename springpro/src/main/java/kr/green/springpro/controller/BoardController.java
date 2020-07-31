package kr.green.springpro.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import kr.green.springpro.pagination.Criteria;
import kr.green.springpro.pagination.PageMaker;
import kr.green.springpro.service.BoardService;
import kr.green.springpro.service.UserService;
import kr.green.springpro.vo.BoardVo;
import kr.green.springpro.vo.UserVo;

@Controller
public class BoardController {
	
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	
	@Autowired
	private BoardService boardService;
	@Autowired
	private UserService userService;
	
	@RequestMapping(value = "/board/list", method = RequestMethod.GET)
	public ModelAndView listGet(ModelAndView mv, Criteria cri) throws Exception{
		logger.info("URI:/board/list");
		mv.setViewName("/board/list");
		PageMaker pm = boardService.getPageMaker(cri);
		ArrayList<BoardVo> list;
		list = boardService.getBoardList(cri);
		mv.addObject("list", list);
		mv.addObject("pm",pm);
		System.out.println(pm);
	    return mv;
	}
	@RequestMapping(value = "/board/detail", method = RequestMethod.GET)
	public ModelAndView detailGet(ModelAndView mv, Integer num, Criteria cri) throws Exception{
	    logger.info("URI:/board/detail");
		mv.setViewName("/board/detail");
		BoardVo board = null;
		if(num != null) {
			board = boardService.getBoard(num);
			mv.addObject("board",board);
			if(board != null) {
				boardService.increaseViews(num);
				board.setViews(board.getViews()+1);
			}
		}
		mv.addObject("cri",cri);
	    return mv;
	}
	@RequestMapping(value = "/board/register", method = RequestMethod.GET)
	public ModelAndView registesrGet(ModelAndView mv) throws Exception{
	    logger.info("URI:/board/register");
		mv.setViewName("/board/register");
	    return mv;
	}
	@RequestMapping(value = "/board/register", method = RequestMethod.POST)
	public ModelAndView registesrPOST(ModelAndView mv, BoardVo board, HttpServletRequest request) throws Exception{
	    logger.info("URI:redirect:/board/list");
		mv.setViewName("redirect:/board/list");
		boardService.registerBoard(board, request);
	    return mv;
	}
	@RequestMapping(value = "/board/modify", method = RequestMethod.GET)
	public ModelAndView modifyGet(ModelAndView mv, Integer num, HttpServletRequest request) throws Exception{
	    logger.info("URI:/board/modify");
		mv.setViewName("/board/modify");
		BoardVo board = boardService.getBoard(num);
		UserVo user = userService.getUser(request);
		if(num != null) {
			board = boardService.getBoard(num);
			if(user == null || !board.getWriter().equals(user.getId()))
				mv.setViewName("redirect:/board/list");
		}
		mv.addObject("board",board);
	    return mv;
	}
	@RequestMapping(value = "/board/modify", method = RequestMethod.POST)
	public ModelAndView modifyPOST(ModelAndView mv, BoardVo board, HttpServletRequest request) throws Exception{
	    logger.info("URI: redirect:/board/modify");
		mv.setViewName("redirect:/board/list");
		UserVo user = userService.getUser(request);
		boardService.updateBoard(board, user);
		System.out.println(board);
	    return mv;
	}
	@RequestMapping(value = "/board/delete", method = RequestMethod.GET)
	public ModelAndView deleteGet(ModelAndView mv,Integer num,HttpServletRequest request) throws Exception{
	    logger.info("URI:/board/delete");
		mv.setViewName("redirect:/board/list");
		boardService.deleteBoard(num, userService.getUser(request));
	    return mv;
	}
}
