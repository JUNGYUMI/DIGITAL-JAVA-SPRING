package kr.green.springcafe.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import kr.green.springcafe.vo.CommunityVo;

public interface CommunityDao {
	ArrayList<CommunityVo> getBoardList();
}
