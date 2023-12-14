-- Tietokantojen perusteet - Database basics
-- Harjoitustyö II kysely 2B

SELECT rlnimi, MIN(kesto) AS kesto, knimi
FROM rltunti INNER JOIN kategoria ON kategoria.ktunnus = rltunti.ktunnus
ORDER BY rlnimi;
