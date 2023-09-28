use schema ${land};
-- create a stage table
create or replace transient table land_table (
    id int not null,
    name_field varchar(100) not null,
    text_field varchar(255)
);
--insert some records for testing
insert into land_table(id,name_field,text_field) 
    values  (1,'name-1','text-1'),
            (2,'name-2','text-2'),
            (3,'name-3','text-3'),
            (4,'name-4','text-4'),
            (5,'name-5','text-5');