
PROGRAM _INIT
	(* Insert code here *)
	reset_quit := FALSE;
	emergencyStop := FALSE;
	
END_PROGRAM

PROGRAM _CYCLIC
	IF (emergencyStop) THEN
		enabX := FALSE;
		enabY := FALSE;
		enabZ := FALSE;
		status := 0;
		
	END_IF
	
	IF (reset_quit) THEN
		reset := TRUE;
		quit := TRUE;
		status := 1;
		reset_quit := FALSE;
		
	END_IF
	
	
	 
END_PROGRAM

PROGRAM _EXIT
	(* Insert code here *)
	 
END_PROGRAM

