//deleting node and relationship
MATCH (da{ name:"Danu" })
DETACH DELETE da

//deleting relationship
MATCH (to{ name:"Tomo" })-[rel:ASLAB_LABOLATORY]->(:LABOLATORY)
DELETE rel
