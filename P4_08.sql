--Problem 4.8 List the number of exercises in each routine that target distinct muscles

select routineId, count(routineId) as muscleNo from (select distinct routineId, muscle from exercises natural join routines_exercises) group by routineId;

/*Test
routineId   muscleNo  
----------  ----------
r1          2         
r2          7         
r3          3         
r4          3        
*/