package kr.green.springpro.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.green.springpro.dao.UserDao;

@Service
public class UserServiceImp implements UserService {
    @Autowired
    UserDao userDao;
    
    @Override
    public String getEmail(String id) {
        return userDao.getEmail(id);
    }
}
