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


SELECT district_id, count(client_id)
FROM bank.client
WHERE district_id < 10
GROUP BY district_id
ORDER BY district_id;

SELECT type, count(card_id)
FROM bank.card
GROUP BY type
ORDER BY count(card_id) DESC;

SELECT account_id, sum(amount) AS loan_amount
FROM bank.loan
GROUP BY account_id
ORDER BY sum(amount) DESC
LIMIT 10;

SELECT date, count(loan_id)
FROM bank.loan
GROUP BY date
HAVING MAX(date) < (930907)
ORDER BY date DESC;

SELECT date, duration, count(loan_id)
FROM bank.loan
GROUP BY date, duration
HAVING date LIKE ('9712%')
ORDER BY date;

SELECT account_id, type, sum(amount)
FROM bank.trans
WHERE account_id IN (396)
GROUP BY type;

SELECT account_id, TRANSLATE(type, 'PRIJEM', 'INCOMING') AS transaction_type, sum(amount) AS total_amount
FROM bank.trans
WHERE account_id IN (396)
GROUP BY type;
