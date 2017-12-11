
(* TODO: Add your comment here *)
FUNCTION_BLOCK addArray
	FOR count := 0 TO IN[count] = 0 BY count + 1 DO
		PRE[temp] := IN[count];
		IF PRE[temp] = 0 THEN
			count := 28730;
		END_IF	
		temp := temp +1;
	END_FOR	
	Q := PRE;
END_FUNCTION_BLOCK
