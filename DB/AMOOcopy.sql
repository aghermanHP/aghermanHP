	CREATE TABLE Packets (
	PacketsId INT PRIMARY KEY,
	Transport VARCHAR(60),
	Hebergment VARCHAR(60),
	Alimentation VARCHAR(60),
	Assurance VARCHAR(60),
	Divertisment VARCHAR(60),
	Pay VARCHAR(60),
	Ville VARCHAR(60));
       
CREATE TABLE Suport(
    SuportId INT PRIMARY KEY, 
    SuportTransport VARCHAR(60),
    SuportHebergement VARCHAR(60),
    SuportAlimentation VARCHAR(60),
    SuportDivertisment VARCHAR(60));
       
CREATE TABLE Payment(
	PaymentId INT PRIMARY KEY,
    Cache int,
    Card int,
    Terminal int, 
    Transfer int,
    Somme int);
       
CREATE TABLE Utilisateur(UtilisateurId INT PRIMARY KEY,
    NommeUtilisateur VARCHAR (60),
    PrenommeUtilisateur VARCHAR (60),
    Username VARCHAR (60),
    MotDePasse VARCHAR (60), Rolle int);
       
CREATE TABLE Employe(
	EployeId INT PRIMARY KEY,
    Directeur VARCHAR (60),
    ManagerSuperior VARCHAR (60),
	ManagerPacket VARCHAR (60),
	Suport VARCHAR (60));
       
CREATE TABLE Evaluation(
	EvaluationId INT PRIMARY KEY,
    MessageEvaluation TEXT);
    
    
    INSERT INTO Packets  VALUES (1, 'Avia', 'Hotel', 'Restaurant', 'Grave carate', 'Excursion', 'Moldova', 'Chisinau');
    INSERT INTO Packets  VALUES (2, 'Train', 'Pensune', 'Restaurant', 'ASITO', 'Excursion', 'Moldova', 'Orheiul Vechi');
    INSERT INTO Packets  VALUES (3, 'Voiture', 'Hotel', 'Restaurant', 'Grave carate', 'Escalade', 'Romania', 'Brasov');
    INSERT INTO Packets  VALUES (4, 'Avia', 'Motel', 'Restaurant', 'MoldAsig', 'Excursion', 'Ukraina', 'Odesa');
    ---------------------------------------------------------------------------------------------------------
    
    --#insert dans le table Suport__________________________________________________________________________
    INSERT INTO Suport VALUES (1, 'Ionita Vasilie', '', '', '');
    INSERT INTO Suport VALUES (2, '', 'Doru Vasilache', '', '');
    INSERT INTO Suport VALUES (3, '', '', 'Ion Prepelit', '');
    INSERT INTO Suport VALUES (4, '', '', '', 'Urecheatu Vladimir');
    --#----------------------------------------------------------------------------------------------------------
    
    --#insert dans le table Utilisateur______________________________________________________________
    INSERT INTO Utilisateur VALUES (1, 'Doru', 'Vasilache', 'Dory56', 'XXXXXXX', 1);
    INSERT INTO Utilisateur VALUES (2, 'Ionita', 'Vasilie', 'Ion69', 'XXXXXXXX', 1);
    INSERT INTO Utilisateur VALUES (3, 'Ion', 'Prepelita', 'Prep56', 'XXXXXXXXX', 1);
    INSERT INTO Utilisateur VALUES (4, 'Vladimir', 'Urecheatu', 'Vlad75', 'XXXXXXXXXX', 1);
    INSERT INTO Utilisateur VALUES (5, 'Radu', 'Putin', 'Radu56', 'YYY', 0);
    INSERT INTO Utilisateur VALUES (6, 'Roman', 'Calos', 'Calos56', 'YYYY', 0);
    --#------------------------------------------------------------------------------------------------------------
    --#insert dans le table Employe
    INSERT INTO Employe VALUES (1, 'Vladimir Putin', '', '', '');
    INSERT INTO Employe VALUES (2, '', 'Igor Dodon', '', '');
    INSERT INTO Employe VALUES (3, '', '', 'Vlad Filat', '');
    INSERT INTO Employe VALUES (4, '', '', '', 'Doru Vasilache');
    INSERT INTO Employe VALUES (5, '', '', '', 'Vasile Ionita');
    INSERT INTO Employe VALUES (6, '', '', '', 'Ion Perepelita');
    INSERT INTO Employe VALUES (7, '', '', '', 'Vladimir Urecheatu');
    --#--------------------------------------------------------------------------------------------------------
    
    --#insert dans le table Payment
    INSERT INTO Payment Values (1, 1, 0, 0, 0, 10000);
    INSERT INTO Payment Values (2, 0, 1, 0, 0, 1200);
    INSERT INTO Payment Values (3, 0, 0, 1, 0, 1300);
    INSERT INTO Payment Values (4, 0, 0, 0, 1, 10000);
	--#--------------------------------------------------------------------------------------------------------
    
	--# create table Packets_Utilisateur_____________________________________________________________________
    
    CREATE TABLE Packets_Utilisateur(
    PacketId INT,
    UtilisateurId INT,
    FOREIGN KEY (PacketId) REFERENCES Packets (PacketId) ON DELETE RESTRICT ON UPDATE CASCADE,
    FOREIGN KEY (UtilisateurId) REFERENCES Utilisateur (UtilisateurId) ON DELETE RESTRICT ON UPDATE CASCADE,
    PRIMARY KEY (PacketId,
    UtilisateurId));
	#--------------------------------------------------------------------------------------------------------
    
    #CREATE TABLE Packets_Payment___________________________________________________________________________________________
    CREATE TABLE Packets_Payment(
    PacketsId INT,
    PaymentId INT,
    FOREIGN KEY (PacketsId) REFERENCES Packets (PacketsId) ON DELETE RESTRICT ON UPDATE CASCADE,
    FOREIGN KEY (PaymentId) REFERENCES Payment (PaymentId) ON DELETE RESTRICT ON UPDATE CASCADE,
    PRIMARY KEY (PacketsId,PaymentId));
    #--------------------------------------------------------------------------------------------------------
    
    #CREATE TABLE Packets_Employe___________________________________________________________________________________________
	CREATE TABLE Packets_Employe (
	PacketId INT,
    EmployeId INT,
    FOREIGN KEY (PacketId) REFERENCES Packets (PacketId) ON DELETE RESTRICT ON UPDATE CASCADE,
    FOREIGN KEY (EmployeId) REFERENCES Employe (EmployeId) ON DELETE RESTRICT ON UPDATE CASCADE,
    PRIMARY KEY (PacketId,EmployeId)
    );
     #--------------------------------------------------------------------------------------------------------
     
     #CREATE TABLE Suport_Employe___________________________________________________________________________
     CREATE TABLE Suport_Employe (
	SuportId  INT,
    EmployeId INT,
    FOREIGN KEY (SuportId ) REFERENCES Suport (SuportId ) ON DELETE RESTRICT ON UPDATE CASCADE,
    FOREIGN KEY (EmployeId) REFERENCES Employe (EmployeId) ON DELETE RESTRICT ON UPDATE CASCADE,
    PRIMARY KEY (SuportId , EmployeId)
    );
    #________________________________________________________________________________________________________
    	#CREATE TABLE Packets_Suport
    CREATE TABLE Packets_Suport (
    PacketsId INT,
    SuportId INT,
    FOREIGN KEY (PacketsId) REFERENCES Packets (PacketsId) ON DELETE RESTRICT ON UPDATE CASCADE, 
    FOREIGN KEY (SuportId) REFERENCES Suport (SuportId) ON DELETE RESTRICT ON UPDATE CASCADE,
    PRIMARY KEY (PacketsId, SuportId));
    #_________________________________________________________________________________________________________
    
	select * from Packets
    
    
    