package kr.green.springcafe.dao;

import org.apache.ibatis.annotations.Param;

import kr.green.springcafe.vo.MemberVo;

public interface MemberDao {
	public String getEmail(@Param("id")String id);

	public MemberVo getUser(@Param("mem_id")String mem_id);

	public void insertUser(@Param("member")MemberVo member);

}
