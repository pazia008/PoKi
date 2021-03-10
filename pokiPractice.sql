--task1
SELECT *
FROM Grade;

--task2
SELECT *
FROM Emotion;

--task3
SELECT count(p.Id)
FROM Poem p;

--task4 & 5 & 6
SELECT TOP 76 a.Name, g.Name, gen.Name
FROM Author a 
JOIN Grade g on GradeId = g.Id
JOIN Gender gen on GenderId = gen.Id
ORDER BY a.Name;

--task7
SELECT SUM(p.WordCount)
FROM Poem p

--task8
SELECT p.Title, p.CharCount
	FROM Poem p
	WHERE p.CharCount = (SELECT min (p.CharCount)
	FROM Poem p);

--task9
SELECT count(a.id)
FROM Author a
JOIN Grade g on GradeId = g.Id
WHERE g.Id = 3 

--task10
SELECT count(a.id)
FROM Author a
JOIN Grade g on GradeId = g.Id
WHERE g.Id = 1 OR g.Id =2 OR g.Id = 3

--task11
SELECT count(p.Id)
FROM Poem p
JOIN Author ar on AuthorId = ar.Id
WHERE GradeId = 4

--task12
SELECT count(p.Id)
FROM Poem p
JOIN Author ar on AuthorId = ar.Id
WHERE GradeId =1 OR GradeId =2 OR GradeId =3 OR GradeId = 4 OR GradeId =5
GROUP BY GradeId

--task13
SELECT g.Name, count(ar.Id)
FROM Author ar
JOIN Grade g on GradeId = g.Id
WHERE GradeId =1 OR GradeId =2 OR GradeId =3 OR GradeId = 4 OR GradeId =5
GROUP BY g.Name


--task14
SELECT p.Title
	FROM Poem p
	WHERE p.WordCount = (SELECT max (p.WordCount)
	FROM Poem p);

--task15
SELECT ar.Id, ar.Name, count(p.Id) as NumOfPoems
FROM Author ar
JOIN Poem p on ar.Id = p.AuthorId
GROUP BY p.AuthorId, ar.Name, ar.Id
ORDER BY NumOfPoems DESC

--task16
SELECT count(pe.PoemId)
FROM PoemEmotion pe
WHERE pe.EmotionId = 3

--task17
SELECT e.Name,  count(p.Id)
FROM Poem p
LEFT JOIN PoemEmotion pe on p.Id = pe.PoemId
LEFT JOIN Emotion e on pe.EmotionId = e.Id
GROUP BY e.Name
HAVING e.Name  IS NULL;

--task18
