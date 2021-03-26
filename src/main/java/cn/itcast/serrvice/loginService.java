package cn.itcast.serrvice;
import cn.itcast.domain.user;

import java.util.List;

/**
 * @author LD
 * @date 2021/3/16 - 15:00
 **/
public interface loginService {

    /*查询所有账户*/
    public user findOne(String username);

    /*查询所有账户*/
    public void insert(user user4);

    /*查询所有账户*/
    public List<user> findAll();

    /*修改密码*/
    public int update(user user1);
}
