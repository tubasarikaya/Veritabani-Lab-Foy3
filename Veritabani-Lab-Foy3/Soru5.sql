-- Birimlerin her birinde kaç adet çalýþan olduðunu ve birimlerin isimlerini listeleyen sorgu

SELECT
    b.birim_ad,
    COUNT(c.calisan_id) AS calisan_sayisi
FROM
    birimler AS b 
LEFT JOIN
    calisanlar AS c ON c.calisan_birim_id = b.birim_id
GROUP BY
    b.birim_ad;