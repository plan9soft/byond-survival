//Work on the slidy trap code.
obj
	trap
		New()
			TrapAI()

		SlideTrap
			icon='Spike trap.dmi'
			bound_width=28
			bound_height=28
			density = 1
		var
			damage = 25
			StartLocation


		Bump(atom/O) //Called when movement fails due to blockage. O is the blockage, src is the trap.
			if(ismob(O)) //if O is a mob, deal damage
				//O:TakeTrapDamage(src.damage,"A Trap")
				walk_to(src,src.StartLocation,0,0,4)//Return to starting location.
				O:HP-=src.damage
				O.overlays += image('Overlay hit.dmi')
				world << sound('Impact - Metal.wav', volume=45)
				O:DeathCheck(src)
				sleep(2)
				O.overlays -= image('Overlay hit.dmi')
			walk_to(src,src.StartLocation,0,0,4)//Return to starting location.

//Trap AI
obj/trap/proc
	TrapAI()
		StartLocation = src.loc //Save our starting location
		sleep(20)
		while(src) //Should be able to make this more generic by using variables & pre-definig start & end points programatically.
			if(src.loc==StartLocation)//If we're at our starting location
				walk(src,NORTH,0,40)	//Check if there's a player to our N,S,E,W
			sleep(5)

				//Check that the player is in a straight N,S,E,W direction
				//BUM RUSH!
				//Detect impact, damage player
				//Return to start location.