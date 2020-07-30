package kr.green.springpro.service;

import java.util.ArrayList;

import kr.green.springpro.vo.BoardVo;

public interface BoardService {

	ArrayList<BoardVo> getBoardList();

	BoardVo getBoard(Integer num);

	public void registerBoard(BoardVo board);

	void updateBoard(BoardVo board);

	void deleteBoard(Integer num);

	void increaseViews(Integer num);
	
}

