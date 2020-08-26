package kr.green.springcafe.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.green.springcafe.dao.CommunityDao;
import kr.green.springcafe.vo.CommunityVo;
import kr.green.springcafe.vo.MemberVo;

@Service
public class CommunityServiceImp implements CommunityService {
	@Autowired
	private CommunityDao communityDao;

	@Override
	public ArrayList<CommunityVo> getBoardList() {
		return communityDao.getBoardList();
	}

	@Override
	public void insertCommunity(CommunityVo community) {
		communityDao.insertCommunity(community);
	}
	
	
}

