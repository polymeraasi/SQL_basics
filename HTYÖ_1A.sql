-- Tietokantojen perusteet - Database basics
-- Harjoitustyö II kysely 1A

SELECT DISTINCT viikonpaiva, alkamisaika, rlnimi, kesto
FROM ljtunti INNER JOIN rltunti ON (rltunti.rltunnus = ljtunti.rltunnus)
INNER JOIN kategoria ON (kategoria.ktunnus = rltunti.ktunnus)
WHERE kategoria.knimi = 'Kehonhuolto'
ORDER BY viikonpaiva, alkamisaika, rlnimi;


