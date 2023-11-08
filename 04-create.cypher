//create a node with multiple labels
CREATE (wira:ASLAB:STUDENT{ name:"Wira", id:10, age:19, ProgramStudy:"SI" })

//create two node with multiple labels adn add relationship
CREATE (wira:ASLAB:STUDENT{ name:"Wira", id:10, age:19, ProgramStudy:"SI" }) - [:ASLAB_LABOLATORY] -> (:LABOLATORY{name:"Jarkom"})

//create two node with multiple labels adn add relationship
CREATE (wira:ASLAB:STUDENT{ name:"Wira", id:10, age:19, ProgramStudy:"SI" })
CREATE (jarkom:LABOLATORY{ name:"Jarkom" })

MATCH (wira:ASLAB{ name:"Wira" }), (labolatory:LABOLATORY{name:"Jarkom"})
CREATE (wira)-[:ASLAB_LABOLATORY]->(labolatory)
