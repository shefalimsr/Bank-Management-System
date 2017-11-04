set search_path to bank;

CREATE OR REPLACE FUNCTION extract_date(in Time_Stamp timestamp ,out cdate date) as $$

begin

select date( Time_Stamp) into cdate;
 end

 $$ LANGUAGE plpgsql;
