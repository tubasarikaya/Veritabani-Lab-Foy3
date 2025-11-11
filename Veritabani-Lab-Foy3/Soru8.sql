-- Ýkramiye hakkýna sahip çalýþanlara ait ad, soyad, birim, unvan ve ikramiye ücreti bilgilerini listeleyen sorgu

SELECT
    c.ad,
    c.soyad,
    b.birim_ad,
    u.unvan_calisan,
    i.ikramiye_ucret
FROM
    calisanlar AS c
JOIN
    birimler AS b ON c.calisan_birim_id = b.birim_id
JOIN
    unvan AS u ON u.unvan_calisan_id = c.calisan_id
JOIN
    ikramiye AS i ON i.ikramiye_calisan_id = c.calisan_id;