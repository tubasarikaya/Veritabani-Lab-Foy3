create table birimler (
    birim_id INT PRIMARY KEY,
    birim_ad CHAR(25) NOT NULL
);

create table calisanlar (
    calisan_id INT PRIMARY KEY,
    ad CHAR(25),
    soyad CHAR(25),
    maas INT,
    katilmaTarihi DATETIME,
    calisan_birim_id INT NOT NULL,
    FOREIGN KEY (calisan_birim_id) REFERENCES birimler(birim_id)
);

create table unvan (
    unvan_calisan_id INT NOT NULL,
    unvan_calisan CHAR(25),
    unvan_tarih DATETIME,
    FOREIGN KEY (unvan_calisan_id) REFERENCES calisanlar(calisan_id)
);

create table ikramiye (
    ikramiye_calisan_id INT NOT NULL,
    ikramiye_ucret INT,
    ikramiye_tarih DATETIME,
    FOREIGN KEY (ikramiye_calisan_id) REFERENCES calisanlar(calisan_id)
);