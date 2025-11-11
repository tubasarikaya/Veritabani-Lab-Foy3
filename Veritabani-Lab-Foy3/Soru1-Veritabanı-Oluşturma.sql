CREATE DATABASE Foy3
ON PRIMARY
(
    NAME = 'Foy3_data',                                
    FILENAME = 'C:\vtyslab\Foy3.mdf',                 
    SIZE = 8MB,
    MAXSIZE = UNLIMITED,
    FILEGROWTH = 10%
)
LOG ON
(
    NAME = 'Foy3_log',                                 
    FILENAME = 'C:\vtyslab\Foy3.ldf',              
    SIZE = 8MB,
    MAXSIZE = UNLIMITED,
    FILEGROWTH = 10%
);
