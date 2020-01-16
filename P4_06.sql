--Problem 4.6 List the number of routines the users have created

select userId, count(userId) as routineNo from routines group by userid;

/*Test
userId      routineNo 
----------  ----------
u1          2         
u2          1         
u3          1         
*/