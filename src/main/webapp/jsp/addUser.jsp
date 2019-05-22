<%--
  Created by IntelliJ IDEA.
  User: genya9000
  Date: 21.05.19
  Time: 23:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Anketa</title>
</head>
<body>
<fieldset>
    <legend align="center">Расскажите о себе</legend>
    <form action="adduser" method="post">
        <label for="name">Ваше имя:</label><Br>
        <input id= "name" type="text" name="username">
        <Br>
        <label for="phone">Ваш телефон:</label><Br>
        <input id= "phone" type="text" name="userphone">
        <Br>
        <label for="email">Ваш email:</label><Br>
        <input id= "email" type="email" name="useremail">
        <Br>
        <label for="password">Введите пароль:</label><Br>
        <input id= "password" type="text" name="userpassword">
        <Br><Br>
        <input type="submit" value="Отправить"/>


    </form>
</fieldset>
</body>
</html>

