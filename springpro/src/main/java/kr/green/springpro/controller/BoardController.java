package kr.green.springpro.controller;

import java.util.ArrayList;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import kr.green.springpro.service.BoardService;
import kr.green.springpro.vo.BoardVo;

@Controller
public class BoardController {
	
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	
	@Autowired
	private BoardService boardService;
	
	@RequestMapping(value = "/board/list", method = RequestMethod.GET)
	public ModelAndView listGet(ModelAndView mv) throws Exception{
		logger.info("URI:/board/list");
		mv.setViewName("/board/list");
		ArrayList<BoardVo> list;
		list = boardService.getBoardList();
		mv.addObject("list", list);
	    return mv;
	}
	@RequestMapping(value = "/board/detail", method = RequestMethod.GET)
	public ModelAndView detailGet(ModelAndView mv, Integer num) throws Exception{
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
	    return mv;
	}
	@RequestMapping(value = "/board/register", method = RequestMethod.GET)
	public ModelAndView registesrGet(ModelAndView mv) throws Exception{
	    logger.info("URI:/board/register");
		mv.setViewName("/board/register");
	    return mv;
	}
	@RequestMapping(value = "/board/register", method = RequestMethod.POST)
	public ModelAndView registesrPOST(ModelAndView mv, BoardVo board) throws Exception{
	    logger.info("URI:redirect:/board/list");
		mv.setViewName("redirect:/board/list");
		boardService.registerBoard(board);
	    return mv;
	}
	@RequestMapping(value = "/board/modify", method = RequestMethod.GET)
	public ModelAndView modifyGet(ModelAndView mv, Integer num) throws Exception{
	    logger.info("URI:/board/modify");
		mv.setViewName("/board/modify");
		BoardVo board = boardService.getBoard(num);
		mv.addObject("board",board);
	    return mv;
	}
	@RequestMapping(value = "/board/modify", method = RequestMethod.POST)
	public ModelAndView modifyPOST(ModelAndView mv, BoardVo board) throws Exception{
	    logger.info("URI: redirect:/board/modify");
		mv.setViewName("redirect:/board/list");
		boardService.updateBoard(board);
		System.out.println(board);
	    return mv;
	}
	@RequestMapping(value = "/board/delete", method = RequestMethod.GET)
	public ModelAndView deleteGet(ModelAndView mv,Integer num) throws Exception{
	    logger.info("URI:/board/delete");
		mv.setViewName("redirect:/board/list");
		boardService.deleteBoard(num);
	    return mv;
	}
}
