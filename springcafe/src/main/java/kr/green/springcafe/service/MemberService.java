package kr.green.springcafe.service;

import kr.green.springcafe.vo.MemberVo;

public interface MemberService {
	public String getEmail(String id);

	public boolean signup(MemberVo user);

 
}
