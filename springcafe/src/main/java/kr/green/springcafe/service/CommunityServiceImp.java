package kr.green.springcafe.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.green.springcafe.dao.CommunityDao;
import kr.green.springcafe.pagination.Criteria;
import kr.green.springcafe.pagination.PageMaker;
import kr.green.springcafe.vo.CommunityVo;
import kr.green.springcafe.vo.MembershipVo;

@Service
public class CommunityServiceImp implements CommunityService {
	@Autowired
	private CommunityDao communityDao;

	@Override
	public ArrayList<CommunityVo> getBoardList(Criteria cri) {
		return communityDao.getBoardList(cri);
	}

	@Override
	public PageMaker getPageMaker(Criteria cri) {
		PageMaker pm = new PageMaker();  
		int totalCount = communityDao.getTotalCount();  
		pm.setCriteria(cri);  
		pm.setTotalCount(totalCount);  
		return pm; 
	}

	@Override
	public CommunityVo getBoard(Integer num) {
		return communityDao.getBoard(num);
	}

	@Override
	public void insertMembership(MembershipVo membership) {
		communityDao.insertMembership(membership);
		
	}
	
}

