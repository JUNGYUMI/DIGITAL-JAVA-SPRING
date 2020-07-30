package kr.green.springpro.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import kr.green.springpro.vo.BoardVo;

public interface BoardDao { 

	ArrayList<BoardVo> getBoardList();

	BoardVo getBoard(@Param("num")Integer num);

	public void registerBoard(@Param("board")BoardVo board);

	void updateBoard(@Param("board")BoardVo board);

	void increaseViews(@Param("num")Integer num);
}
