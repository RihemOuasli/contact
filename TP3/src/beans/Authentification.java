package beans;

public class Authentification {
private String Login;
private String Password;

public Authentification () {
	setLogin("");
	setPassword("");
}

public boolean valide() {
    String user = "USER1";
    String pass = "PASS1";
    return (Login.equals(user) && Password.equals(pass));
}

public String getLogin() {
	return Login;
}

public void setLogin(String login) {
	this.Login = login;
}

public String getPassword() {
	return Password;
}

public void setPassword(String password) {
	this.Password = password;
}

}
