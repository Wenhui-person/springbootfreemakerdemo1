<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
<form action="doLogin" method="post">
    <table id="ajaxtable">
        <tr>
            <th align="right">用户名：</th>
            <td>
                <input type="text" name="username">
            </td>
        </tr>
        <tr>
            <th align="right">密码：</th>
            <td>
                <input type="password" name="password">
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <input type="submit" value="登录">
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <#if msg??>
                    ${msg}
                </#if>
            </td>
        </tr>
    </table>
</form>
<link rel="stylesheet" href="..static/css/editTablestyles.css">
<script type="text/javascript" src="/js/jquery.min.js"></script>
<script type="text/javascript" src="/js/listTable.js"></script>
</body>
</html>