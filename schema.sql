/* Database schema to keep the structure of entire database. */

create table animals(
	id int primary key generated always as identity,
	name char(50),
	date_of_birth date,
	escape_attempts int,
	neutered boolean,
	weight_kg decimal,
)
alter table animals add species varchar(50) ;

-- add new tables
create table owners (id int primary key generated always as identity, full_name varchar(50), age int);
create table species (id int primary key generated always as identity,name varchar(50));

alter table animals drop column species;
alter table animals add column species_id int;
alter table animals add constraint fk_species foreign key(species_id) references species(id);
alter table animals add column owner_id int;
alter table animals add constraint fk_owners foreign key(owner_id) references owners(id);

-- many to many relationships
create table vets (id int primary key generated always as identity, name varchar(50), age int, date_of_graduation date);

create table specializations (id int primary key generated always as identity, species_id int, vets_id int, constraint fk_species foreign key(species_id) references species(id), constraint fk_vets foreign key(vets_id) references vets(id));

create table visits (id int primary key generated always as identity, animals_id int, vets_id int, constraint fk_animals foreign key(animals_id) references animals(id), constraint fk_vets foreign key(vets_id) references vets(id));