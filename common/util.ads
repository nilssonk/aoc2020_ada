with Ada.Containers.Vectors;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;

package Util is
    package StringVec is new Ada.Containers.Vectors(Index_Type => Natural, Element_Type => Unbounded_String);
    type Count is new Ada.Containers.Count_Type;
    function Read_Lines(file_path: String) return StringVec.Vector;
end Util;