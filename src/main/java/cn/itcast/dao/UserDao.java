package cn.itcast.dao;

import cn.itcast.domain.Account;
import cn.itcast.domain.user;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author LD
 * @date 2021/3/16 - 15:06
 **/
@Repository
public interface UserDao {

    /*查询所有账户*/
    @Select("select * from user where username = #{username}")
    public user findOne( String username);

    /*查询所有账户*/
    @Insert("insert into user(username,password) values (#{username},#{password})")
    public void insert( user user4);

    /*查询所有账户*/
    @Select("select * from user")
    public List<user> findAll();

    /*查询所有账户*/
    @Update("update user set password=#{password} where username = #{username}")
    public int update( user user1);
}
