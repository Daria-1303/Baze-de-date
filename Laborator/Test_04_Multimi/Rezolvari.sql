-- Laborator\Test_04_Multimi\IMG-20250302-WA0013.jpg

-- 3 : ING	Inginerie
-- 6 : SC	Stiinte ale Comunicarii

SELECT
    f1.fid,
    f1.nume
FROM Facultate f1
WHERE f1.fid IN (SELECT s.fid FROM Student s WHERE substr(s.adr,instr(s.adr,',') + 1) LIKE 'H%')
UNION
SELECT
    f2.fid,
    f2.nume
FROM Facultate f2
WHERE f2.fid IN (SELECT p.fid FROM Profesor p WHERE grad = 'prof');

SELECT
    f1.fid,
    f1.nume
FROM Facultate f1 JOIN Student s 
                  ON f1.fid = s.fid
WHERE substr(s.adr, instr(s.adr, ',') + 1) LIKE 'H%'
UNION
SELECT
    f2.fid,
    f2.nume
FROM Facultate f2 JOIN Profesor p
                  ON f2.fid = p.fid
WHERE p.grad = 'prof';


-- Laborator\Test_04_Multimi\IMG-20250302-WA0014.jpg