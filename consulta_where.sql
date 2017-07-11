use vrau_eventos_11 ;

select nome_cidade
from CIDADE
where cod_estado = 102 ;

select nome_completo
from PESSOA
where qrcode_usuario is not null ;

select * 
from evento_credito 
where  preço > 45 ;