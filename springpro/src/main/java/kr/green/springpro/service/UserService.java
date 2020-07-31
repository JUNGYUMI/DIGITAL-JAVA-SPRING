package kr.green.springpro.service;

import javax.servlet.http.HttpServletRequest;

import kr.green.springpro.vo.UserVo;

public interface UserService {

	public boolean signup(UserVo user);
	
	public UserVo getUser(HttpServletRequest request);

	public UserVo isSignin(UserVo user);
}

