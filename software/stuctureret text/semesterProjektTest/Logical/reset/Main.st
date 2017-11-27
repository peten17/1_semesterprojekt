
PROGRAM _INIT
	reset := FALSE;//!!!!!!!!
	resetXYZ := 0;
	swCount:= 0;
	quit := FALSE;
	status := 1;
	testEnab := TRUE;//!!!!!!
END_PROGRAM

PROGRAM _CYCLIC

		
	IF (reset = TRUE AND testEnab = FALSE) THEN
			
		// Resets the z-axis to know the position of the pen.
		IF (switch = TRUE AND resetXYZ = 0) THEN
			enabZ:= FALSE;
				dirZ:= FALSE;
				stepZ := NOT stepZ;
			END_IF		
			
		IF (switch = FALSE AND swCount = 0 ) THEN 
				enabZ:= FALSE;
				dirZ:= TRUE;
				stepZ := NOT stepZ;
				resetXYZ:= 1;
			END_IF
			
			// Resets the x-axis to know the position of the pen.
			IF (switch = TRUE AND resetXYZ = 1) THEN
				swCount := 1;
				enabX:= FALSE;
				dirX:= FALSE;
				stepX := NOT stepX;
	
			END_IF
			IF (switch = FALSE AND swCount = 1) THEN 
				enabX:= FALSE;
				dirX:= TRUE;
				stepX := NOT stepX;
				resetXYZ:= 2;
			END_IF
			
			// Resets the y-axis to know the position of the pen.
			IF (switch = TRUE AND resetXYZ = 2) THEN
				swCount := 2;
				enabY:= FALSE;
				dirY:= FALSE;
				stepY := NOT stepY;
	
			END_IF
			IF (switch = FALSE AND swCount = 2) THEN 
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
				IF posX < 1200 THEN
					dirX := TRUE;
					stepX := NOT stepX;
					IF (stepX = FALSE) THEN
						posX := posX +1;
					END_IF
				ELSE
					reset:= FALSE;
					resetXYZ:= 0;
					swCount := 0;
				END_IF
		END_IF
		END_IF 
	
	
	// move x-axis left 
	IF (x_move_left AND testEnab) THEN 
		stepX := NOT stepX;
		dirX := TRUE;
		IF stepX = FALSE THEN
			posX := posX +1;
		END_IF
	END_IF
	
	// move x-axis right
	IF (x_move_right AND testEnab) THEN 
		stepX := NOT stepX;
		dirX := FALSE;
		IF stepX = FALSE THEN
			posX := posX -1;
		END_IF
	END_IF
	
	// move y-axis left
	IF (y_move_left AND testEnab) THEN 
		stepY := NOT stepY;
		dirY := TRUE;
		IF stepY = FALSE THEN
			posY := posY +1;
		END_IF
	END_IF	
	
	// move y-axis right 
	IF (y_move_right AND testEnab) THEN 
		stepY := NOT stepY;
		dirY := FALSE;
		IF stepY = FALSE THEN
			posY := posY -1;
		END_IF
	END_IF
	
	// move z-axis up 
	IF (z_move_up AND testEnab) THEN 
		stepZ := NOT stepZ;
		dirZ := FALSE;
		IF stepZ = FALSE THEN
			posZ := posZ +1;
		END_IF
	END_IF
	
	// move z-axis down 
	IF (z_move_down AND testEnab) THEN 
		stepZ := NOT stepZ;
		dirZ := FALSE;
		IF stepZ = FALSE THEN
			posZ := posZ -1;
		END_IF	
	END_IF
	
END_PROGRAM

PROGRAM _EXIT
	(* Insert code here *)
	 
END_PROGRAM

