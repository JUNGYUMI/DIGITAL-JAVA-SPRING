package kr.green.test.service;

import java.util.ArrayList;

import kr.green.test.pagination.Criteria;
import kr.green.test.pagination.PageMaker;
import kr.green.test.vo.BoardVo;

public interface BoardService {

	ArrayList<BoardVo> getBoardList(Criteria cri);

	BoardVo getBoard(Integer num);

	void insertBoard(BoardVo board);

	BoardVo view(Integer num);

	void updateBoard(BoardVo board);

	void deleteBoard(Integer num);

	PageMaker getPageMakerByBoard(Criteria cri);

	
}
