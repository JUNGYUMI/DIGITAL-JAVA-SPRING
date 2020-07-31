package kr.green.springpro.service;

import javax.servlet.http.HttpServletRequest;

import kr.green.springpro.vo.UserVo;

public interface UserService {

	public boolean signup(UserVo user);
<<<<<<< Updated upstream
=======

	public UserVo getUser(HttpServletRequest request);

	public UserVo isSignin(UserVo user);
>>>>>>> Stashed changes

	

}

