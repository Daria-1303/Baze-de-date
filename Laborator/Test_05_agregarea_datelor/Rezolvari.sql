-- Laborator\Test_05_agregarea_datelor\IMG-20250302-WA0008.jpg

-- 5 rows

-- 2025	4.84
-- 2024	7.02
-- 2021	7.13
-- 2023	6.81
-- 2022	7.15

SELECT
    an,
    trunc(avg(nota), 2)
FROM Contract
WHERE semestru = 2
GROUP BY an

-- Laborator\Test_05_agregarea_datelor\IMG-20250302-WA0009.jpg