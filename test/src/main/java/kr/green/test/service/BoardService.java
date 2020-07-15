package kr.green.test.service;

import java.util.ArrayList;

import kr.green.test.vo.BoardVo;

public interface BoardService {

	ArrayList<BoardVo> getBoardList();

	BoardVo getBoard(Integer num);

	void insertBoard(BoardVo board);

	BoardVo view(Integer num);

	void updateBoard(BoardVo board);

	void deleteBoard(Integer num);

	
	
}
