<%@page import ="org.soa.tp5.GestionService" %>
<%@page import ="org.soa.tp5.Compte" %>
<%@page import ="org.soa.tp5.GestionWS" %>
<%@page import ="jakarta.xml.ws.BindingProvider" %>
<%@page import ="java.util.ArrayList" %>
<%@page import ="java.util.Iterator" %>
<html>
<body>
<h2>Hello World! Services WEB...</h2>
<%
GestionService stub2 = new GestionWS().getGestionServicePort();
 // Afficher les comptes
 //Afficher une liste de comptes créés par le service web "GestionWS"
 java.util.List<Compte> lc= stub2.getComptes();
 for (Iterator it = lc.iterator(); it.hasNext();)
 {
 Compte c= (Compte)it.next();
 out.println(c.getCode()+":"+c.getSolde()+"<br>");
 }

 /* 
 // Ajouter un premier compte
 Compte ct1 =new Compte();
 ct1.setCode(1);
 ct1.setSolde(20.2);
 stub2.ajouterCompte(ct1);
 // Ajouter un deuxième compte
 Compte ct2 =new Compte();
 ct2.setCode(2);
 ct2.setSolde(100.0);
 stub2.ajouterCompte(ct2);
 //Afficher la liste des comptes enregistrés
 out.println("---------------------<br>");
 out.println("Comptes enregistrés...."+"<br>");
 java.util.List<Compte> lct= stub2.getListeComptes();
 for (Iterator it = lct.iterator(); it.hasNext();)
 {
 Compte c= (Compte)it.next();
 out.println(c.getCode()+":"+c.getSolde()+"<br>");
 }
 // Supprimer le compte ayant le code 1
 out.println("---------------------"+"<br>");
 out.println("Supprimer le compte ayant le code 1...."+"<br>");
 stub2.supprimerCompte(1);
 //Afficher la liste des comptes enregistrés
 out.println("---------------------"+"<br>");
 out.println("Comptes enregistrés...."+"<br>");
 java.util.List<Compte> lct2= stub2.getListeComptes();
 for (Iterator it = lct2.iterator(); it.hasNext();)
 {
 Compte c= (Compte)it.next();
 out.println(c.getCode()+":"+c.getSolde()+"<br>");
 }
 */ 
%>
</body> </html>
