package kr.green.test.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import kr.green.test.pagination.Criteria;
import kr.green.test.pagination.PageMaker;
import kr.green.test.vo.BoardVo;

public interface BoardDao {

	ArrayList<BoardVo> getBoardList(@Param("cri")Criteria cri);

	BoardVo getBoard(@Param("num")Integer num);

	void insertBoard(@Param("board") BoardVo board);
	
	void updateBoard(@Param("board")BoardVo board);

	int getTotalCountByBoard(@Param("cri")Criteria cri);

	int selectUp(@Param("boardNum")int num, @Param("id")String id);

	void insertUp(@Param("boardNum")int num, @Param("id")String id);

	void updateBoardByUp(@Param("num")int num);

	

}
