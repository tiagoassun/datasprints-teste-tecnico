-- 1 - Qual a distância média percorrida por viagens com no máximo 2 passageiros.
SELECT AVG(trip_distance) media_distancia FROM tb_trips WHERE passenger_count = 2


-- 2 - Quais os 3 maiores vendors em quantidade total de dinheiro arrecadado.
SELECT 
	SUM(T.total_amount) sum_total_amount, 
	T.vendor_id, 
	V.name 
FROM tb_trips T
JOIN tb_vendor V ON (T.vendor_id = V.vendor_id)
GROUP BY T.vendor_id, V.name
ORDER BY sum_total_amount DESC LIMIT 3


-- 3 - Faça um histograma da distribuição mensal, nos 4 anos, de corridas pagas em dinheiro.
SELECT SUBSTRING(dropoff_datetime, 6, 2) meses, tb_trips.*
FROM tb_trips
WHERE UPPER(payment_type) = 'CASH'


-- 4 - Faça um gráfico de série temporal contando a quantidade de gorjetas de cada dia, nos últimos 3 meses de 2012.
SELECT SUBSTRING(dropoff_datetime, 1, 10) dias, tb_trips.*
FROM tb_trips