/*Problem 1 Solution*/
MATCH (t:Tournament) RETURN t.name AS tournamentName

/*Problem 2 Solution*/
MATCH (p:Person)-[:REPRESENTS]->(t:Team {name: "USA"}) RETURN p.name AS PlayerName

/*Problem 4 Solution*/
MATCH (n:Person) WHERE n.name CONTAINS 'Hara' RETURN properties(n);

/*Problem 5 Solution*/
MATCH (p:Person {name: "Kelley O Hara"})-[:IN_SQUAD]->(s:Squad) RETURN COUNT(s) AS NumberOfSquads

/*Problem 7 Solution*/
MATCH (a:Person)-[r:COACH_FOR]->(b:Squad) WHERE b.id = "USA in 2019" RETURN a.name;

/*Problem 8 Solution*/
MATCH (p:Person {name: "Rose Lavelle"})-[:SCORED_GOAL]->(m:Match) RETURN m AS MatchDetails