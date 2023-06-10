with Ada.Text_IO; use Ada.Text_IO;
with week.Child; use week.Child;
with Operations;
with Book.additional_Operations; use Book.additional_Operations;
--  References the Week package, and adds a dependeny from Main to Week

procedure Main is
   use Operations;

   I : Integer := 0;
   R : Integer;

   procedure Display_Update_Values is
      Incr : constant Integer := Get_Increment_Value;

   begin
      Put_Line (Integer'Image (I) & " increment by "
                & Integer'Image (Incr) & " is "
                & Integer'Image (R));
      I := R;
   end Display_Update_Values;

begin
   Put_Line ("First day of the week is " & Get_First_Of_Week);

   R := Increment_By (I);
   Display_Update_Values;
   R := Increment_By (I);
   Display_Update_Values;

   R := Increment_By (I);
   Display_Update_Values;
   R := Increment_By (I);
   Display_Update_Values;

   R := Increment_By (I, 5);
   Display_Update_Values;
   R := Increment_By (I);
   Display_Update_Values;

   R := Increment_By (I, 10);
   Display_Update_Values;
   R := Increment_By (I);
   Display_Update_Values;

   Put_Line (Get_Extended_Title);
   Put_Line (get_Extended_Author);

end Main;
