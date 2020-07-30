package kr.green.springpro.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import kr.green.springpro.dao.UserDao;
import kr.green.springpro.vo.UserVo;

@Service
public class UserServiceImp implements UserService {
    @Autowired
    UserDao userDao;
    @Autowired 
	BCryptPasswordEncoder passwordEncoder; 
	 
    
    @Override
    public String getEmail(String id) {
        return userDao.getEmail(id);
    }


	

	
}
