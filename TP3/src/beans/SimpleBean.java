package beans;

public class SimpleBean {
private int compteur;
public SimpleBean(){
	setCompteur(0);
}
private void setCompteur(int theValue) {

	// TODO Auto-generated method stub
	compteur=theValue;
}
public int getCompteur(){
	return compteur;
}
public void increment(){
	compteur++;
}


}
