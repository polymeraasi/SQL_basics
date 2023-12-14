-- Tietokantojen perusteet - Database basics
-- Harjoitustyö II kysely 4A

Hae tunnukset ja nimet ohjaajille, jotka ohjaavat kaikkien niiden ryhmäliikuntatuntien 
lukujärjestystunteja, joita he voivat ohjata.


SELECT DISTINCT ohjaaja.otunnus, ohjaaja.onimi
FROM voi_ohjata LEFT OUTER JOIN ohjaaja ON ohjaaja.otunnus = voi_ohjata.otunnus
WHERE EXISTS
      (SELECT ohjaaja.otunnus, ohjaaja.onimi
       FROM ljtunti
       WHERE ohjaaja.otunnus = ljtunti.otunnus)
GROUP BY ohjaaja.otunnus;


VAIN MIKKO TULISI TULLA VASTAUKSIIN**