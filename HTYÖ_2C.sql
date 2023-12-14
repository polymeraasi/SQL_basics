-- Tietokantojen perusteet - Database basics
-- Harjoitustyö II kysely 2C

SELECT DISTINCT rlnimi, MIN(kesto) AS kesto, knimi
FROM rltunti INNER JOIN kategoria ON kategoria.ktunnus = rltunti.ktunnus
WHERE kategoria.knimi = 'Kehonhuolto'
GROUP BY knimi
ORDER BY rlnimi;


SELECT DISTINCT rlnimi, kestoja.kesto, knimi
FROM rltunti, kategoria,
(SELECT DISTINCT ktunnus, MIN(kesto) AS kesto
 FROM rltunti
 GROUP BY rlnimi) AS kestoja
WHERE kategoria.ktunnus = rltunti.ktunnus AND rltunti.ktunnus = kestoja.ktunnus
AND kategoria.knimi = 'Kehonhuolto'
ORDER BY rlnimi;