/*Problem 1 Solution*/
MATCH (t:Tournament) RETURN t.name AS tournamentName

/*Problem 4 Solution*/
MATCH (n:Person) WHERE n.name CONTAINS 'Hara' RETURN properties(n);

/*Problem 7 Solution*/
MATCH (a:Person)-[r:COACH_FOR]->(b:Squad) WHERE b.id = "USA in 2019" RETURN a.name;