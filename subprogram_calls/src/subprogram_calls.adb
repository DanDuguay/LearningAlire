--  procedure Swap (A, B : Integer) is
   --  Tmp : Integer;
--  begin
   --  Tmp := A;

   --  Error: assignment to "in" mode parameter not allowed

   --  A := B;

   --  Error: assignment to "in" mode parameter not allowed

   --  B := Tmp;
--  end Swap;

--  Correct implementation:

with Ada.Text_IO; use Ada.Text_IO;

procedure In_Out_Params is
   procedure Swap (A, B : in out Integer) is
      Tmp : Integer;
   begin
      Tmp := A;
      A := B;
      B := Tmp;
   end Swap;

   A : Integer := 12;
   B : Integer := 44;
begin
   Swap (A, B);

   --   Prints 44
   Put_Line (Integer'Image (A));
end In_Out_Params;
