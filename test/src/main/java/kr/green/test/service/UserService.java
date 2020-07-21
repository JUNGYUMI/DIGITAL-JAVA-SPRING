package kr.green.test.service;

import javax.servlet.http.HttpServletRequest;

import kr.green.test.vo.UserVo;

public interface UserService {

	UserVo getUser(String string);

	UserVo isUser(UserVo inputUser);

	boolean signup(UserVo user);

	UserVo getUser(HttpServletRequest r);

}
