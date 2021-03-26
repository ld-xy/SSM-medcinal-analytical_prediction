package cn.itcast.controller;
import cn.itcast.domain.user;
import cn.itcast.serrvice.AccountService;
import cn.itcast.serrvice.loginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;
/*
 * web层
 * */
@Controller
@RequestMapping(path = "/common")
public class common {

    public static String year;
    public static String count;
    @Autowired
    private AccountService accountService1;

    @Autowired
    public loginService loginService1;

    @RequestMapping(path="/bingqingmiaoshu")
    public String findAll(String bingqingmiaoshu,Model model){
        System.out.println(bingqingmiaoshu);
        return "bingqingmiaoshu";
    }

    @RequestMapping(path="/yucekenengjibing")
    public String findAll1(Model model){
        return "yucekenengjibing";
    }

    @RequestMapping(path="/xiangxixinxi")
    public String findAll2(Model model){
        return "xiangxixinxi";
    }

    @RequestMapping(path="/login")
    public String login( String username , String password, HttpSession session, HttpServletRequest request){
        System.out.println(username);
        System.out.println(password);
        user user1 = loginService1.findOne(username);
        if(user1 == null){
            session.setAttribute("error","您尚未注册，请注册后使用");
            return "register";
        }else{
            if(!user1.getPassword().equals(password)){
                session.setAttribute("error","您的密码有误，请检查后重新输入");
                return "login1";
            }else{
                return "/index";
            }
        }
    }

    @RequestMapping(path="/updatepassword")
    public String updatepassword(Model model,String username, HttpSession session, HttpServletRequest request){
        user user2 = loginService1.findOne(username);
        session.setAttribute("user2",user2);
        session.setAttribute("password",user2.getPassword());
        return "update";
    }

    @RequestMapping(path="/register")
    public String register(String username , String password, HttpSession session, HttpServletRequest request){
        return "register";
    }

    @RequestMapping(path="/register1")
    public String register1(String username , String password, HttpSession session, HttpServletRequest request){
        System.out.println(username);
        List<user> user2 = loginService1.findAll();
        System.out.println(user2);
        for(int i = 0;i<user2.size();i++){
            if(user2.get(i).getUsername().equals(username)){
                System.out.println("存在已经");
                session.setAttribute("error","该名称已经被占用,请更换");
                return "register";
            }
        }
        user user4 = new user(username,password);
        loginService1.insert(user4);
        return "login1";
    }


    @RequestMapping(path="/updateps")
    public String updateps(Model model,String password,String password1, HttpSession session, HttpServletRequest request){
        user user2 = (user) session.getAttribute("user2");
        System.out.println(user2.getUsername());
        if(password.equals(password1)){
            System.out.println(password);
            System.out.println(password1);
            user user1 = new user(user2.getUsername(),password);
            int a = loginService1.update(user1);
            System.out.println(a);
            return "login1";
        }else{
            session.setAttribute("error","两次密码不一致");
            return "updatepassword";
        }
    }

    @RequestMapping(path="/jujixingchuanranbing")
    public String jujixingchuanranbing(String username , String password, HttpSession session, HttpServletRequest request){
        common demo = new common();
        String res =demo.getPythonDemo("D:\\1.py");
        session.setAttribute("year",year);
        session.setAttribute("count",count);
        return "jujixingchuanranbing1";
    }

    public String getPythonDemo(String pyPath){
        Process proc;
        String line = null;
        List<String> lines = new ArrayList<String>();
        try {
            String[] args3 = new String[] { "D:\\python3.6.6\\pythonw.exe"
                    ,pyPath
            };
            proc = Runtime.getRuntime().exec(args3);  //该方法参数必须是String类型的

            //用输入输出流来截取结果
            BufferedReader in = new BufferedReader(new InputStreamReader(proc.getInputStream(), "gbk"));   //gbk 避免汉字乱码

            while ((line = in.readLine()) != null) {
//                System.out.println(line);
                lines.add(line);   //把Python的print值保存了下来
            }
//            System.out.println("1，下一次关键词是："+lines);
            in.close();
            int exitVal = proc.waitFor();
//            System.out.println("Process exitValue: " + exitVal);
        } catch (IOException e) {
            e.printStackTrace();
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
//        System.out.println(lines.get(lines.size()-1));
//        System.out.println(lines.get(lines.size()-1));
        year = lines.get(lines.size()-1);
        count = lines.get(lines.size()-2);
        String lineData = lines.toString();
//        System.out.println("Java调Python脚本结束"+lineData);
        return lineData;
    }
}
