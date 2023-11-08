//update the age and programstudy in specific node
MATCH (dini)
WHERE id(dini)=2
 SET dini.age=17, dini.ProgramStudy="SI"
RETURN dini

//set label in node
MATCH (n)
WHERE id(n)=2
 SET n:LEADERSHIP
RETURN n

//remove label
MATCH (n)
WHERE id(n)=2
REMOVE n:LEADERSHIP
RETURN n

//remove column
MATCH (n)
WHERE id(n)=2
REMOVE n.age
RETURN n
