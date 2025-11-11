-- Her bir birimde en yüksek maaþ alan çalýþanlarýn ad, soyad ve maaþ bilgilerini listeleyen sorgu

SELECT
    c.ad,
    c.soyad,
    c.maas
FROM
    calisanlar AS c
INNER JOIN (
    SELECT
        calisan_birim_id,
        MAX(maas) AS en_yuksek_maas
    FROM
        calisanlar
    GROUP BY
        calisan_birim_id
) AS maas_tablosu ON c.calisan_birim_id = maas_tablosu.calisan_birim_id
AND c.maas = maas_tablosu.en_yuksek_maas;