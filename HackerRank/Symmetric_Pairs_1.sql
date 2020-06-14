/* Q You are given a table, Functions, containing two columns: X and Y.
￼
Two pairs (X1, Y1) and (X2, Y2) are said to be symmetric pairs if X1 = Y2 and X2 = Y1.
Write a query to output all such symmetric pairs in ascending order by the value of X.

ans mysql */

select * from 
(
    select x,y
    from functions
    where x=y
    group by x,y
    having count(*)>=2
    
union all
    
select distinct A_X,A_Y from
    (select distinct a.x as A_X,a.y as A_Y, b.y as B_Y,b.x as B_X
        from functions a inner join functions b
        on a.x=b.y and a.y=b.x
    ) a1
   where A_X<B_X) main

order by X asc
