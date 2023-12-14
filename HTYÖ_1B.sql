-- Tietokantojen perusteet - Database basics
-- Harjoitustyö II kysely 1B

SELECT viikonpaiva, alkamisaika, rlnimi, kesto, taso
FROM ljtunti INNER JOIN rltunti ON (rltunti.rltunnus = ljtunti.rltunnus)
INNER JOIN kategoria ON (kategoria.ktunnus = rltunti.ktunnus)
WHERE kategoria.knimi = 'Kehonhuolto' AND (taso = 2 OR kesto >= 60)
ORDER BY viikonpaiva, alkamisaika, taso;

