-- Maaþý en yüksek olan çalýþanlarýn ad, soyad ve maaþ bilgilerini listeleyen SQL sorgusu

SELECT
    ad, soyad, maas
FROM
    calisanlar
WHERE
    maas = (SELECT MAX(maas) FROM calisanlar);