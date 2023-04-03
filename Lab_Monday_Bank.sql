SELECT client_id
FROM bank.client 
WHERE district_id IN (1)
ORDER BY client_id
LIMIT 5;


SELECT client_id
FROM bank.client 
WHERE district_id IN (72)
ORDER BY client_id DESC
LIMIT 1;

SELECT amount
FROM bank.loan
ORDER BY amount ASC
LIMIT 3;