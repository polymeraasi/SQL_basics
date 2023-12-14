Harjoitustyön luonti- ja lisäyslauseet:

C:\sqlite\sqlite-tools-win32-x86-3380000\sqlite-tools-win32-x86-3380000
PRAGMA foreign_keys = ON;

CREATE TABLE kategoria (
ktunnus INT,
knimi VARCHAR(30) NOT NULL,
PRIMARY KEY (ktunnus),
UNIQUE (knimi));

CREATE TABLE ohjaaja (
otunnus INT, 
onimi VARCHAR(30) NOT NULL,
syntymaaika DATE NOT NULL,
PRIMARY KEY (otunnus));

CREATE TABLE sali (
stunnus INT,
snimi VARCHAR(30) NOT NULL,
paikkalkm INT,
PRIMARY KEY (stunnus),
UNIQUE (snimi));

CREATE TABLE rltunti (
rltunnus INT,
rlnimi VARCHAR(30) NOT NULL,
kuvaus VARCHAR(50),
kesto INT,
taso INT,
ktunnus INT,
PRIMARY KEY (rltunnus),
UNIQUE (rlnimi),
FOREIGN KEY (ktunnus) REFERENCES kategoria);

CREATE TABLE voi_ohjata (
otunnus INT,
rltunnus INT,
PRIMARY KEY (otunnus, rltunnus),
FOREIGN KEY (otunnus) REFERENCES ohjaaja,
FOREIGN KEY (rltunnus) REFERENCES rltunti);

CREATE TABLE ljtunti (
rltunnus INT,
viikonpaiva VARCHAR(15),
alkamisaika TIME (0) NOT NULL,
paattymisaika TIME (0) NOT NULL,
maxosallistujalkm INT,
otunnus INT,
stunnus INT,
PRIMARY KEY (rltunnus, viikonpaiva, alkamisaika),
FOREIGN KEY (rltunnus) REFERENCES rltunti,
FOREIGN KEY (otunnus) REFERENCES ohjaaja,
FOREIGN KEY (stunnus) REFERENCES sali); 

-----------------------------------------------------------------------------------

INSERT INTO kategoria
VALUES (11, 'Lihaskunto');
INSERT INTO kategoria
VALUES (12, 'Kehonhuolto');
INSERT INTO kategoria
VALUES (13, 'Spinning');

INSERT INTO rltunti
VALUES (111, 'Muokkaus', 'Muokataan lihaksia', 45, 2, 11);
INSERT INTO rltunti
VALUES (222, 'Joogan perusteet', 'Opetellaan joogaa', 50, 1, 12);
INSERT INTO rltunti
VALUES (333, 'Jooga 1', 'Jatketaan joogaamista', 50, 2, 12);
INSERT INTO rltunti
VALUES (444, 'Pilates 1', 'Opetellaan pilatesta', 60, 2, 12);
INSERT INTO rltunti
VALUES (555, 'Spinning alkeet', 'Poljetaan', 60, 1, 13);
INSERT INTO rltunti
VALUES (666, 'Spinning pro', 'Raskaita osuuksia ja tiukkoja spurtteja', 80, 4, 13);

INSERT INTO ohjaaja
VALUES (1, 'Elisa Markkanen', 1986-01-21);
INSERT INTO ohjaaja
VALUES (2, 'Eero Ilonen', 1988-03-14);
INSERT INTO ohjaaja
VALUES (3, 'Mikko Kontinen', 1977-11-01);

INSERT INTO voi_ohjata
VALUES (1, 333);
INSERT INTO voi_ohjata
VALUES (1, 555);
INSERT INTO voi_ohjata
VALUES (1, 666);
INSERT INTO voi_ohjata
VALUES (2, 333);
INSERT INTO voi_ohjata
VALUES (2, 222);
INSERT INTO voi_ohjata
VALUES (2, 444);
INSERT INTO voi_ohjata
VALUES (3, 555);
INSERT INTO voi_ohjata
VALUES (3, 666);

INSERT INTO sali
VALUES (011, 'Sali 1', 25);
INSERT INTO sali
VALUES (012, 'Spinning-sali', 20);
INSERT INTO sali
VALUES (013, 'Sali 3', 20);

INSERT INTO ljtunti
VALUES (333, 'ma', '8:10', '9:00', 10, 1, 013);
INSERT INTO ljtunti
VALUES (333, 'ma', '13:00', '13:50', 15, 1, 011);
INSERT INTO ljtunti
VALUES (333, 'ma', '20:10', '21:00', 10, 1, 013);
INSERT INTO ljtunti
VALUES (333, 'ti', '8:10', '9:00', 15, 2, 011);
INSERT INTO ljtunti
VALUES (444, 'ma', '8:00', '9:00', 15, 2, 011);
INSERT INTO ljtunti
VALUES (666, 'ma', '7:00', '8:20', 20, 3, 012);
INSERT INTO ljtunti
VALUES (555, 'ma', '10:45', '11:45', 20, 3, 012);
INSERT INTO ljtunti
VALUES (666, 'pe', '14:00', '15:20', 20, 1, 012);
