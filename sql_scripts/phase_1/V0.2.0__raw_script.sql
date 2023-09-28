use schema ${raw};

-- create a table in raw layer 
create or replace transient table raw_table (
    id int not null,
    name_field varchar(100) not null,
    text_field varchar(255)
);

insert into raw_table(id,name_field,text_field) 
    values  (11,'name-11','text-11'),
            (12,'name-12','text-12'),
            (13,'name-13','text-13'),
            (14,'name-14','text-14'),
            (15,'name-15','text-15');

create or replace view land_raw_view as 
    select 'land' as layer, id,name_field,text_field  from ${land}.land_table
    union all 
    select 'raw' as layer, id,name_field,text_field  from raw_table;