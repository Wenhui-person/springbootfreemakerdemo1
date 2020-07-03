<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
<form action="doUpdateUser" method="post">
    <table id="ajaxtable">
        <tr>
            <th width="33%" align="right">用户名：</th>
            <td align="left">
                <input type="text" name="username" value="${tbuser.username}"/>
                <input type="hidden" name="userid" value="${tbuser.userid}"/>
            </td>
            <td width="33%">
                <span id="ajaxUsername"></span>
            </td>
        </tr>
        <tr>
            <th align="right">密码：</th>
            <td align="left">
                <input type="password" name="password"/>
            </td>
        </tr>
        <tr>
            <th align="right">角色：</th>
            <td align="left">
                <select name="userroles">
                    <option value="00">--请选择--</option>
                    <option value="01">学生-</option>
                    <option value="02">老师</option>
                    <option value="03">校长</option>
                    <option value="04">管理员</option>
                </select>
            </td>
        </tr>
        <tr>
            <th align="right">昵称：</th>
            <td align="left">
                <input type="text" name="nickname" value="${tbuser.nickname}"/>
            </td>
        </tr>
        <tr>
            <td colspan="3" align="center">
                <input type="submit" value="修改用户信息"/>
            </td>
        </tr>
    </table>
</form>
<link rel="stylesheet" href="/css/editTablestyles.css">
<script type="text/javascript" src="/js/jquery.min.js"></script>
<script type="text/javascript" src="/js/listTable.js"></script>
<script>
    $(function () {
        var userroles="${tbuser.userroles}";
        $("select[name='userroles']").val(userroles);
    });
</script>
</body>
</html>