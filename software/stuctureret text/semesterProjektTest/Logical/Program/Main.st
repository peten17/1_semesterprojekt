
PROGRAM _INIT
	input := 'XBN';
	i := 0;
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
	timer.PT := T#100ms;
	IF (MID(input, 1, i) = 'X') THEN
		FOR t := 0 TO t < 2 BY t + 1 DO
			out[0] := TRUE;
			x := x+1;
		END_FOR
		
	ELSIF (MID(input, 1, i) = 'A') THEN
		out[1] := TRUE;
		x := x-1;
		
	ELSIF (MID(input, 1, i) = 'Y') THEN
		out[2] := TRUE;
		y := y+1;
		
	ELSIF (MID(input, 1, i) = 'B') THEN
		out[3] := TRUE;
		y := y-1;
		
	ELSIF (MID(input, 1, i) = 'Z') THEN
		out[4] := TRUE;
		z := z+1;
		
	ELSIF (MID(input, 1, i) = 'C') THEN
		out[5] := TRUE;
		z := z-1;
		
	ELSIF (MID(input, 1, i) = 'N') THEN
		
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
		
	i := i+1;
	
END_PROGRAM

PROGRAM _EXIT
	(* Insert code here *)
	 
END_PROGRAM

