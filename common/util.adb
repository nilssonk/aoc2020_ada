with Ada.Command_Line;      use Ada.Command_Line;
with Ada.Text_IO;           use Ada.Text_IO;
with Ada.Text_IO.Unbounded_IO;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Containers.Vectors;

package body Util is
    function Read_Lines(file_path : String) return StringVec.Vector is
        lines: StringVec.Vector;
        input_file : File_Type;
    begin
        Open (input_file, In_File, file_path);
        while not End_Of_File(input_file) loop
            lines.Append(Unbounded_IO.Get_Line(input_file));
        end loop;
        return lines;
    exception
        when Name_Error =>
            Put_Line (Standard_Error, "Unable to open input file");
            return lines;
        when others =>
            Put_Line (Standard_Error, "Error while processing input file");
            return lines;
    end Read_Lines;
end Util;