package kr.green.springpro.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import kr.green.springpro.vo.BoardVo;

public interface BoardDao { 

	public ArrayList<BoardVo> getBoardList();
}
