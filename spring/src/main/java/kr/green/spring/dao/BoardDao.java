package kr.green.spring.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import kr.green.spring.pagination.Criteria;
import kr.green.spring.vo.BoardVo;

public interface BoardDao {

	ArrayList<BoardVo> getBoardList(@Param("cri")Criteria cri);

	BoardVo getBoard(@Param("num")Integer num);

	void increaseViews(@Param("num")Integer num);

	void registerBoard(@Param("board")BoardVo board);

	void updateBoard(@Param("board")BoardVo board);

	void deleteBoard(Integer num);

	int getTotalCount(@Param("cri")Criteria cri);

	void insertLike(@Param("boardNum") int boardNum, @Param("id")String id);

	int isLike(@Param("boardNum")int boardNum, @Param("id")String id);

	

	
}
