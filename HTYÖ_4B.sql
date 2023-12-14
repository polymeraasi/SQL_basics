-- Tietokantojen perusteet - Database basics
-- Harjoitustyö II kysely 4B  

SELECT knimi, COUNT(rltunti.rltunnus) AS rltuntilkm, COUNT(ljtunti.rltunnus) AS ljtuntilkm, COUNT(ljtunti.otunnus) AS ohjaajalkm
FROM kategoria LEFT OUTER JOIN rltunti ON rltunti.ktunnus = kategoria.ktunnus LEFT OUTER JOIN ljtunti 
ON ljtunti.rltunnus = rltunti.rltunnus 
GROUP BY knimi
ORDER BY knimi;
