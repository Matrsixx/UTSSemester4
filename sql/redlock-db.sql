CREATE database Redlock;

USE Redlock;

CREATE table users (
        ID int PRIMARY KEY NOT NULL,
        Nama VARCHAR(255) NOT NULL,
        Alamat VARCHAR(255) NOT NULL,
        Jabatan VARCHAR(255) NOT NULL
);

INSERT INTO users VALUES
(1, 'Vincent', 'Pangjay', 'Member'),
(2, 'Aloy', 'Mabes', 'Boss');