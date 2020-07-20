package kr.green.test.service;

import kr.green.test.vo.UserVo;

public interface UserService {

	UserVo getUser(String string);

	UserVo isUser(UserVo inputUser);

	boolean signup(UserVo user);

}
