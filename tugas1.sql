-- ! creating database queries
create database aedf;

-- ! creating tables queries
create table t_users(id INT generated always as identity,nama varchar(64),username varchar(64),password varchar(64),role varchar(64));

create table t_mahasiswa(nim serial primary key,nama varchar(64),email varchar(64),nomor_handphone varchar(64),status varchar(64));

create table t_dosen(nip serial primary key,nama varchar(64),email varchar(64),nomor_handphone varchar(64),status varchar(64));

create table t_buku(id serial primary key, nama varchar(64),jenis_buku varchar(64),status varchar(64));

-- ! crud queries
-- ?t_users 
-- insert
insert into t_users(nama, username, password, role)values('gilang ramadhan','glngrmdhn','123','president');
insert into t_users(nama, username, password, role)values('otniel','weishaupt','123','chef du senat'),('adiel','diel','123','senat'),('yogaswara','agoy','123','senat'),('satrio','iyo','123','pedagogique'),('ridho','ido','123','pedagogique');

-- select
select * from t_users;
select nama, role from t_users where role = 'pedagogique';

-- update
update t_users set role = 'admin' where username = 'iyo';
update t_users set role = 'admin' where role = 'pedagogique';

-- delete
delete from t_users where username = 'agoy';

-- ? t_mahasiswa
-- insert
insert into t_mahasiswa(nama, email, nomor_handphone, status)values('gilang','glngrmdhn@gmail.com','123123','aktif'),('adiel','wibowo@gmail.com','123123','aktif'),('otniel','weishaupt@gmail.com','123123','aktif'),('satrio','iyo@gmail.com','123123','aktif'),
('yogaswara','agoy@gmail.com','123123','tidak aktif'),('ridho','ido@gmail.com','123123','aktif');

-- select 
select * from t_mahasiswa;
select * from t_mahasiswa where status = 'tidak aktif';

-- update
update t_mahasiswa set status = 'tidak aktif' where nama ='adiel';

-- delete
delete from t_mahasiswa where status = 'tidak aktif';

-- ? t_dosen
-- insert
insert into t_dosen(nama, email, nomor_handphone, status)values('dante','dante@gmail.com','123123','aktif'),('iis','iis@gmail.com','123123','aktif'),('aep','aep@gmail.com','123123','aktif'),('ali','ali@gmail.com','123123','aktif'),
('dadang','dadang@gmail.com','123123','tidak aktif'),('dudung','dudung@gmail.com','123123','aktif');

-- select 
select * from t_dosen;

-- update 
update t_dosen set status = 'tidak aktif' where nomor_handphone = '123123';
update t_dosen set status = 'aktif' where status = 'tidak aktif';

-- delete
delete from t_dosen where nama = 'ali';

--? t_buku
-- insert
insert into t_buku(nama, jenis_buku, status)values('tendances A1','livre','available'),('VO A1','livre','available'),('Conjugation','buku konjugasi','borrowed'),('Kamus Perancis-Indonesia','kamus','not available'),
('civilisation francais','livre','avaliable'),('inspire 1','livre','not available');

-- select 
select * from t_buku;

-- update 
update t_buku set status = 'available' where status = 'not available';
update t_buku set status = 'not available' where id = 6;

-- delete
delete from t_buku where status = 'not available';

-- ! sorting and filtering
select nama, email  from t_mahasiswa order by nama asc;
select * from t_mahasiswa where status = 'aktif';
select nama, role from t_users order by username desc;
select * from t_users where id in (1,6);