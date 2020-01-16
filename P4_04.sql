--Problem 4.4 List the routines that can be done in 30 minutes or less

select routineId, name, duration from routines where duration <= 30;

/*Test
routineId   name        duration  
----------  ----------  ----------
r1          Legs        20        
r3          Arms        20        
r4          Core+Butt   30        
*/