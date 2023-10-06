SELECT count(id) as 'NB doublons', GROUP_CONCAT(id SEPARATOR ',') as 'ID clients', first_name, last_name, year, result
FROM clients c, balance_sheets bs
WHERE c.id = bs.client_id
GROUP BY LOWER(first_name), LOWER(last_name), year, result
HAVING COUNT(id) > 1;