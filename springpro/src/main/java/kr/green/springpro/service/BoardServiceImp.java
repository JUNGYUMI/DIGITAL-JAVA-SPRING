package kr.green.springpro.service;

import java.util.ArrayList;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.green.springpro.dao.BoardDao;
import kr.green.springpro.vo.BoardVo;

@Service
public class BoardServiceImp implements BoardService {
	
	@Autowired
    private BoardDao boardDao;

	@Override
	public ArrayList<BoardVo> getBoardList() {
		return boardDao.getBoardList();
	}

	@Override
	public BoardVo getBoard(Integer num) {
		return boardDao.getBoard(num);
	}

	@Override
	public void registerBoard(BoardVo board) {
		boardDao.registerBoard(board);
		
	}

	@Override
	public void updateBoard(BoardVo board) {
		board.setIsDel('N');
		boardDao.updateBoard(board);
	}

	@Override
	public void deleteBoard(Integer num) {
		BoardVo board = boardDao.getBoard(num); 
		if(board == null) 
			return; 
		board.setIsDel('Y'); 
		board.setDelDate(new Date()); 
		boardDao.updateBoard(board);
	}

	

}
