////////////////////////////////////////////////////////////
// ================ Querying For Nodes ================== //
////////////////////////////////////////////////////////////

// All nodes //
MATCH (n)
RETURN n

//select aslab entities
MATCH (aslab:ASLAB)
RETURN aslab

//select aslab entities with name
MATCH (aslab:ASLAB)
RETURN aslab.name

//select aslab entities with name and id
MATCH (aslab:ASLAB)
RETURN aslab.name, aslab.id

/////////////////////////////////////////////////////////////
// ================ Filtering For Nodes ================== //
/////////////////////////////////////////////////////////////

//select aslab name with specific name
MATCH (aslab:ASLAB)
WHERE aslab.name = "Naryo"
RETURN aslab

MATCH (aslab:ASLAB { name: "Naryo" })
RETURN aslab

//select aslab with not parameter
MATCH (aslab:ASLAB)
WHERE aslab.name <> "Naryo"
RETURN aslab

//select aslab with age graeter than 18
MATCH (aslab:ASLAB)
WHERE aslab.age > 18
RETURN aslab

//select aslab with age graeter and equal than 18
MATCH (aslab:ASLAB)
WHERE aslab.age >=18
RETURN aslab

//select aslab with age less than 18 and has id graeter than 3
MATCH (aslab:ASLAB)
WHERE aslab.age>18 AND aslab.id>3
RETURN aslab

//select aslab with age less than 18 or has id less than 4
MATCH (aslab:ASLAB)
WHERE aslab.age>=18 OR aslab.id<4
RETURN aslab

//select aslab with age is 18 and limit the node to 4
MATCH (aslab:ASLAB)
WHERE aslab.age=18
RETURN aslab
LIMIT 4

//select aslab with age is 18 and skip the node to 2 but skip the 2 first node
MATCH (aslab:ASLAB)
WHERE aslab.age=18
RETURN aslab
SKIP 2
LIMIT 2

//order by id desc
MATCH (aslab:ASLAB)
WHERE aslab.age=18
RETURN aslab
 ORDER BY aslab.id DESC

//select multiple nodes
MATCH (aslab:ASLAB), (lecture:LECTURE)
RETURN aslab, lecture

//////////////////////////////////////////////////
// ================ Relation ================== //
//////////////////////////////////////////////////

//select relationship
MATCH (aslab:ASLAB) -[:ASLAB_LABOLATORY]->(lab:LABOLATORY)
WHERE lab.name= "RPL"
RETURN aslab, lab

//select relationship with parameter
MATCH (aslab:ASLAB) -[:ASLAB_LABOLATORY]->(labolatory:LABOLATORY)
WHERE labolatory.id="LAB2" OR labolatory.name=labolatory.id="LAB1"
RETURN aslab, labolatory
