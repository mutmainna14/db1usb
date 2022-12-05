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

postgres=# \c siakkad;
You are now connected to database "siakkad" as user "postgres".
siakkad=# \dt
           List of relations
 Schema |   Name    | Type  |  Owner
--------+-----------+-------+----------
 public | dosen     | table | postgres
 public | kuliah    | table | postgres
 public | mahasiswa | table | postgres
(3 rows)


siakkad=# select * from mahasiswa;
   nim    |   nama    |    prodi
----------+-----------+-------------
 D0221361 | mutmainna | informatika
 D0221321 | tanti     | informatika
 D0221358 | Riska     | informatika
(3 rows)


siakkad=# delete from mahasiswa where nim='D0221361';
DELETE 1
siakkad=# select * from mahasiswa;
   nim    | nama  |    prodi
----------+-------+-------------
 D0221321 | tanti | informatika
 D0221358 | Riska | informatika
(2 rows)


siakkad=# select * from dosen ;
   nidn   |               nama                | program_studi
----------+-----------------------------------+---------------
 15018805 | Dr. Eng. musdalifah, ST., M.Eng.  | sipil
 17038904 | Dr. Eng. nurul inayah, S.Si., MT. | informatika
 31077904 | masnia                            | informatika
(3 rows)


siakkad=# delete from dosen where nidn=15018805;
DELETE 1
siakkad=# select * from dosen;
   nidn   |               nama                | program_studi
----------+-----------------------------------+---------------
 17038904 | Dr. Eng. nurul inayah, S.Si., MT. | informatika
 31077904 | masnia                            | informatika
(2 rows)


siakkad=# select * from kuliah;
 kode_makul |   nama_makul   | sks | semeter
------------+----------------+-----+---------
 INF183219  | mikrokontroler |   2 |       3
 INF123319  | Basis Data I   |   2 |       3
 INF173319  | Bahasa Inggris |   3 |       3
(3 rows)


siakkad=# delete from kuliah where kode_makul='INF173319';
DELETE 1
siakkad=# select * from kuliah;
 kode_makul |   nama_makul   | sks | semeter
------------+----------------+-----+---------
 INF183219  | mikrokontroler |   2 |       3
 INF123319  | Basis Data I   |   2 |       3
(2 rows)


siakkad=#