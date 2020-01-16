--Problem 4.5 List all the exercises in routine 'r2'

select * from exercises natural join routines_exercises where routineId == 'r2';

/*Test
exerciseId  name        muscle      routineId 
----------  ----------  ----------  ----------
e1          sit-ups     abs         r2        
e10         push-ups    chest       r2        
e3          lunges      quads       r2        
e4          squats      glutes      r2        
e6          tricep dip  triceps     r2        
e7          leg curls   biceps      r2        
e8          pull-ups    back        r2        
*/