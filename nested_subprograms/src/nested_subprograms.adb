with Ada.Text_IO;       use Ada.Text_IO;
with Increment_By;

procedure Nested_Subprograms is
   A, B, C : Integer;

   procedure Display_Results is
   begin
      Put_Line ("Increment of " & Integer'Image (A) & " with "
                & Integer'Image (B) & " is " & Integer'Image (C));
   end Display_Results;

begin
   A := 10;
   B := 3;
   C := Increment_By (A, B);
   --                   ^ Regular parameter passing

   Display_Results;

   A := 20;
   B := 5;
   C := Increment_By (I => A, Incr => B);
   --                       ^ Named parameter passing

   Display_Results;
end Nested_Subprograms;
