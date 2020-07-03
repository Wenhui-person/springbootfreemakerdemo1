<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
<form action="doAddUser" method="post">
    <table class="querytable">
        <tr>
            <th width="33%" align="right">用户名：</th>
            <td>
                <input type="text" name="username"/>
                <span id="ajaxUsername"></span>
            </td>
        </tr>
        <tr>
            <th align="right">密码：</th>
            <td>
                <input type="password" name="password"/>
            </td>
        </tr>
        <tr>
            <th align="right">昵称：</th>
            <td>
                <input type="text" name="nickname"/>
            </td>
        </tr>
        <tr>
            <th align="right">角色：</th>
            <td>
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

        </tr>
        <tr>
            <td colspan="2" align="center">
                <input type="submit" value="保存学生信息"/>
            </td>
        </tr>
    </table>
</form>
<link rel="stylesheet" href="/css/editTablestyles.css">
<script type="text/javascript" src="/js/jquery.min.js"></script>
<script type="text/javascript" src="/js/listTable.js"></script>
</body>
</html>