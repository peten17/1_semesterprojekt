
PROGRAM _INIT
	input := '';
	// R = next pixel
	// N = new line
	// 0 = pen up
	// 1 = pen down
	// Q = end of picture
	placeInString := 0; 
	i := 0;
END_PROGRAM

PROGRAM _CYCLIC
	IF (reset = FALSE) THEN
		placement := MID(input, 1, placeInString);
		IF (placement = 'R') THEN
			IF (MID(input, 1, placeInString + 1) = '1' AND i < 3) THEN
				IF (posZ < 1200) THEN  // !!!!!!
					dirZ := FALSE;
					stepZ := NOT stepZ;
					IF (stepX = TRUE) THEN
						posZ := posZ +1;
					END_IF
						
					ELSE
					dirX := FALSE;
					stepX := NOT stepX;
					IF (stepX = TRUE) THEN
						posX := posX +1;
					END_IF
					i := i + 1;
					
				END_IF
				
			ELSIF (MID(input, 1, placeInString + 1) = '0' AND i < 3) THEN
				
				IF (posZ > 800) THEN  // !!!!!!
					dirZ := TRUE;
					stepZ := NOT stepZ;
					IF (stepX = TRUE) THEN
						posZ := posZ -1;
					END_IF
						
				ELSE
					dirX := FALSE;
					stepX := NOT stepX;
					IF (stepX = TRUE) THEN
						posX := posX +1;
					END_IF
					i := i + 1;
					
				END_IF
				
			ELSIF (i = 3) THEN
				placeInString := placeInString + 1;
				i := 0;
				
			END_IF
			
		END_IF
		
		IF (placement = '1' OR placement = '0') THEN
			placeInString := placeInString + 1;	
		END_IF
		
		IF (placement = 'N') THEN
			
		END_IF
		
		IF (placement = 'Q') THEN
			
		END_IF	
		
	END_IF 
END_PROGRAM

PROGRAM _EXIT
	(* Insert code here *)
	 
END_PROGRAM

