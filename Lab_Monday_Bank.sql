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

SELECT DISTINCT status
FROM bank.loan
ORDER BY status;

SELECT loan_id
FROM bank.loan
ORDER BY payments DESC
LIMIT 1;


SELECT account_id, amount
FROM bank.loan
ORDER BY account_id
LIMIT 5;

SELECT account_id
FROM bank.loan
WHERE duration IN (60)
ORDER BY amount
LIMIT 5;

SELECT DISTINCT k_symbol
FROM bank.`order`;

SELECT DISTINCT account_id
FROM bank.`order`
WHERE order_id BETWEEN (29540) AND (29560);

SELECT amount
FROM bank.`order`
WHERE account_to = (30067122);

SELECT trans_id, date, type, amount
FROM bank.trans
WHERE account_id = (793)
ORDER BY date DESC
LIMIT 10;

