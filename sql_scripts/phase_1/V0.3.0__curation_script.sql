USE SCHEMA ${curation};
-- create curation table
create or replace transient table base_table (
    id int not null,
    name_field varchar(100) not null,
    text_field varchar(255)
);

insert into base_table(id,name_field,text_field) 
    values  (21,'name-11','text-11'),
            (22,'name-12','text-12'),
            (23,'name-13','text-13'),
            (24,'name-14','text-14'),
            (25,'name-15','text-15');