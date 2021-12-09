with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;

function Part1 (input : StringVec.Vector) return Integer is
    first  : Integer;
    second : Integer;
begin
    for i in input.First_Index .. input.Last_Index loop
        first := Integer'Value (To_String (input (i)));
        for j in i .. input.Last_Index loop
            second := Integer'Value (To_String (input (j)));
            if first + second = 2_020 then
                return first * second;
            end if;
        end loop;
    end loop;
    return 0;
end Part1;
