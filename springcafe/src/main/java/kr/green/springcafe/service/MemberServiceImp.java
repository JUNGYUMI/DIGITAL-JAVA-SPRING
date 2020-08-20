package kr.green.springcafe.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
 
import kr.green.springcafe.dao.MemberDao;
 
@Service
public class MemberServiceImp implements MemberService {
    @Autowired
    MemberDao memberDao;
    
    @Override
    public String getEmail(String id) {
        return memberDao.getEmail(id);
    }
}