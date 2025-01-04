```ada
function Check_Prime (N : in Integer) return Boolean is
begin
   if N <= 1 then
      return False;
   elsif N <= 3 then
      return True;
   elsif N mod 2 = 0 or N mod 3 = 0 then
      return False;
   else
      i : Integer := 5;
      while i * i <= N loop
         if N mod i = 0 or N mod (i + 2) = 0 then
            return False;
         end if;
         i := i + 6;
      end loop;
      return True;
   end if;
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