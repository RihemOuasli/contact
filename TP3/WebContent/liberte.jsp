<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="beans.Democratie" %>

<%
    Democratie democratie = new Democratie();
    int voixAvant = democratie.getVoix();
    int voixApres = democratie.voter();
%>

<html>
<head>
    <title>Liberté</title>
</head>
<body>
 <jsp:useBean id="Democratie" class="beans.Democratie"/>
<%
int voix   = democratie.voter();
%>

<h1><font color="hotpink">Bonjour la liberté</font></h1>
<p>passons au vote ...</p>
<p>Nombre de voix après le vote : <%= ++voix%></p>
 
</body>
</html>