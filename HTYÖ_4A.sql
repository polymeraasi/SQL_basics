-- Tietokantojen perusteet - Database basics
-- Harjoitustyö II kysely 4A

SELECT knimi, count(kategoria.ktunnus) AS lkm, MIN(kesto) as minkesto, MAX(kesto) as maxkesto
FROM kategoria LEFT OUTER JOIN rltunti ON rltunti.ktunnus = kategoria.ktunnus
GROUP BY knimi
ORDER BY knimi;