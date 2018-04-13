Readme.txt
====================================================================
Description du projet
---------------------
La société fictive Proxibanque 

Pré-requis de configuration
--------------------------
- JDK 9 installé sur la machine cible
	Téléchargé depuis: http://www.oracle.com/technetwork/java/javase/downloads/index.html
- Serveur d'application web : tomcat 9.0 
- Serveur WampServer 3.0.4 installé (avec serveur de base de données : Mysql)
- Importer la base de données 'proxibanqueV2-bdd' sur PhPMyAdmin


Si execution sur Eclipse
--------------------------
- Eclipse paramétré sur la JDK et le serveur d'application web especifiées précedemmment

	
Execution sur Tomcat
-------------------------------------------
- allumer le serveur d'applications en double-cliquant le fichier "startup.bat" du répertoire "bin" d'installation de votre serveur tomcat.
- démarrer votre serveur de base de données Wamp en double-cliquant sur le fichier "wampmanager.exe" du répertoire d'installation de votre serveur Wamp.
- dans le dossier 'proxibanqueWebapp/target/' , copier le fichier 'proxibanqueWebapp.war'
- copier le fichier proxibanqueWebapp.war dans le dossier 'webapps' du répertoire d'installation  du serveur tomcat.
- Vérifier que le fichier proxibanqueWebapp.war se dézipe dans un répertoire proxibanqueWebapp
- Ouvrir un Navigateur Web entrer localhost:8080/proxibanqueWebapp dans la barre d'adresse

Build with
----------
- Maven : management des dépendances


Copyright and licensing information
-----------------------------------
- les droits de l'application web livrée "ProxibanqueV2" sont détenus par :
		Nabil SERSOUB
		Beatriz MORENO
		Mathieu TRICOIRE
- utilisation exclusivement réservée à la société fictive Proxibanque.

Contact information for the distributor or programmer
-----------------------------------------------------
- contacter la société fictive GTM Etudiants pour des informations complémentaires.



