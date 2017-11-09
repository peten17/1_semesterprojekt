
PROGRAM _INIT
	input := 'R1R0Q';
	// R = next pixel
	// N = new line
	// 0 = pen up
	// 1 = pen down
	// Q = end of picture
	placeInString := 1; 
	i := 0;
	sharpen := 1;
END_PROGRAM

PROGRAM _CYCLIC
	IF (reset = FALSE) THEN
		placement := MID(input, 1, placeInString);
		IF (sharpen = 1200) THEN //!!!!!
			IF (posZ > 300) THEN  // !!!!!!
				dirZ := TRUE;
				stepZ := NOT stepZ;
				IF (stepZ = TRUE) THEN
					posZ := posZ -1;
				END_IF
				
			ELSIF (tempX > 0 AND posZ = 300)THEN 
				dirX := FALSE;
				stepX := NOT stepX;
				IF (stepX = TRUE) THEN
					tempX := tempX -1;
				END_IF
				// nået her til
				
			END_IF
		ELSE	
			IF (placement = 'R') THEN
				IF (MID(input, 1, placeInString + 1) = '1' AND i < 3) THEN
					IF (posZ < 1200) THEN  // !!!!!!
						dirZ := FALSE;
						stepZ := NOT stepZ;
						IF (stepZ = TRUE) THEN
							posZ := posZ +1;
						END_IF
							
						ELSE
						dirX := FALSE;
						stepX := NOT stepX;
						IF (stepX = TRUE) THEN
							posX := posX + 1;
							sharpen := sharpen + 1;
							tempX := posX;
						END_IF
						i := i + 1;
						
					END_IF
					
				ELSIF (MID(input, 1, placeInString + 1) = '0' AND i < 3) THEN
					
					IF (posZ > 800) THEN  // !!!!!!
						dirZ := TRUE;
						stepZ := NOT stepZ;
						IF (stepZ = TRUE) THEN
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
				
			
			ELSIF (placement = '1' OR placement = '0') THEN
				placeInString := placeInString + 1;	
			
			
			ELSIF (placement = 'N') THEN
				
				
			ELSIF (placement = 'Q') THEN
				quit := TRUE;
			
			END_IF	
	END_IF
	END_IF 
END_PROGRAM

PROGRAM _EXIT
	(* Insert code here *)
	 
END_PROGRAM

