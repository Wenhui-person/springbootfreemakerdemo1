package cn.edu.sdut.springbootfreemarkerdemo;

import cn.edu.sdut.springbootfreemarkerdemo.entity.Tbuser;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginController {

    @RequestMapping("/")
    public String toLogin(){
        return "index";  //必须是字符串类型
    }
    @RequestMapping("doLogin")
    public String doLogin(Tbuser tbuser, ModelMap modelMap){
        if("admin".equals(tbuser.getUsername())&&"1234".equals(tbuser.getPassword())){
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
