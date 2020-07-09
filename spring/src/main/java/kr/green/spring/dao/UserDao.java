package kr.green.spring.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;

public interface UserDao {
	public String getPw(@Param("id")String id);

	public int getCount();
	
}
