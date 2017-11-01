
PROGRAM _INIT
	input := ""
	i := 0
	// X = højre af X aksen	
	// A = venstre af X aksen	
	// Y = højre af y aksen
	// B = venstre af y aksen
	// Z = højre af Z aksen
	// C = venstre af Z aksen 
	// N = ny linje 
	
	
END_PROGRAM

PROGRAM _CYCLIC

	timer.IN := TRUE;
	timer.PT := T#1000ms;
	IF (MID(input, 1, i) = 'X') THEN
		out[0] := TRUE;
		
		
	ELSIF (MID(input, 1, i) = 'A') THEN
		out[1] := TRUE;
		
	ELSIF (MID(input, 1, i) = 'Y') THEN
		out[2] := TRUE;
		
	ELSIF (MID(input, 1, i) = 'B') THEN
		out[3] := TRUE;
		
	ELSIF (MID(input, 1, i) = 'Z') THEN
		out[4] := TRUE;
		
	ELSIF (MID(input, 1, i) = 'C') THEN
		out[5] := TRUE;
	
	ELSIF (MID(input, 1, i) = 'X') THEN
		
	ELSE
		
	END_IF
	
	IF (timer.Q) THEN
		out[0] := FALSE;
		out[1] := FALSE;
		out[2] := FALSE;
		out[3] := FALSE;
		out[4] := FALSE;
		out[5] := FALSE;
	END_IF
		
	i := i+1
	
END_PROGRAM

PROGRAM _EXIT
	(* Insert code here *)
	 
END_PROGRAM

