package kr.green.springcafe.service;

import kr.green.springcafe.vo.MemberVo;

public interface MemberService {
	public String getEmail(String id);

	boolean signup(MemberVo member);

	MemberVo isSign(MemberVo member);

 
}
