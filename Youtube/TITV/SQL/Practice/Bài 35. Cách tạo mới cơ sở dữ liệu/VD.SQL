CREATE DATABASE NVDB
ON
(   NAME = 'nvdb_data',
    --Địa chỉ phụ thuộc vào máy bạn
    FILENAME = 'C:\Users\Public\Documents\nvdb_data.mdf'
    SIZE = 10MB,
    MAXSIZE = 100MB,
    FILEGROWTH = 5MB)
LOG ON
(
NAME = 'nvdb_log',
    --Địa chỉ phụ thuộc vào máy bạn
    FILENAME = 'C:\Users\Public\Documents\nvdb_data.ldf'
    SIZE = 5B,
    MAXSIZE = 50MB,
    FILEGROWTH = 5MB)