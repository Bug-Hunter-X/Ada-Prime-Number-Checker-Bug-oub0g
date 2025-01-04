```ada
function Check_Prime (N : in Integer) return Boolean is
   I : Integer := 2;
begin
   if N <= 1 then
      return False;
   end if;
   while I * I <= N loop
      if N mod I = 0 then
         return False;
      end if;
      I := I + 1;
   end loop;
   return True;
end Check_Prime;

with Ada.Text_IO; use Ada.Text_IO;
procedure Main is
   Num : Integer;
begin
   Put_Line("Enter an integer: ");
   Get(Num);
   if Check_Prime(Num) then
      Put_Line(Num & " is a prime number");
   else
      Put_Line(Num & " is not a prime number");
   end if;
end Main;
```