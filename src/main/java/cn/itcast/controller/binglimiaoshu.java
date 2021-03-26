package cn.itcast.controller;
import cn.itcast.domain.Account;
import cn.itcast.serrvice.AccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
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
@RequestMapping(path = "/bingqing")
public class binglimiaoshu {
    @Autowired
    private AccountService accountService1;
    public static binglimiaoshu demo = new binglimiaoshu();   //实例化类
    public static String kw = null;
    public static String zhengzhuang = null;
    public static String kws = null;
    public static String disease = null;
    public static String fl;
    public static Boolean fl1;
    @RequestMapping(path="/miaoshu")
    public String findAll(String bingqingmiaoshu, Model model,HttpSession session,HttpServletRequest request){
        String res =demo.getPythonDemo("D:\\aaaaa.py", bingqingmiaoshu);      //调用python的方法
        session.setAttribute("sswa1", kw);
//        System.out.println("2，下一次关键词是："+kw);
        String res1 =demo.getPythonDemo1("D:\\python.txt", kw);
        session.setAttribute("sswa2", zhengzhuang);
        session.setAttribute("sswa3", disease);
        System.out.println("1"+fl);
        if(fl.equals("1")||fl.equals("2")||fl.equals("3")){
            return "yucekenengjibing1";
        }
        return "yucekenengjibing";
    }
    @RequestMapping(path="/xiangxi")
    public String findAll1(String bingqingxiangxi, Model model,HttpSession session,HttpServletRequest request){
//        String str1 = request.getParameter("xiangxi");
//        System.out.println("str1="+str1);
        fl1 = true;
        System.out.println("2"+fl);
        while (!fl.equals("1") & !fl.equals("0")& !fl.equals("2")& !fl.equals("3")){
            demo.getPythonDemo2("D:\\python2.txt",disease,fl1,kws, kw);
            session.setAttribute("sswa2", zhengzhuang);
            session.setAttribute("sswa1", kws);
//            System.out.println("此时的是2"+session.getAttribute("sswa1"));
            return "yucekenengjibing";
        }
        session.setAttribute("sswa3",disease);
        return "yucekenengjibing1";
    }

    @RequestMapping(path="/xiangxi1")
    public String findAll2(String bingqingxiangxi, Model model,HttpSession session,HttpServletRequest request){
        fl1 = false;
        System.out.println("3"+fl);
        while (!fl.equals("1") && !fl.equals("0")& !fl.equals("2")& !fl.equals("3")){
            demo.getPythonDemo2("D:\\python2.txt",disease,fl1,kws, kw);
            session.setAttribute("sswa2", zhengzhuang);
            session.setAttribute("sswa1", kws);
            System.out.println("此时的是1"+session.getAttribute("sswa1"));
            return "yucekenengjibing";
        }
        session.setAttribute("sswa3",disease);
        return "yucekenengjibing1";
    }

    public String getPythonDemo(String pyPath, String args1){
        Process proc;
        String line = null;
        List<String> lines = new ArrayList<String>();
        try {
            String[] args3 = new String[] { "D:\\python3.6.6\\pythonw.exe"
                    ,pyPath
                    ,String.valueOf(args1)
            };
            proc = Runtime.getRuntime().exec(args3);  //该方法参数必须是String类型的

            //用输入输出流来截取结果
            BufferedReader in = new BufferedReader(new InputStreamReader(proc.getInputStream(), "gbk"));   //gbk 避免汉字乱码

            while ((line = in.readLine()) != null) {
//                System.out.println(line);
                lines.add(line);   //把Python的print值保存了下来
            }
            System.out.println("1，下一次关键词是："+lines);
            in.close();
            int exitVal = proc.waitFor();
            System.out.println("Process exitValue: " + exitVal);
        } catch (IOException e) {
            e.printStackTrace();
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        kw = lines.get(lines.size()-1);
        System.out.println("1，关键词是："+kw);
        String lineData = lines.toString();
//        System.out.println("Java调Python脚本结束"+lineData);
        return lineData;
    }


    public String getPythonDemo1(String pyPath, String args1){
        Process proc;
        String line = null;
        List<String> lines = new ArrayList<String>();
        try {
            String[] args3 = new String[] { "D:\\python3.6.6\\pythonw.exe"
                    ,pyPath
                    ,String.valueOf(args1)
            };
            proc = Runtime.getRuntime().exec(args3);  //该方法参数必须是String类型的

            //用输入输出流来截取结果
            BufferedReader in = new BufferedReader(new InputStreamReader(proc.getInputStream(), "gbk"));   //gbk 避免汉字乱码

            while ((line = in.readLine()) != null) {
//                System.out.println(line);
                lines.add(line);   //把Python的print值保存了下来
            }

            in.close();
            int exitVal = proc.waitFor();
            System.out.println("Process exitValue: " + exitVal);
        } catch (IOException e) {
            e.printStackTrace();
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        System.out.println("第一个参数"+lines.get(lines.size()-4));
        zhengzhuang = lines.get(lines.size()-4);
        kws = lines.get(lines.size()-3);
        disease = lines.get(lines.size()-2);
        fl = lines.get(lines.size()-1);
        System.out.println("第二个参数"+lines.get(lines.size()-3));
        System.out.println("第三个参数"+lines.get(lines.size()-2));
        System.out.println("第四个参数"+lines.get(lines.size()-1));
        String lineData = lines.toString();
//        System.out.println("Java调Python脚本结束"+lineData);
        return lineData;
    }

    public String getPythonDemo2(String pyPath, String args1, Boolean args2, String args3, String args4){
        Process proc;
        String line = null;
        List<String> lines = new ArrayList<String>();
        try {
            String[] args5 = new String[] { "D:\\python3.6.6\\pythonw.exe"
                    ,pyPath
                    ,String.valueOf(args1)
                    ,String.valueOf(args2)
                    ,String.valueOf(args3)
                    ,String.valueOf(args4)
            };
            proc = Runtime.getRuntime().exec(args5);  //该方法参数必须是String类型的

            //用输入输出流来截取结果
            BufferedReader in = new BufferedReader(new InputStreamReader(proc.getInputStream(), "gbk"));   //gbk 避免汉字乱码

            while ((line = in.readLine()) != null) {
                System.out.println(line);
                lines.add(line);   //把Python的print值保存了下来
            }

            in.close();
            int exitVal = proc.waitFor();
            System.out.println("Process exitValue: " + exitVal);
        } catch (IOException e) {
            e.printStackTrace();
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
//        System.out.println("第一个参数"+lines.get(lines.size()-3));
//        System.out.println("标准答案是："+lines.get(lines.size()-1));
        zhengzhuang = lines.get(lines.size()-4);
        disease = lines.get(lines.size()-3);
        kws = lines.get(lines.size()-2);
        fl = lines.get(lines.size()-1);
//        System.out.println("第二个参数"+lines.get(lines.size()-2));
//        System.out.println("第三个参数"+lines.get(lines.size()-1));
        String lineData = lines.toString();
//        System.out.println("Java调Python脚本结束"+lineData);
        return lineData;
    }
    @RequestMapping(path="/save")
    public void save(HttpServletResponse response, HttpServletRequest request, Account account) throws IOException {

    }
}
