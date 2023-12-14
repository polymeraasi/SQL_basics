-- Tietokantojen perusteet - Database basics
-- Harjoitustyö II kysely 3

SELECT ohjaaja.otunnus, ohjaaja.onimi
FROM ohjaaja, voi_ohjata, rltunti, kategoria
WHERE ohjaaja.otunnus = voi_ohjata.otunnus AND voi_ohjata.rltunnus = rltunti.rltunnus
AND kategoria.ktunnus = rltunti.ktunnus AND knimi = 'Kehonhuolto'
INTERSECT 
SELECT ohjaaja.otunnus, ohjaaja.onimi
FROM ohjaaja, voi_ohjata, rltunti, kategoria
WHERE ohjaaja.otunnus = voi_ohjata.otunnus AND voi_ohjata.rltunnus = rltunti.rltunnus
AND kategoria.ktunnus = rltunti.ktunnus AND knimi = 'Spinning'
ORDER BY ohjaaja.otunnus;