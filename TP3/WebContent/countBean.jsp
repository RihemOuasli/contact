<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<p>on repére le bean par le nom nomBean<br>
<jsp:useBean id="nomBean"  class="beans.SimpleBean" scope="session"></jsp:useBean>
<p>on accede au compteur avec la methode getCompteur :
<br> compteur = <%=nomBean.getCompteur()%>
<hr>
on incrémente le compteur avec la méthode increment <% nomBean.increment();%>
<p>on peut accéder a le propriéte par la balise getProperty :<br>
</jsp:getProperty name="nomBean" property="compteur">
</body>
</html>