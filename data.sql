/* Populate database with sample data. */

insert into animals (name,date_of_birth,escape_attempts,neutered,weight_kg)
values ('Charmander','2020-02-08',0,false,-11);

insert into animals (name,date_of_birth,escape_attempts,neutered,weight_kg)
values ('Plantmon','2021-11-15',2,true,-5.7);

insert into animals (name,date_of_birth,escape_attempts,neutered,weight_kg)
values ('Squirtle','1993-04-02',3,false,-12.13);

insert into animals (name,date_of_birth,escape_attempts,neutered,weight_kg)
values ('Angemon','2005-06-12',1,true,-45);

insert into animals (name,date_of_birth,escape_attempts,neutered,weight_kg)
values ('Boarmon','2005-06-07',7,true,20.4);

insert into animals (name,date_of_birth,escape_attempts,neutered,weight_kg)
values ('Blossom','1998-10-13',3,true,17);

insert into animals (name,date_of_birth,escape_attempts,neutered,weight_kg)
values ('Ditto','2022-05-14',4,true,22);



-- insert data to owners table

insert into owners(full_name, age) values('Sam Smith', 34);
insert into owners(full_name, age) values('Jennifer Orwell', 19);
insert into owners(full_name, age) values('Bob', 45);
insert into owners(full_name, age) values('Melody Pond', 77);
insert into owners(full_name, age) values('Dean Winchester', 14);
insert into owners(full_name, age) values('Jodie Whittaker', 38);

insert into species(name) values('Pokemon');
insert into species(name) values('Digimon');