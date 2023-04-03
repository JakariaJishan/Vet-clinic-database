/*Queries that provide answers to the questions from all projects.*/

select name from animals where neutered is true and escape_attempts < 3
select date_of_birth  from animals where name in ('Agumon', 'Pikachu') 
select name, escape_attempts from animals where weight_kg>10.5
select * from animals where neutered is true
select * from animals where name != 'Gabumon'
select * from animals where weight_kg between 10.4  and 17.3
