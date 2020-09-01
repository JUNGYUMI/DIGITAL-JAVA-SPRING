package kr.green.springcafe.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
 
import kr.green.springcafe.dao.MemberDao;
import kr.green.springcafe.vo.MemberVo;
 
@Service
public class MemberServiceImp implements MemberService {
    	
	@Autowired
    MemberDao memberDao;
	
	@Autowired  
	BCryptPasswordEncoder passwordEncoder;
    
    @Override
    public String getEmail(String id) {
        return memberDao.getEmail(id);
    }

	@Override
	public boolean signup(MemberVo member) { 
		if(member == null) return false; 
		if(member.getMem_id() == null || member.getMem_id().length()==0) return false; 
		if(member.getMem_pw() == null || member.getMem_pw().length() == 0) return false;
		if(member.getMem_name() == null || member.getMem_name().length() == 0) return false;
		if(member.getMem_email() == null || member.getMem_email().length() == 0) return false;
		if(member.getMem_phone() == null || member.getMem_phone().length() == 0) return false;
		if(member.getMem_gender() == null)  
			member.setMem_gender("male");  
		if(!member.getMem_gender().equals("male")   
				&& !member.getMem_gender().equals("female")) return false;  
		//아이디가 있는 경우  
		if(memberDao.getUser(member.getMem_id())!= null)  
			return false;  
		//비밀번호 암호화  
		String encodePw = passwordEncoder.encode(member.getMem_pw());  
		member.setMem_pw(encodePw);  
		//회원가입 진행  
		memberDao.insertUser(member);  
		return true;  
	}

	@Override
	public MemberVo isSign(MemberVo member) {
		MemberVo dbUser = memberDao.getUser(member.getMem_id()); 
		if(dbUser != null && passwordEncoder.matches(member.getMem_pw(), dbUser.getMem_pw())) 
			return dbUser;	// 일치하면 회원정보 보내주고 
		return null;
	}

   
}