package kr.green.springcafe.service;

import java.util.ArrayList;

import kr.green.springcafe.vo.CommunityVo;
import kr.green.springcafe.vo.MemberVo;

public interface CommunityService {

	ArrayList<CommunityVo> getBoardList();

	void insertCommunity(CommunityVo community); 
	
}
