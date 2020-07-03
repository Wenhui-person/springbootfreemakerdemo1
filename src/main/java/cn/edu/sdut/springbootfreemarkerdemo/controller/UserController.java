package cn.edu.sdut.springbootfreemarkerdemo.controller;

import cn.edu.sdut.springbootfreemarkerdemo.entity.Tbuser;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Controller
public class UserController {

    //重定向
    public static final String SUCCESS="redirect:queryUsers";

    @RequestMapping("deleteUser")
    public String deleteUser(int userid){
        System.out.println("userid = " + userid);
        return SUCCESS;
    }
    @RequestMapping("detailUser")
    public String detailUser(int userid,ModelMap modelMap){
        System.out.println("userid = " + userid);
        Tbuser tbuser=new Tbuser(10089,"yangdoudou","123456","01","灯",new Date());
        modelMap.put("tbuser",tbuser);
        return "user/detailUser";
    }
    @RequestMapping("toUpdateUser")
    public String toUpdateUser(ModelMap modelMap){
        //System.out.println("userid = " + userid);
        Tbuser tbuser=new Tbuser(10089,"yangdoudou","123456","01","灯",new Date());
        modelMap.put("tbuser",tbuser);
        return "user/updateUser";
    }
    @RequestMapping("doUpdateUser")
    public String doUpdateUser(Tbuser tbuser){
        System.out.println("tbuser = " + tbuser);
        return SUCCESS;
    }

    @RequestMapping("toAddUser")
    public String toAddUser(){
        return "user/addUser";
    }
    @RequestMapping("doAddUser")
    public String doAddUser(Tbuser tbuser){
        System.out.println("tbuser = " + tbuser);
        return SUCCESS;
    }
    @RequestMapping("queryUsers")
    public String queryUsers(ModelMap modelMap){
        List<Tbuser> userList=new ArrayList<>();
        userList.add(new Tbuser(10086,"liujijiang","123456","01","江",new Date()));
        userList.add(new Tbuser(10087,"wangxue","123456","01","河",new Date()));
        userList.add(new Tbuser(10088,"songdong","123456","01","月",new Date()));
        userList.add(new Tbuser(10089,"yangdoudou","123456","01","灯",new Date()));
        userList.add(new Tbuser(10090,"yuhuan","123456","01","风",new Date()));
        modelMap.put("users",userList);
        return "user/listUser";
    }
}
