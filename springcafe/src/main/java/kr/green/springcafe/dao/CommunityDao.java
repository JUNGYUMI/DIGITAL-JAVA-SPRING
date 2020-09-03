package kr.green.springcafe.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import kr.green.springcafe.pagination.Criteria;
import kr.green.springcafe.vo.CommunityVo;
import kr.green.springcafe.vo.MembershipVo;

public interface CommunityDao {
	
	ArrayList<CommunityVo> getBoardList(@Param("cri")Criteria cri);


	int getTotalCount();

	CommunityVo getBoard(@Param("num")Integer num);


	void insertMembership(@Param("membership")MembershipVo membership); 

	
}
