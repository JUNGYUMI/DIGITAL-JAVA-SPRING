package kr.green.springpro.service;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import kr.green.springpro.pagination.Criteria;
import kr.green.springpro.pagination.PageMaker;
import kr.green.springpro.vo.BoardVo;
import kr.green.springpro.vo.UserVo;

public interface BoardService {

	ArrayList<BoardVo> getBoardList(Criteria cri);

	BoardVo getBoard(Integer num);

	public void registerBoard(BoardVo board, HttpServletRequest request);

	void updateBoard(BoardVo board, UserVo user);

	void deleteBoard(Integer num, UserVo userVo);

	void increaseViews(Integer num);

	PageMaker getPageMaker(Criteria cri);
	
}

