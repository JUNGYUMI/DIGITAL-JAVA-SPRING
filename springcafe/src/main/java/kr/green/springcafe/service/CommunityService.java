package kr.green.springcafe.service;

import java.util.ArrayList;

import kr.green.springcafe.pagination.Criteria;
import kr.green.springcafe.pagination.PageMaker;
import kr.green.springcafe.vo.CommunityVo;
import kr.green.springcafe.vo.MemberVo;

public interface CommunityService {

	ArrayList<CommunityVo> getBoardList(Criteria cri);

	void insertCommunity(CommunityVo community);

	PageMaker getPageMaker(Criteria cri); 
	
}
