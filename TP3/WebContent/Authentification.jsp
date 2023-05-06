<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="beans.Authentification" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Authentification</title>
</head>
<body>
    <%
        Authentification auth = new Authentification();
        auth.setLogin(request.getParameter("login"));
        auth.setPassword(request.getParameter("password"));

        String message = "";
        if (auth.valide()) {
            message = "Authentification valide.";
        } else {
            message = "Authentification invalide.";
        }
    %>

    <h1>Authentification</h1>
    <p>Login: <%= auth.getLogin() %></p>
    <p>Password: <%= auth.getPassword() %></p>
    <p><%= message %></p>

    <form method="post" action="">
        <p>Login: <input type="text" name="login"></p>
        <p>Password: <input type="password" name="password"></p>
        <p><input type="submit" value="Se connecter"></p>
    </form>
</body>
</html>