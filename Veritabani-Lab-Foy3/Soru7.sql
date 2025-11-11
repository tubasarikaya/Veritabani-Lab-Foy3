-- Maaþlarý “50000” ve “100000” arasýnda deðiþen çalýþanlarýn ad, soyad ve maaþ bilgilerini listeleyen sorgu

SELECT
    ad,
    soyad,
    maas
FROM
    calisanlar
WHERE
    maas BETWEEN 50000 AND 100000;