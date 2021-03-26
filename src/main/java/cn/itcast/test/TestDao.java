package cn.itcast.test;
import cn.itcast.dao.AccountDao;
import cn.itcast.domain.Account;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.Test;
import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
public class TestDao {


    /*测试查询全部*/
    @Test
    public void run1() throws Exception{


        //加载配置文件
        InputStream in = Resources.getResourceAsStream("SqlMapConfig.xml");
        //创建SqlSessionFactory对象
        SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(in);
        //创建SqlSession对象
        SqlSession session = factory.openSession();
        //获取代理对象
        AccountDao dao = session.getMapper(AccountDao.class);
        //查询数据
        List<Account> lists = dao.findAll();
        for(Account list:lists){
            System.out.println(list);
        }
        //关闭资源
        session.close();
        in.close();
    }

    /*测试保存*/
    @Test
    public void run2() throws Exception{

        Account account = new Account();
        account.setId(3);
        account.setName("dengdeng");
        account.setMoney(10000.00);
        //加载配置文件
        InputStream in = Resources.getResourceAsStream("SqlMapConfig.xml");
        //创建SqlSessionFactory对象
        SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(in);
        //创建SqlSession对象
        SqlSession session = factory.openSession();
        //获取代理对象
        AccountDao dao = session.getMapper(AccountDao.class);
        //查询数据
        dao.saveAccount(account);
        //提交事务
        session.commit();
        //关闭资源
        session.close();
        in.close();
    }
}
