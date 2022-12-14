Microsoft Windows [Version 10.0.22000.1219]
(c) Microsoft Corporation. All rights reserved.

C:\Users\LENOVO>cd "C:\Program Files\PostgreSQL\14\bin"

C:\Program Files\PostgreSQL\14\bin>psql -U postgres -h localhost
Password for user postgres:
psql (14.6)
WARNING: Console code page (437) differs from Windows code page (1252)
         8-bit characters might not work correctly. See psql reference
         page "Notes for Windows users" for details.
Type "help" for help.

postgres=# \list
                                              List of databases
    Name     |  Owner   | Encoding |        Collate         |         Ctype          |   Access privileges
-------------+----------+----------+------------------------+------------------------+-----------------------
 informatika | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 postgres    | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 siaakad     | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 siakaadd    | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 siakad      | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 siakadd     | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 siakaddd    | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 siiakad     | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 siswa       | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 template0   | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 | =c/postgres          +
             |          |          |                        |                        | postgres=CTc/postgres
 template1   | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 | =c/postgres          +
             |          |          |                        |                        | postgres=CTc/postgres
(11 rows)


postgres=# create database Siakad;
ERROR:  database "siakad" already exists
postgres=# \list
                                              List of databases
    Name     |  Owner   | Encoding |        Collate         |         Ctype          |   Access privileges
-------------+----------+----------+------------------------+------------------------+-----------------------
 informatika | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 postgres    | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 siaakad     | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 siakaadd    | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 siakad      | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 siakadd     | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 siakaddd    | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 siiakad     | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 siswa       | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 template0   | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 | =c/postgres          +
             |          |          |                        |                        | postgres=CTc/postgres
 template1   | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 | =c/postgres          +
             |          |          |                        |                        | postgres=CTc/postgres
(11 rows)


postgres=# create database siakkad;
CREATE DATABASE
postgres=# \list
                                              List of databases
    Name     |  Owner   | Encoding |        Collate         |         Ctype          |   Access privileges
-------------+----------+----------+------------------------+------------------------+-----------------------
 informatika | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 postgres    | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 siaakad     | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 siakaadd    | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 siakad      | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 siakadd     | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 siakaddd    | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 siakkad     | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 siiakad     | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 siswa       | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 template0   | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 | =c/postgres          +
             |          |          |                        |                        | postgres=CTc/postgres
 template1   | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 | =c/postgres          +
             |          |          |                        |                        | postgres=CTc/postgres
(12 rows)


postgres=# \c siakkad;
You are now connected to database "siakkad" as user "postgres".
siakkad=# create table mahasiswa(nim varchar(30) not null primary key,nama varchar (50),prodi varchar(50));
CREATE TABLE
siakkad=# \d mahasiswa;
                    Table "public.mahasiswa"
 Column |         Type          | Collation | Nullable | Default
--------+-----------------------+-----------+----------+---------
 nim    | character varying(30) |           | not null |
 nama   | character varying(50) |           |          |
 prodi  | character varying(50) |           |          |
Indexes:
    "mahasiswa_pkey" PRIMARY KEY, btree (nim)


siakkad=# create table dosen(nidn int not null primary key,nama varchar (50), program_studi varchar(50));
CREATE TABLE
siakkad=# \d dosen;
                          Table "public.dosen"
    Column     |         Type          | Collation | Nullable | Default
---------------+-----------------------+-----------+----------+---------
 nidn          | integer               |           | not null |
 nama          | character varying(50) |           |          |
 program_studi | character varying(50) |           |          |
Indexes:
    "dosen_pkey" PRIMARY KEY, btree (nidn)


siakkad=# create table kuliah(kode_makul varchar(30) not null primary key,nama_makul varchar (50), sks int,semeter int);
CREATE TABLE
siakkad=# \d kuliah;
                        Table "public.kuliah"
   Column   |         Type          | Collation | Nullable | Default
------------+-----------------------+-----------+----------+---------
 kode_makul | character varying(30) |           | not null |
 nama_makul | character varying(50) |           |          |
 sks        | integer               |           |          |
 semeter    | integer               |           |          |
Indexes:
    "kuliah_pkey" PRIMARY KEY, btree (kode_makul)


siakkad=# \d mahasiswa;
                    Table "public.mahasiswa"
 Column |         Type          | Collation | Nullable | Default
--------+-----------------------+-----------+----------+---------
 nim    | character varying(30) |           | not null |
 nama   | character varying(50) |           |          |
 prodi  | character varying(50) |           |          |
Indexes:
    "mahasiswa_pkey" PRIMARY KEY, btree (nim)


siakkad=# insert into mahasiswa (nim,nama,prodi) values ('D0221361','mutmainna','informatika'),('D0221321','tanti','informatika'),('D0221358','riska','informatika');
INSERT 0 3
siakkad=# select * from mahasiswa;
   nim    |   nama    |    prodi
----------+-----------+-------------
 D0221361 | mutmainna | informatika
 D0221321 | tanti     | informatika
 D0221358 | riska     | informatika
(3 rows)


siakkad=# \d dosen;
                          Table "public.dosen"
    Column     |         Type          | Collation | Nullable | Default
---------------+-----------------------+-----------+----------+---------
 nidn          | integer               |           | not null |
 nama          | character varying(50) |           |          |
 program_studi | character varying(50) |           |          |
Indexes:
    "dosen_pkey" PRIMARY KEY, btree (nidn)


siakkad=# insert into dosen (nidn,nama,program_studi) values (0015018805,'Dr. Eng. musdalifah, ST., M.Eng.','sipil'),(0017038904,'Dr. Eng. nurul inayah, S.Si., MT.','informatika'),(0031077904,'masnia, S.Kom., M.M','informatika');
INSERT 0 3
siakkad=# select * from dosen;
   nidn   |               nama                | program_studi
----------+-----------------------------------+---------------
 15018805 | Dr. Eng. musdalifah, ST., M.Eng.  | sipil
 17038904 | Dr. Eng. nurul inayah, S.Si., MT. | informatika
 31077904 | masnia, S.Kom., M.M               | informatika
(3 rows)


siakkad=# \d kuliah;
                        Table "public.kuliah"
   Column   |         Type          | Collation | Nullable | Default
------------+-----------------------+-----------+----------+---------
 kode_makul | character varying(30) |           | not null |
 nama_makul | character varying(50) |           |          |
 sks        | integer               |           |          |
 semeter    | integer               |           |          |
Indexes:
    "kuliah_pkey" PRIMARY KEY, btree (kode_makul)


siakkad=# insert into kuliah (kode_makul,nama_makul,sks,semeter) values ('INF183219','mikrokontroler',2,3),('INF173319','Bahasa Inggris',3,3),('INF123319','Basis Data I',2,3);
INSERT 0 3
siakkad=# select * from kuliah;
 kode_makul |   nama_makul   | sks | semeter
------------+----------------+-----+---------
 INF183219  | mikrokontroler |   2 |       3
 INF173319  | Bahasa Inggris |   3 |       3
 INF123319  | Basis Data I   |   2 |       3
(3 rows)


siakkad=# select * from mahasiswa;
   nim    |   nama    |    prodi
----------+-----------+-------------
 D0221361 | mutmainna | informatika
 D0221321 | tanti     | informatika
 D0221358 | riska     | informatika
(3 rows)


siakkad=# update mahasiswa set nama='Riska' where nim = 'D0221358';
UPDATE 1
siakkad=# select * from mahasiswa;
   nim    |   nama    |    prodi
----------+-----------+-------------
 D0221361 | mutmainna | informatika
 D0221321 | tanti     | informatika
 D0221358 | Riska     | informatika
(3 rows)


siakkad=# select * from dosen;
   nidn   |               nama                | program_studi
----------+-----------------------------------+---------------
 15018805 | Dr. Eng. musdalifah, ST., M.Eng.  | sipil
 17038904 | Dr. Eng. nurul inayah, S.Si., MT. | informatika
 31077904 | masnia, S.Kom., M.M               | informatika
(3 rows)


siakkad=# update dosen set nama='masnia' where nidn =  31077904;
UPDATE 1
siakkad=# select * from dosen;
   nidn   |               nama                | program_studi
----------+-----------------------------------+---------------
 15018805 | Dr. Eng. musdalifah, ST., M.Eng.  | sipil
 17038904 | Dr. Eng. nurul inayah, S.Si., MT. | informatika
 31077904 | masnia                            | informatika
(3 rows)


siakkad=# select * from kuliah;
 kode_makul |   nama_makul   | sks | semeter
------------+----------------+-----+---------
 INF183219  | mikrokontroler |   2 |       3
 INF173319  | Bahasa Inggris |   3 |       3
 INF123319  | Basis Data I   |   2 |       3
(3 rows)


siakkad=# update kuliah set sks=3 where kode_makul='INF173319';
UPDATE 1
siakkad=# select * from kuliah;
 kode_makul |   nama_makul   | sks | semeter
------------+----------------+-----+---------
 INF183219  | mikrokontroler |   2 |       3
 INF123319  | Basis Data I   |   2 |       3
 INF173319  | Bahasa Inggris |   3 |       3
(3 rows)


siakkad=#