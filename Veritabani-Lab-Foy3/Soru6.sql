-- Birden fazla çalýþana ait olan unvanlarýn isimlerini ve o unvan altýnda çalýþanlarýn sayýsýný listeleyen sorgu

SELECT
    u.unvan_calisan AS [Çalýþan Unvaný],
    COUNT(u.unvan_calisan_id) AS [Bu Unvandaki Kiþi Sayýsý]
FROM
    unvan AS u
GROUP BY
    u.unvan_calisan
HAVING
    COUNT(u.unvan_calisan_id) > 1;