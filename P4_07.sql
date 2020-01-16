--Problem 4.7 List the routines that contain exercises that target glutes

select routineId from routines_exercises natural join (select exerciseId from exercises where muscle == 'glutes') group by routineId;

/*Test
routineId 
----------
r1        
r2        
r4        
*/