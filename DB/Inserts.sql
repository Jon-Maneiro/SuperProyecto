/*esto son los inserts

-----------------NO CAMBIAR SIN CONSULTAR CON EL EQUIPO------------------------------



mismas reglas de estilo que el DDL
*/
/*----DB_ADMIN----*/
INSERT INTO DB_ADMIN(USERNAME,PASSWD) VALUES
('root','abcde!2345');


/*----DB_USER----
  estos serían los "default" */
INSERT INTO DB_USER(USERNAME,PASSWD) 
VALUES('usuario1','dbuser');

INSERT INTO DB_USER(USERNAME,PASSWD)
VALUES('usuario2','dbuser');

INSERT INTO DB_USER(USERNAME,PASSWD) 
VALUES('Noe','noesito');

INSERT INTO DB_USER(USERNAME,PASSWD)
VALUES('Filomena','sancha56');

/*----TEAM_OWNER----*/
INSERT INTO TEAM_OWNER(USERNAME,PASSWD,FULL_NAME,TELEPHONE) 
VALUES('Eunei','Neili1989','Euan Neilina','654778798');

INSERT INTO TEAM_OWNER(USERNAME,PASSWD,FULL_NAME,TELEPHONE) 
VALUES('Pateuk','Euke1986','Patxi Eukene','688546355');

INSERT INTO TEAM_OWNER(USERNAME,PASSWD,FULL_NAME,TELEPHONE) 
VALUES('Svyyar','Yar1990','Svyatopolk Yaroslava','878546377');

INSERT INTO TEAM_OWNER(USERNAME,PASSWD,FULL_NAME,TELEPHONE) 
VALUES('Isaume','Ume1992','Isamu Ume','57789652');

INSERT INTO TEAM_OWNER(USERNAME,PASSWD,FULL_NAME,TELEPHONE)
VALUES('Timos','Osm1986','Timoteo Osmo','588744122');

INSERT INTO TEAM_OWNER(USERNAME,PASSWD,FULL_NAME,TELEPHONE)
VALUES('Ruwal','Wal1979','Rudi Walburga','698599324');

/*----TEAM----*/
INSERT INTO TEAM (TEAM_NAME, NATIONALITY, TEAM_OWNER) 
VALUES ('Aon', 'IE', 1);

INSERT INTO TEAM (TEAM_NAME, NATIONALITY, TEAM_OWNER) 
VALUES ('Rua', 'NZ', 2);

INSERT INTO TEAM (TEAM_NAME, NATIONALITY, TEAM_OWNER) 
VALUES ('Kolme', 'FI', 3);

INSERT INTO TEAM (TEAM_NAME, NATIONALITY, TEAM_OWNER) 
VALUES ('Papat', 'ID', 3);

INSERT INTO TEAM (TEAM_NAME, NATIONALITY, TEAM_OWNER) 
VALUES ('Bost', 'ES', 4);

INSERT INTO TEAM (TEAM_NAME, NATIONALITY, TEAM_OWNER) 
VALUES ('Isii', 'GQ', 5);

INSERT INTO TEAM (TEAM_NAME, NATIONALITY, TEAM_OWNER) 
VALUES ('Seachd', 'UK', 1);

INSERT INTO TEAM (TEAM_NAME, TEAM_OWNER) 
VALUES ('Eight', 6);

/*----PLAYER----*/
INSERT INTO PLAYER(FULL_NAME,NICKNAME,SALARY,EMAIL,TEAM) 
VALUES('Duri Seong-Su','Spacefields',20000.03,'spa@mail.com',1);

INSERT INTO PLAYER(FULL_NAME,NICKNAME,SALARY,EMAIL,TEAM) 
VALUES('Jordana Sharlenne','Potatototer',15089.19,'pot@mail.com',2);

INSERT INTO PLAYER(FULL_NAME,NICKNAME,SALARY,EMAIL,TEAM) 
VALUES('Magdalena Anna','Azariel',16854.89,'aza@mail.com',3);

INSERT INTO PLAYER(FULL_NAME,NICKNAME,SALARY,EMAIL,TEAM) 
VALUES('Loan Martin','Goatchaser',17568.87,'goa@mail.com',4);

INSERT INTO PLAYER(FULL_NAME,NICKNAME,SALARY,EMAIL,TEAM) 
VALUES('Raul Garcia','Reisul',15000,'rei@mail.com',5);

INSERT INTO PLAYER(FULL_NAME,NICKNAME,SALARY,EMAIL,TEAM) 
VALUES('Nennena Uzoma','Optimus',15688.87,'opt@mail.com',6);

INSERT INTO PLAYER(FULL_NAME,NICKNAME,SALARY,EMAIL,TEAM) 
VALUES('Bulan Abdul','SuperBlob',16857.56,'sup@mail.com',7);

INSERT INTO PLAYER(FULL_NAME,NICKNAME,SALARY,EMAIL,TEAM) 
VALUES('Eligiusz Piotr','JellyBerry',18956.57,'jel@mail.com',8);

INSERT INTO PLAYER(FULL_NAME,NICKNAME,SALARY,EMAIL) 
VALUES('Julen Bakarne','Somplamp',15778.65,'som@mail.com');

INSERT INTO PLAYER(FULL_NAME,NICKNAME,SALARY,EMAIL) 
VALUES('Phelan Einrí','Ghomup',18685.25,'gho@mail.com');

INSERT INTO PLAYER(FULL_NAME,NICKNAME,SALARY,EMAIL) 
VALUES('Diarmad Catrina','Louxeerx',19365.25,'lou@mail.com');

INSERT INTO PLAYER(FULL_NAME,NICKNAME,SALARY,EMAIL) 
VALUES('Loida Chelo','Hellmoon',15058.25,'hel@mail.com');

INSERT INTO PLAYER(FULL_NAME,NICKNAME,SALARY,EMAIL) 
VALUES('Cláudia Flávio','BobbyBu',17865.35,'bob@mail.com');

INSERT INTO PLAYER(FULL_NAME,NICKNAME,SALARY,EMAIL) 
VALUES('Ali Vüsala','Ice-X',15236.95,'ice@mail.com');

INSERT INTO PLAYER(FULL_NAME,NICKNAME,SALARY,EMAIL) 
VALUES('Martin Alíz','Meadow',16857.24,'mea@mail.com');

INSERT INTO PLAYER(FULL_NAME,NICKNAME,SALARY,EMAIL) 
VALUES('Zafar Farid','Demonbroom',19999.99,'dem@mail.com');

INSERT INTO PLAYER(FULL_NAME,NICKNAME,SALARY,EMAIL)
VALUES('Ensio Lotta','Ujaukh',15784.25,'uja@mail.com');

INSERT INTO PLAYER(FULL_NAME,NICKNAME,SALARY,EMAIL) 
VALUES('Truls Dorotea','CarnalViper',18576.05,'car@mail.com');

INSERT INTO PLAYER(FULL_NAME,NICKNAME,SALARY,EMAIL) 
VALUES('Hulda Eva','Ioseph',18579.25,'ios@mail.com');

INSERT INTO PLAYER(FULL_NAME,NICKNAME,SALARY,EMAIL) 
VALUES('Ikenna Ngozi','Peggy',16578.25,'peg@mail.com');

INSERT INTO PLAYER(FULL_NAME,NICKNAME,SALARY,EMAIL) 
VALUES('Michalis Alekos','Zeus',15000.01,'zeu@mail.com');

INSERT INTO PLAYER(FULL_NAME,NICKNAME,SALARY,EMAIL) 
VALUES('Vitomir Štefanija','Völund','19586.27','vol@mail.com');

INSERT INTO PLAYER (FULL_NAME, NICKNAME, SALARY, EMAIL, TEAM)
VALUES ('Defensor Thrust', 'Deffy', '15000', 'aaa@mail.com', 3);

INSERT INTO PLAYER (FULL_NAME, NICKNAME, SALARY, EMAIL, TEAM)
VALUES ('Gerard Hawkins', 'Rivi', '12000', 'bpa@mail.com', 7);

INSERT INTO PLAYER (FULL_NAME, NICKNAME, SALARY, EMAIL, TEAM)
VALUES ('Victoria Williamson', 'Villia', '16000', 'vwh@mail.com', 6);

INSERT INTO PLAYER (FULL_NAME, NICKNAME, SALARY, EMAIL, TEAM)
VALUES ('Sergio Zulueta', 'Serzulu', '24000', 'srz@mail.com', 3);

INSERT INTO PLAYER (FULL_NAME, NICKNAME, SALARY, EMAIL, TEAM)
VALUES ('Kristi Farmer ', 'Corn', '13000', 'kfm@mail.com', 1);

INSERT INTO PLAYER (FULL_NAME, NICKNAME, SALARY, EMAIL, TEAM)
VALUES ('Marco Brown', 'mbro', '10000', 'mbr@mail.com', 1);

INSERT INTO PLAYER (FULL_NAME, NICKNAME, SALARY, EMAIL, TEAM)
VALUES ('Emmett Mccormick', 'Pungent', '23000', 'png@mail.com', 2);

INSERT INTO PLAYER (FULL_NAME, NICKNAME, SALARY, EMAIL, TEAM)
VALUES ('Mathew Hines', 'Hinn', '18000', 'aaa@mail.com', 2);

INSERT INTO PLAYER (FULL_NAME, NICKNAME, SALARY, EMAIL, TEAM)
VALUES ('Raul Clarke', 'Rail', '17000', 'ril@mail.com', 3);

INSERT INTO PLAYER (FULL_NAME, NICKNAME, SALARY, EMAIL, TEAM)
VALUES ('Arnold Webb', 'Dlonra', '14000', 'dck@mail.com', 3);

INSERT INTO PLAYER (FULL_NAME, NICKNAME, SALARY, EMAIL, TEAM)
VALUES ('Ramiro Curry', 'Pooloo', '15000', 'ooo@mail.com', 4);

INSERT INTO PLAYER (FULL_NAME, NICKNAME, SALARY, EMAIL, TEAM)
VALUES ('Curtis Graves', 'dedboi', '14000', 'boi@mail.com', 4);

INSERT INTO PLAYER (FULL_NAME, NICKNAME, SALARY, EMAIL, TEAM)
VALUES ('Rafael Poole', 'moot', '18000', 'mut@mail.com', 5);

INSERT INTO PLAYER (FULL_NAME, NICKNAME, SALARY, EMAIL, TEAM)
VALUES ('Alison Bates', 'Dirtyjoke', '20000', 'lwd@mail.com', 5);

INSERT INTO PLAYER (FULL_NAME, NICKNAME, SALARY, EMAIL, TEAM)
VALUES ('Ray Alexander', 'Raxelander', '26000', 'xel@mail.com', 6);

INSERT INTO PLAYER (FULL_NAME, NICKNAME, SALARY, EMAIL, TEAM)
VALUES ('Daryl Mack', 'Muack', '17000', 'xxs@mail.com', 6);

INSERT INTO PLAYER (FULL_NAME, NICKNAME, SALARY, EMAIL, TEAM)
VALUES ('Byron Hoffman', 'lordbyron', '15555', 'sza@mail.com', 7);

INSERT INTO PLAYER (FULL_NAME, NICKNAME, SALARY, EMAIL, TEAM)
VALUES ('Ollie Watkins', 'warroba', '19000', 'att@mail.com', 7);

INSERT INTO PLAYER (FULL_NAME, NICKNAME, SALARY, EMAIL, TEAM)
VALUES ('Cathy Harvey', 'Cathus', '13000', 'cth@mail.com', 8);

INSERT INTO PLAYER (FULL_NAME, NICKNAME, SALARY, EMAIL, TEAM)
VALUES ('Lola Howard', 'Coward', '16000', 'cow@mail.com', 8);

INSERT INTO PLAYER (FULL_NAME, NICKNAME, SALARY, EMAIL, TEAM)
VALUES ('Marco Fox', 'gwa', '15000', 'gwa@mail.com', 8);