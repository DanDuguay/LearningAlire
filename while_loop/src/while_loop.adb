with Ada.text_IO;   use Ada.text_IO;

procedure While_Loop is
   I : Integer := 1;
begin
   -- Condition must be a Boolean value (no Integers).
   -- Operator <= returns a Boolean

   while I <= 5 loop
      Put_Line ("Hello, World!" & Integer'Image (I));

      I := I+1;
   end loop;
end While_Loop;
