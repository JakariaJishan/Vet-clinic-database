/*Queries that provide answers to the questions from all projects.*/

select * from animals where name like '%mon%'
select name from animals where date_of_birth between '2016-01-01' and '2019-01-01'
select name from animals where neutered is true and escape_attempts < 3
select date_of_birth  from animals where name in ('Agumon', 'Pikachu') 
select name, escape_attempts from animals where weight_kg>10.5
select * from animals where neutered is true
select * from animals where name != 'Gabumon'
select * from animals where weight_kg between 10.4  and 17.3


begin;
update animals set species = 'unspecified';
select * from animals;

rollback;
select * from animals;


UPDATE animals 
SET species = 'digimon'
WHERE name like '%mon%' ;

UPDATE animals 
SET species = 'pokemon'
WHERE species is null;

commit;


-- transactions
begin;
delete from animals;
select * from animals;
rollback;


delete from animals 
where date_of_birth > '2022-01-01';

savepoint sp1;

update animals
set weight_kg = weight_kg * (-1);

rollback to sp1;

update animals
set weight_kg = weight_kg * (-1);

commit ;


-- aggregations
select count(*) from animals
select count (escape_attempts) from animals where escape_attempts = 0;
select avg(weight_kg) from animals
select neutered, sum(escape_attempts) from animals group by neutered
select species, min(weight_kg), max(weight_kg) from animals group by species
select species, avg(escape_attempts) from animals where date_of_birth between '1990-01-01' AND '2000-12-31' group by species;
