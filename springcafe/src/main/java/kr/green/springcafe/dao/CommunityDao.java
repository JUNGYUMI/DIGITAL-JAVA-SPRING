package kr.green.springcafe.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import kr.green.springcafe.vo.CommunityVo;
import kr.green.springcafe.vo.MemberVo;

public interface CommunityDao {
	
	ArrayList<CommunityVo> getBoardList();

	void insertCommunity(@Param("community")CommunityVo community);
}
