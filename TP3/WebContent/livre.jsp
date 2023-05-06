<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="beans.Livre" %>

<%
    Livre livre = new Livre();
    livre.setAuteur(request.getParameter("auteur"));
    livre.setTitre(request.getParameter("titre"));
%>

<html>
<head>
    <title>Livre</title>
</head>
<body>
    <h1>Livre</h1>
    <p>Auteur: <%= livre.getAuteur() %></p>
    <p>Titre: <%= livre.getTitre() %></p>
    
    <% 
        livre.setAuteur(request.getParameter("nouvelAuteur"));
        livre.setTitre(request.getParameter("nouveauTitre"));
    %>
    
    <h2>Modification du livre</h2>
    <form method="post" action="livre.jsp">
        <p>
            Nouvel auteur: <input type="text" name="nouvelAuteur" />
            Nouveau titre: <input type="text" name="nouveauTitre" />
            <input type="submit" value="Modifier" />
        </p>
    </form>
    
    <h2>Livre modifié</h2>
    <p>Auteur: <%= livre.getAuteur() %></p>
    <p>Titre: <%= livre.getTitre() %></p>
</body>
</html>