<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>

<form action="toAddUser" method="post">
    <table id="ajaxtable">
        <tr>
            <th>用户编号</th>
            <th>用户名</th>
            <th>用户角色</th>
            <th>昵称</th>
            <th>注册日期</th>
            <th>操作</th>
        </tr>
        <#if users ?? &&(users?size>0)>
        <#list users as tbuser>
            <tr>
                <td>${tbuser.userid}</td>
                <td>${tbuser.username}</td>
                <td>
                    <#switch tbuser.userroles>
                        <#case "02">老师<#break >
                        <#case "03">校长<#break >
                        <#case "04">管理员<#break >
                        <#default >学生
                    </#switch>
                </td>
                <td>${tbuser.nickname}</td>
                <td>${tbuser.regtime?date}</td>
                <td>
                    <a href="detailUser?userid=${tbuser.userid}">查看</a>
                    <a href="toUpdateUser">修改</a>
                    <a href="deleteUser?userid=${tbuser.userid}" onclick="return confirm('确认删除该用户吗？')">删除</a>
                </td>
            </tr>
        </#list>
         <#else >
            <tr>
                <td colspan="6" align="center">对不起，没有查到相关记录！！！</td>
            </tr>
        </#if>
        <tr>
            <td colspan="6" align="center">
                <input type="submit" value="保存用户信息">
            </td>
        </tr>
    </table>
</form>


<link rel="stylesheet" href="/css/editTablestyles.css">
<script type="text/javascript" src="/js/jquery.min.js"></script>
<script type="text/javascript" src="/js/listTable.js"></script>
</body>
</html>