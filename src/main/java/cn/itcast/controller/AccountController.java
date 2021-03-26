package cn.itcast.controller;

import cn.itcast.domain.Account;
import cn.itcast.serrvice.AccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/*
* web层
* */
@Controller
@RequestMapping(path = "/account")
public class AccountController {

    @Autowired
    private AccountService accountService1;

    @RequestMapping(path="/findAll")
    public String findAll(Model model){
        System.out.println("表现层，查询所有账户信息");
        List<Account> lists = accountService1.findAll();
        model.addAttribute("list",lists);
        return "list";
    }

    @RequestMapping(path="/save")
    public void save(HttpServletResponse response, HttpServletRequest request, Account account) throws IOException {
        System.out.println("表现层，保存账户信息");
        accountService1.saveAccount(account);
        response.sendRedirect(request.getContextPath()+"/account/findAll");
        return;
    }
}
