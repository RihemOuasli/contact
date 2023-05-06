<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="beans.Contact" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Afficher un contact</title>
</head>
<body>
	<h1>Informations du contact :</h1>
	
	<%
	// création d'un objet Contact
	Contact ct = new Contact();
	
	// chargement du contact avec l'ID 1
	ct.load(1);
	%>
	
	<p>Nom : <%= ct.getNom() %></p>
	<p>Prénom : <%= ct.getPrenom() %></p>
	<p>Email : <%= ct.getEmail() %></p>
</body>
</html>