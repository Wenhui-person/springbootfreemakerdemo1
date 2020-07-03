<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
<table class="querytable">
    <tr>
        <th width="33%" align="right">用户名：</th>
        <td align="left">
           ${tbuser.username}
        </td>
    </tr>
    <tr>
        <th align="right">角色：</th>
        <td align="left">
            <!--
                条件选择
            -->
            <#switch tbuser.userroles>
                <#case "02">老师<#break >
                <#case "03">校长<#break >
                <#case "04">管理员<#break >
                <#default >学生
            </#switch>
        </td>
    </tr>
    <tr>
        <th width="33%" align="right">昵称：</th>
        <td align="left">
            ${tbuser.nickname}
        </td>
    </tr>
    <tr>
        <th width="33%" align="right">日期：</th>
        <td align="left">
            ${tbuser.regtime?date}  <!--注意日期的写法--->
        </td>
    </tr>
    <tr>
        <td colspan="3" align="center">
            <!--注意该句的写法-->
            <input type="button" value="返回" onclick="window.history.go(-1);"/>
        </td>
    </tr>
</table>
<link rel="stylesheet" href="/css/editTablestyles.css">
<script type="text/javascript" src="/js/jquery.min.js"></script>
<script type="text/javascript" src="/js/listTable.js"></script>
</body>
</html>