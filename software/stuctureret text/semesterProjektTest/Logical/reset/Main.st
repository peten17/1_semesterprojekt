
PROGRAM _INIT
	reset := TRUE;
	resetXYZ := 0;
	swCount:= 0;
	quit := FALSE;
	status := 1;
END_PROGRAM

PROGRAM _CYCLIC

		
		IF (reset = TRUE) THEN
			
		// Resets the z-axis to know the position of the pen.
			IF (switch = FALSE AND resetXYZ = 0) THEN
				enabZ:= FALSE;
				dirZ:= FALSE;
				stepZ := NOT stepZ;

			END_IF
			IF (switch = TRUE AND swCount = 0 ) THEN 
				enabZ:= FALSE;
				dirZ:= TRUE;
				stepZ := NOT stepZ;
				resetXYZ:= 1;
			END_IF
			
			// Resets the x-axis to know the position of the pen.
			IF (switch = FALSE AND resetXYZ = 1) THEN
				swCount := 1;
				enabX:= FALSE;
				dirX:= FALSE;
				stepX := NOT stepX;
	
			END_IF
			IF (switch = TRUE AND swCount = 1) THEN 
				enabX:= FALSE;
				dirX:= TRUE;
				stepX := NOT stepX;
				resetXYZ:= 2;
			END_IF
			
			// Resets the y-axis to know the position of the pen.
			IF (switch = FALSE AND resetXYZ = 2) THEN
				swCount := 2;
				enabY:= FALSE;
				dirY:= FALSE;
				stepY := NOT stepY;
	
			END_IF
			IF (switch = TRUE AND swCount = 2) THEN 
				enabY:= FALSE;
				dirY:= TRUE;
				stepY := NOT stepY;
				resetXYZ:= 3;
			END_IF
			IF (resetXYZ = 3 AND switch = FALSE) THEN
				posX := 0;
				posY := 0;
				posZ := 0;
				IF (quit = FALSE)THEN
					reset:= FALSE;
					resetXYZ:= 0;
					swCount := 0;
				
			END_IF
	END_IF
	END_IF
	
	
	
	
	
END_PROGRAM

PROGRAM _EXIT
	(* Insert code here *)
	 
END_PROGRAM

