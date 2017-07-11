select nome_estado
from estado
where cod_estado is not null and cod_estado =100;


select cod_cidade
from cidade
where nome_cidade='vitoria' or cod_cidade =(50+50) ;

select preço, AVG (preço) as 'media_preço'
from evento_credito ;