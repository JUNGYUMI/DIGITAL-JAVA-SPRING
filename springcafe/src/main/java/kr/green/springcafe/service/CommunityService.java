package kr.green.springcafe.service;

import java.util.ArrayList;

import kr.green.springcafe.pagination.Criteria;
import kr.green.springcafe.pagination.PageMaker;
import kr.green.springcafe.vo.CommunityVo;
import kr.green.springcafe.vo.MembershipVo;

public interface CommunityService {

	ArrayList<CommunityVo> getBoardList(Criteria cri);

	PageMaker getPageMaker(Criteria cri);

	CommunityVo getBoard(Integer num);

	void insertMembership(MembershipVo membership);
	
}
