create database sprint2;
use sprint2;

create user 'densenvolvedor'@'localhost'
identified by 'sptech';

grant select,insert , update , delete, create, drop
on sprint2.*
to 'densenvolvedor'@'localhost';

revoke select,insert , update , delete, create, drop
on sprint2.*
FROM 'densenvolvedor'@'localhost';

drop user 'densenvolvedor'@'localhost';
drop user 'cliente'@'localhost'; 