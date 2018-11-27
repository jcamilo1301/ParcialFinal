-- Primer punto 
 
 
 CREATE OR REPLACE FUNCTION divisible_sum_pairs(a in int) 
      RETURN  NUMBER IS
      type NumberVarray is varray(100) of NUMERIC(10);
      myArray NumberVarray;
      k int;
      cant int:=0;
    BEGIN
      myArray := NumberVarray(1,2,3,4,5,6);

              for i in myArray.first..myArray.last
              loop
                  for j in myArray.first..myArray.last
                  loop
                      if i<j then 
                          if MOD(myArray(i)+myArray(j),5)=0 then
                             cant:=cant +1;
                           end if;
                      end if;
                  end loop;  
              end loop;  
      
    RETURN cant;
    END divisible_sum_pairs;
    
    
    
declare
a  number := 0;
begin
a:=divisible_sum_pairs(10);
dbms_output.put_line('resultado: ' || a);
end;
