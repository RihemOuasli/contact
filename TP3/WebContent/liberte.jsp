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
    <title>Libert�</title>
</head>
<body>
 <jsp:useBean id="Democratie" class="beans.Democratie"/>
<%
int voix   = democratie.voter();
%>

<h1><font color="hotpink">Bonjour la libert�</font></h1>
<p>passons au vote ...</p>
<p>Nombre de voix apr�s le vote : <%= ++voix%></p>
 
</body>
</html>