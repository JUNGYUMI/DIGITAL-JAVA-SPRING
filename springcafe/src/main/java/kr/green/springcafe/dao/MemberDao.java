package kr.green.springcafe.dao;

import org.apache.ibatis.annotations.Param;

public interface MemberDao {
	public String getEmail(@Param("id")String id);
}
