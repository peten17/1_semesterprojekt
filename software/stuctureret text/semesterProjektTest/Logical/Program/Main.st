
PROGRAM _INIT
	input := 'R1R0R0R1R1NR1R0R1Q';
	// R = next pixel
	// N = new line
	// 0 = pen up
	// 1 = pen down
	// Q = end of picture
	placeInString := 1; 
	i := 0;
	sharpen := 1;
	activator := FALSE;
	newLineX := 0; 	
	testEnab:= FALSE;
	
	
END_PROGRAM

PROGRAM _CYCLIC
	IF (reset = FALSE AND testEnab = FALSE) THEN
		
		IF (enabX = FALSE) THEN
			status:= 2;
		END_IF
		
		placement := MID(input, 1, placeInString);
		
		// here the robot will move to the shapener, sharpen the pencil and move back to were it came from
		IF (sharpen = 1200) THEN //!!!!!
			IF (posZ > 300 AND tempX > 0 AND activator = FALSE) THEN  // !!!!!!
				dirZ := TRUE;
				stepZ := NOT stepZ;
				IF (stepZ = FALSE) THEN
					posZ := posZ -1;
				END_IF
				
			ELSIF (tempX > 0 AND posZ = 300 AND activator = FALSE)THEN //!!!!!
				dirX := FALSE;
				stepX := NOT stepX;
				IF (stepX = FALSE) THEN
					tempX := tempX -1;
				END_IF
			
			ELSIF (tempX = 0 AND posZ < 1200 AND activator = FALSE) THEN //!!!!!
				dirZ := FALSE;
				stepZ := NOT stepZ;
				IF (stepZ = FALSE) THEN
					posZ := posZ +1;
				END_IF
				
			ELSIF (tempX = 0 AND posZ = 1200 AND activator = FALSE) THEN //!!!!!!
				timer.IN := TRUE;
				timer.PT := T#10000ms;
				IF timer.Q THEN
					activator := TRUE;
				END_IF	
				
			ELSIF  (tempX = 0 AND posZ > 300 AND activator = TRUE) THEN//!!!!!
				dirZ := TRUE;
				stepZ := NOT stepZ;
				IF (stepZ = FALSE) THEN
					posZ := posZ - 1;
				END_IF
				
			ELSIF (tempX < posX  AND posZ = 300 AND activator = TRUE) THEN //!!!!!
				dirX := TRUE;
				stepX := NOT stepX;
				IF (stepX = FALSE) THEN
					tempX := tempX +1;
				END_IF
				
			ELSIF (tempX = posX  AND posZ = 300 AND activator = TRUE) THEN //!!!!!!
				sharpen := 0;
				activator := FALSE;
				
			END_IF
			
			
		ELSE
			// here the robot will draw
			IF (placement = 'R') THEN
				IF (MID(input, 1, placeInString + 1) = '1' AND i < 3) THEN
					IF (posZ < 1200) THEN  // !!!!!!
						dirZ := FALSE;
						stepZ := NOT stepZ;
						IF (stepZ = FALSE) THEN
							posZ := posZ +1;
						END_IF
							
						ELSE
						dirX := FALSE;
						stepX := NOT stepX;
						IF (stepX = FALSE) THEN
							posX := posX + 1;
							newLineX := newLineX +1;
							sharpen := sharpen + 1;
							tempX := posX;
						END_IF
						i := i + 1;
						
					END_IF
					
				ELSIF (MID(input, 1, placeInString + 1) = '0' AND i < 3) THEN
					
					IF (posZ > 800) THEN  // !!!!!!
						dirZ := TRUE;
						stepZ := NOT stepZ;
						IF (stepZ = FALSE) THEN
							posZ := posZ -1;
						END_IF
							
					ELSE
						dirX := FALSE;
						stepX := NOT stepX;
						IF (stepX = FALSE) THEN
							posX := posX +1;
							newLineX := newLineX +1;
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
				IF (posZ > 800) THEN  // !!!!!!
					dirZ := TRUE;
					stepZ := NOT stepZ;
					IF (stepZ = FALSE) THEN
						posZ := posZ -1;
					END_IF
				ELSIF (posZ = 800 AND newLineX > 0) THEN//!!!!
					dirX := FALSE;
					stepX := NOT stepX;
					IF (stepX = FALSE) THEN
						posX := posX - 1;
						newLineX := newLineX -1;
					END_IF
					
				ELSIF (posZ = 800 AND newLineX = 0 AND i < 3) THEN
					dirY := TRUE;
					stepY := NOT stepY;
					IF (stepY = FALSE) THEN
						posX := posX - 1;
						newLineX := newLineX -1;
					END_IF
					i := i +1;
					
				ELSIF (i = 3) THEN
					placeInString := placeInString + 1;
					i := 0;
				
				END_IF
					
			ELSIF (placement = 'Q') THEN
				quit := TRUE;
			
			END_IF	
	END_IF
	END_IF 
END_PROGRAM

PROGRAM _EXIT
	(* Insert code here *)
	 
END_PROGRAM

