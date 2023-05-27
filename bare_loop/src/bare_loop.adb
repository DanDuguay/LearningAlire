with Ada.Text_IO;     use Ada.Text_IO;

procedure Bare_Loop is
   -- Variable declaration:
   I : Integer := 1;
   --   ^Type
   --             ^Initial value
begin
   loop
      -- Loop body:
      Put_Line ("Hello, world!" & Integer'Image (I));

      -- Exit statement:
      exit when I = 5;
      --          ^Boolean condition

      -- Assignment:
      I := I + 1;
      -- There is no I++ short form to increment a variable in Ada
   end loop;
end Bare_Loop;
