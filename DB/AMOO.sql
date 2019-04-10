CREATE TABLE Packets (PacketsId INT PRIMARY KEY, Transport VARCHAR(60), Hebergment VARCHAR(60),
       Alimentation VARCHAR(60), Assurance VARCHAR(60), Divertisment VARCHAR(60), Pay VARCHAR(60),
       Ville VARCHAR(60));
       
	CREATE TABLE Suport (SuportId INT PRIMARY KEY, SuportTransport VARCHAR(60),
    SuportHebergement VARCHAR(60), SuportAlimentation VARCHAR(60), SuportDivertisment VARCHAR(60));
       
		CREATE TABLE Payment (PaymentId INT PRIMARY KEY, Cache bool, Card bool, Terminal bool, 
        Transfer bool, Somme int);
       
	CREATE TABLE Utilisateur (UtilisateurId INT PRIMARY KEY, NommeUtilisateur VARCHAR (60),
    PrenommeUtilisateur VARCHAR (60),Username VARCHAR (60), MotDePasse VARCHAR (60), Rolle bool);
       
CREATE TABLE Employe (EployeId INT PRIMARY KEY, Directeur VARCHAR (60), ManagerSuperior VARCHAR (60),
       ManagerPacket VARCHAR (60), Suport VARCHAR (60));
       
	CREATE TABLE Evaluation (EvaluationId INT PRIMARY KEY, MessageEvaluation TEXT);
    
    #insert dans le table Packets__________________________________________________________________________
    
    INSERT INTO Packets  VALUES (1, "Avia", "Hotel", "Restaurant", "Grave carate", "Excursion", "Moldova", "Chisinau");
    INSERT INTO Packets  VALUES (2, "Train", "Pensune", "Restaurant", "ASITO", "Excursion", "Moldova", "Orheiul Vechi");
    INSERT INTO Packets  VALUES (3, "Voiture", "Hotel", "Restaurant", "Grave carate", "Escalade", "Romania", "Brasov");
    INSERT INTO Packets  VALUES (4, "Avia", "Motel", "Restaurant", "MoldAsig", "Excursion", "Ukraina", "Odesa");
    #---------------------------------------------------------------------------------------------------------
    
    #insert dans le table Suport__________________________________________________________________________
    INSERT INTO Suport VALUES (1, "Ionita Vasilie", "", "", "");
    INSERT INTO Suport VALUES (2, "", "Doru Vasilache", "", "");
    INSERT INTO Suport VALUES (3, "", "", "Ion Prepelit", "");
    INSERT INTO Suport VALUES (4, "", "", "", "Urecheatu Vladimir");
    #----------------------------------------------------------------------------------------------------------
    
    #insert dans le table Utilisateur______________________________________________________________
    INSERT INTO Utilisateur VALUES (1, "Doru", "Vasilache", "Dory56", "XXXXXXX", true);
    INSERT INTO Utilisateur VALUES (2, "Ionita", "Vasilie", "Ion69", "XXXXXXXX", true);
    INSERT INTO Utilisateur VALUES (3, "Ion", "Prepelita", "Prep56", "XXXXXXXXX", true);
    INSERT INTO Utilisateur VALUES (4, "Vladimir", "Urecheatu", "Vlad75", "XXXXXXXXXX", true);
    INSERT INTO Utilisateur VALUES (5, "Radu", "Putin", "Radu56", "YYY", false);
    INSERT INTO Utilisateur VALUES (6, "Roman", "Calos", "Calos56", "YYYY", false);
    #------------------------------------------------------------------------------------------------------------
    #insert dans le table Employe
    INSERT INTO Employe VALUES (1, "Vladimir Putin", "", "", "");
    INSERT INTO Employe VALUES (2, "", "Igor Dodon", "", "");
    INSERT INTO Employe VALUES (3, "", "", "Vlad Filat", "");
    INSERT INTO Employe VALUES (4, "", "", "", "Doru Vasilache");
    INSERT INTO Employe VALUES (5, "", "", "", "Vasile Ionita");
    INSERT INTO Employe VALUES (6, "", "", "", "Ion Perepelita");
    INSERT INTO Employe VALUES (7, "", "", "", "Vladimir Urecheatu");
    #--------------------------------------------------------------------------------------------------------
    
    #insert dans le table Payment
    INSERT INTO Payment Values (1, true, false, false, false, 10000);
    INSERT INTO Payment Values (2, false, true, false, false, 1200);
    INSERT INTO Payment Values (3, false, false, true, false, 1300);
    INSERT INTO Payment Values (4, false, false, false, true, 10000);
    
    