# springbootfreemakerdemo1
一、FreeMaker的运用
  FreeMarker是一款模板引擎： 即一种基于模板和要改变的数据， 
  并用来生成输出文本（HTML网页、电子邮件、配置文件、源代码等）的通用工具。
  它不是面向最终用户的，而是一个Java类库，是一款程序员可以嵌入他们所开发产品的组件。
二、过程
 控制器中有两个方法：
 1、跳转到index.ftlh页面的方法
 2、验证用户名和密码是否正确的方法
 freemarker判断是否为null(在页面文件中)
 1、${msg！"默认值"}
 2、<#if msg??>${msg}</#if>
