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
		ArrayList<BoardVo> list;
		list = boardService.getBoardList();
		mv.addObject("list", list);
	    logger.info("URI:/board/list");
		mv.setViewName("/board/list");
	    return mv;
	}
	
}
