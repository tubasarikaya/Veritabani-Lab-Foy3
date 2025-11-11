-- Ünvaný “Yönetici” ve “Müdür” olan çalýþanlarýn ad, soyad ve ünvanlarýný listeleyen sorgu

SELECT
    c.ad,
    c.soyad,
    u.unvan_calisan AS [Çalýþanýn Unvaný]
FROM
    calisanlar AS c
JOIN
    unvan AS u ON u.unvan_calisan_id = c.calisan_id
WHERE
    u.unvan_calisan IN ('Yönetici', 'Müdür');