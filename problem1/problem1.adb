with Ada.Command_Line;         use Ada.Command_Line;
with Ada.Text_IO;              use Ada.Text_IO;
with Ada.Text_IO.Unbounded_IO; use Ada.Text_IO.Unbounded_IO;
with Util;                     use Util;
with Part1;
with Part2;

procedure Problem1 is
    lines      : StringVec.Vector;
    answer_one : Integer;
    answer_two : Integer;
begin
    if Argument_Count = 0 then
        Put_Line (Standard_Error, "Usage: " & Command_Name & " <input_file>");
        return;
    end if;
    lines      := Util.Read_Lines (Argument (1));
    answer_one := Part1 (lines);
    answer_two := Part2 (lines);
    Put_Line (answer_one'Image);
    Put_Line (answer_two'Image);
end Problem1;
