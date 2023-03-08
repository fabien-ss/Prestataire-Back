CREATE TABLE PRESTATAIRE(
    idPrestataire SERIAL PRIMARY KEY,
    nom VARCHAR(200),
    prix FLOAT,
    vitesse FLOAT,
    employes FLOAT,
    anciennete int
);

INSERT INTO PRESTATAIRE(nom, prix, vitesse, employes, anciennete)
    VALUES('Koto', 20000, 12, 1231, 2020),('Keta', 13213, 12, 1000, 3000);

CREATE TABLE ROADS(
    idRoute SERIAL PRIMARY KEY,
    nom VARCHAR(200),
    formule VARCHAR(250)
);

'4*vitesse+2*employes'

SELECT * FROM PRESTATAIRE order by (Select formule from sds where idRN = 7)/prix;
SELECT * FROM PRESTATAIRE order by  (4*vitesse+2*employes)/prix
