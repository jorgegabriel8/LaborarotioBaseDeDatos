

Alter table Clientes
Add Constraint Client_email UNIQUE (email);
Alter table Clientes
add check (FechaDeNacimiento>=18);
Alter table Clientes
add check (FechaDeNacimiento<=17);
