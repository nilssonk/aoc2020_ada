with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;

function Part2 (input : StringVec.Vector) return Integer is
    first  : Integer;
    second : Integer;
    third  : Integer;
    target : Integer;
begin
    for i in input.First_Index .. input.Last_Index loop
        first := Integer'Value (To_String (input (i)));

        for j in i .. input.Last_Index loop
            second := Integer'Value (To_String (input (j)));
            target := 2_020 - (second + first);

            for k in j .. input.Last_Index loop
                third := Integer'Value (To_String (input (k)));

                if third = target then
                    return first * second * third;
                end if;
            end loop;
        end loop;
    end loop;
    return 0;
end Part2;
