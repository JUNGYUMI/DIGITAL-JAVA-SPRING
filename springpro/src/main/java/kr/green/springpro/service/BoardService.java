package kr.green.springpro.service;

import java.util.ArrayList;

import kr.green.springpro.vo.BoardVo;

public interface BoardService {

	public ArrayList<BoardVo> getBoardList();

	public BoardVo getBoard(Integer num);
	
}

