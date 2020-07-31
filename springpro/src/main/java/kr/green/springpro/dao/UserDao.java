package kr.green.springpro.dao;

import org.apache.ibatis.annotations.Param;

import kr.green.springpro.vo.UserVo;

public interface UserDao {
    public String getEmail(@Param("id")String id);

	public void insertUser(@Param("user")UserVo user);

	public UserVo getUser(@Param("id")String id);
}
