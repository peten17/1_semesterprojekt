
PROGRAM _INIT
	
	placeInString := 0; 
	i := 0;
	sharpen := 1;
	activator := FALSE;	
	testEnab:= FALSE;
	penLength := 0;
	sharpenderNeed:= 0;
	
	
END_PROGRAM

PROGRAM _CYCLIC
	ValueZ := REAL_TO_INT(penLength**1.5);
	sharpenderLen := REAL_TO_INT(45000/penLength);
	
	IF (reset = FALSE AND testEnab = FALSE AND penLength > 5 ) THEN
//		percentage:= (UINT_TO_REAL(placeInString)/LEN(input))*100;
		
		IF switch_X = FALSE OR switch_Y = FALSE OR switch_Z = FALSE AND sharpen <= 30000 THEN
			enabX := TRUE;
			enabY := TRUE;
			enabZ := TRUE;
		END_IF	
		
		IF (enabX = FALSE) THEN
			status:= 2;
		END_IF
		
		IF (i = 30) THEN
			IF placement = 20016 OR placement = 20017 THEN
				newLineHelper := newLineHelper - 17 ;
				posX := posX + 17;
			ELSIF placement = 21041 OR placement = 21040 THEN
				FOR check := placeInString TO finder BY check +1 DO
					tempPlace := input[check];
					IF tempPlace = 21041 THEN
						finder := TRUE;
					ELSIF tempPlace = 20016 OR tempPlace = 20017 THEN
						placeInString := check -1;
						newLineHelper := newLineHelper + 17;
						posX := posX - 17;
						finder := TRUE;
					END_IF
				END_FOR	
			END_IF
			placeInString := placeInString + 1;
			i := 0;
		END_IF	
		placement := input[placeInString];
		
		// here the robot will move to the shapener, sharpen the pencil and move back to were it came from
		IF (sharpen >= 30000) THEN //!!!!!
			IF (posZ >= 300 AND tempX > 0 AND activator = FALSE) THEN  // !!!!!!
				dirZ := FALSE;
				stepZ := NOT stepZ;
				IF (stepZ = FALSE) THEN
					posZ := posZ -1;
				END_IF
				
			ELSIF (tempX > 0 AND posZ <= 300 AND activator = FALSE)THEN //!!!!!
				dirX := FALSE;
				stepX := NOT stepX;
				IF (stepX = FALSE) THEN
					tempX := tempX -1;
				END_IF
			
			ELSIF (tempX = 0 AND posZ <= 1500 + sharpenderLen AND activator = FALSE) THEN //!!!!!
				dirZ := TRUE;
				stepZ := NOT stepZ;
				IF (stepZ = FALSE) THEN
					posZ := posZ +1;
				END_IF
				
			ELSIF (tempX = 0 AND posZ >= 1500 + sharpenderLen AND activator = FALSE) THEN //!!!!!!
				timer.IN := TRUE;
				timer.PT := T#6000ms;
				IF timer.Q THEN
					activator := TRUE;
				END_IF	
				
			ELSIF  (tempX = 0 AND posZ > 300 AND activator = TRUE) THEN//!!!!!
				dirZ := FALSE;
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
				timer.IN := FALSE;
				
			END_IF
			
			
		ELSE
			// here the robot will draw
			IF (placement = 21041 AND i < 30) THEN
				IF (posZ < (3200-ValueZ)) THEN  // !!!!!!
					IF dirZ THEN  
						stepZ := NOT stepZ;
						IF (stepZ = FALSE) THEN
							posZ := posZ +1;
						END_IF
					ELSE 	
						dirZ := TRUE;
					END_IF
					
				ELSE
					IF dirX THEN
						stepX := NOT stepX;
						i := i + 1;
						IF (stepX = FALSE) THEN
							posX := posX + 1;
							newLineX := newLineX +1;
							sharpen := sharpen + 1;
							tempX := posX;
						END_IF
					ELSE
						dirX := TRUE;
					END_IF 	
					
				END_IF	
			
			//dont draw
			ELSIF placement = 21040 AND i < 30 THEN
				IF (posZ > (2900-ValueZ)) THEN  // !!!!!!
					IF dirZ = FALSE THEN	
						stepZ := NOT stepZ;
						IF (stepZ = FALSE) THEN
							posZ := posZ -1;
						END_IF
					ELSE
					dirZ := FALSE;
					END_IF		
				ELSE
					IF dirX THEN
						stepX := NOT stepX;
						i := i + 1;
						IF (stepX = FALSE) THEN
							posX := posX +1;
							newLineX := newLineX +1;
						END_IF
					ELSE
						dirX := TRUE;
					END_IF
					
				END_IF		
					
//			ELSIF (i = 3) THEN
//				
//					
//					placeInString := placeInString + 1;
//					i := 0;
//					
//				ELSE
//					placeInString := placeInString + 1;	
			
				
		
//			ELSIF (placement = '1' OR placement = '0') THEN
//				placeInString := placeInString + 1;	
			
			
			ELSIF (placement = 20016 OR placement = 20017) THEN
				IF (posZ > (2900-ValueZ) )THEN  // !!!!!!
					IF dirZ = FALSE THEN
						stepZ := NOT stepZ;
						IF (stepZ = FALSE) THEN
							posZ := posZ -1;
						END_IF
					ELSE
						dirZ := FALSE;
					END_IF
					
				ELSIF (posZ <= (2900-ValueZ)) AND (newLineX >= (newLineHelper)) THEN//!!!!
					IF dirX = FALSE THEN
						stepX := NOT stepX;
						IF (stepX = FALSE) THEN
							posX := posX - 1;
							newLineX := newLineX -1;
						END_IF
					ELSE
						dirX := FALSE;
					END_IF
					
				ELSIF ((posZ <= (2900-ValueZ)) AND (newLineX <= newLineHelper) AND (i < 30)(* OR ( posZ = 0)*)) THEN
					IF dirY THEN
						stepY := NOT stepY;
						i := i +1;
						IF (stepY = FALSE) THEN
							posX := posX - 1;
							newLineX := newLineX -1;
						END_IF
					ELSE
						dirY := TRUE;
					END_IF
					
				END_IF
				
				
			
			ELSIF placement = 20785 OR placement = 20784 THEN
			
				quit := TRUE;
			END_IF	
		
			
		END_IF
	
	END_IF 
	timer();
END_PROGRAM

PROGRAM _EXIT
	(* Insert code here *)
	 
END_PROGRAM

