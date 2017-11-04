set search_path to bank;

CREATE OR REPLACE FUNCTION dependen(IN emp_id varchar,OUT amount float ) as $$

DECLARE
c integer;
c1 integer;
c2  integer;
c3 integer;
count integer;


begin

count = 0;
amount =0;
select count(*) from emp_dependent
              where relationship = 'DAUGHTER' or relationship = 'SON'  group by employee_id having employee_id = emp_id  into count;
                   
             if(count<2) then
             amount = 2500*count;
             end if;
            
             if(count>=2) then
             amount = 5000;
             end if;
 end

 $$ LANGUAGE plpgsql;
