package cn.itcast.serrvice.impl;

import cn.itcast.dao.AccountDao;
import cn.itcast.domain.Account;
import cn.itcast.serrvice.AccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("accountService")
public class AccountServiceImpl implements AccountService {

    @Autowired
    private AccountDao accountDao;

    @Override
    public List<Account> findAll() {
        System.out.println("业务层查询");
        return accountDao.findAll();
    }

    @Override
    public void saveAccount(Account account)
    {
        System.out.println("业务层保存数据");
        accountDao.saveAccount(account);
    }
}
