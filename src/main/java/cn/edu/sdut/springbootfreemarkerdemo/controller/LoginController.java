package cn.edu.sdut.springbootfreemarkerdemo.controller;

import cn.edu.sdut.springbootfreemarkerdemo.entity.Tbuser;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.Date;

@Controller
public class LoginController {

    @RequestMapping("/")
    public String toLogin(){
        return "index";  //必须是字符串类型
    }
    @RequestMapping("doLogin")
    public String doLogin(Tbuser tbuser, HttpSession session, ModelMap modelMap){
        if("admin".equals(tbuser.getUsername())&&"1234".equals(tbuser.getPassword())){
            Tbuser tb=new Tbuser(10086,"liujijiang","123456","01","江",new Date());
            session.setAttribute("tbuser",tb);
            return "main/main";
        }else {
            String msg="对不起，用户名或者密码错误";
            //如何向页面上传值
            //为了和其他参数进行区分，企业中推荐我们ModelMap写在参数列表的最后
            modelMap.put("msg",msg);
            return "index";
        }
    }
}
