
PROGRAM _INIT
	state := 1;
	pakgede := 0;
END_PROGRAM

PROGRAM _CYCLIC
	CASE state OF
		1:
			tcp1.enable := TRUE;
			tcp1.port := 12345;
			tcp1.options := tcpOPT_REUSEADDR;
			tcp1();
			IF tcp1.status = 0 THEN
				state := 10;
			END_IF	
		
		10:
			tcp2.enable := TRUE;
			tcp2.ident := tcp1.ident;
			tcp2();
			IF tcp2.status = 0 THEN
				state := 20;
			END_IF	
			
		20:
			tcp3.enable := TRUE;
			tcp3.ident := tcp2.identclnt;
			tcp3.pData := ADR(input(*reciveData*));
			tcp3.datamax := SIZEOF (input(*reciveData*));
			tcp3();
			IF tcp3.status = 0 THEN
				//				teller := 0;
//				pakgede := pakgede +1;
//				WHILE reciveData[teller] = NOT 0 DO
//					input[addAr] := reciveData[teller];
//					addAr := addAr + 1;
//					teller := teller +1;
//				END_WHILE
				
					state := 30;

			END_IF	

		30:
			tcp4.enable := TRUE;
			tcp4.ident := tcp2.identclnt;
			tcp4.pData := ADR(input);
			tcp4.datalen := brsstrlen(ADR(input));
			tcp4();
			IF tcp4.status = 0 THEN
//				IF pakgede = 2 THEN
					state := 40;
//				ELSE 
//					state := 20;
//				END_IF	
				END_IF	
			
		40:
			tcp5.enable := TRUE;
			tcp5.ident := tcp2.identclnt;
			tcp5();
			IF tcp5.status = 0 THEN
				tcp2.enable := FALSE;
				state := 10;
				
				//				FOR i := 0 TO i < 200 BY i + 1 DO
				//					reciveData[i] := 0;
				//				END_FOR	
			END_IF	
	END_CASE
//	test();
END_PROGRAM

PROGRAM _EXIT
	tcp5.enable := TRUE;
	tcp5.ident := tcp2.identclnt;
	tcp5();
	
	tcp5.enable := TRUE;
	tcp5.ident := tcp1.ident;
	tcp5();
	
END_PROGRAM