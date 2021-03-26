package cn.itcast.serrvice.impl;

import cn.itcast.dao.UserDao;
import cn.itcast.domain.user;
import cn.itcast.serrvice.loginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author LD
 * @date 2021/3/16 - 15:03
 **/
@Service("loginService")
public class loginServiceImpl implements loginService {

    @Autowired
    public UserDao userDao;

    @Override
    public user findOne(String username) {

        return userDao.findOne(username);
    }

    @Override
    public void insert(user user4) {
        userDao.insert(user4);
    }

    @Override
    public List<user> findAll() {
        return userDao.findAll();
    }

    @Override
    public int update(user user1) {
        return userDao.update(user1);
    }

}
