SELECT *
FROM teaemp
WHERE empsalary >
(
    SELECT AVG(empsalary)
    FROM teaemp
);
SELECT *
FROM teaemp
WHERE empsalary =
(
    SELECT MAX(empsalary)
    FROM teaemp
);
SELECT *
FROM teaemp
WHERE empsalary =
(
    SELECT MIN(empsalary)
    FROM teaemp
);
SELECT *
FROM teaemp
WHERE empdepart =
(
    SELECT empdepart
    FROM teaemp
    WHERE empname = 'Rahul Singh'
);
SELECT *
FROM teaemp
WHERE empdepart IN
(
    SELECT empdepart
    FROM teaemp
    WHERE empsalary > 40000
);
SELECT *
FROM teaemp
WHERE empsalary <
(
    SELECT MAX(empsalary)
    FROM teaemp
);
SELECT *
FROM teaemp
WHERE empsalary >
(
    SELECT MIN(empsalary)
    FROM teaemp
);
