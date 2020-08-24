package kr.green.springcafe.service;

import java.util.ArrayList;

import kr.green.springcafe.vo.MemberVo;

public interface CommunityService { 
	
	ArrayList<MemberVo> getBoardList();
	
}
