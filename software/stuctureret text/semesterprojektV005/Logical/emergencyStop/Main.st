
PROGRAM _INIT
	// resets the values every time the PLC starts. 
	reset_quit := FALSE;
	emergencyStop := FALSE;
	
END_PROGRAM

PROGRAM _CYCLIC
	IF (emergencyStop) THEN // emergency button 
		enabX := TRUE;		// disables x-axis stepper
		enabY := TRUE;		// disables y-axis stepper	
		enabZ := TRUE;		// disables Z-axis stepper
		status := 0;
		
	END_IF
	
	IF (reset_quit) THEN // Reset button 
		reset := TRUE;		// starts the reset seqence in reset-program
		quit := TRUE;		
		status := 1;		// sets status light to 1
		reset_quit := FALSE;
		placeInString := 0;	//resets place in array 
		
	END_IF
	
	
	 
END_PROGRAM

PROGRAM _EXIT
	(* Insert code here *)
	 
END_PROGRAM

