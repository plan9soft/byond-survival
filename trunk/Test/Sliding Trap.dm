//Work on the slidy trap code.
obj
	trap
		SlideTrap
			icon='Spike trap.dmi'
			density = 1
		var
			damage = 5


		Bump(atom/O) //Called when movement fails due to blockage. O is the blockage, src is the arrow.
			if(ismob(O)) //if O is a mob, deal damage then delete the arrow
				O:TakeTrapDamage(src.damage,"A Trap")
			else //If we hit anything that isn't a mob, we return to start location.

//Initiallizes Trap AI
obj/trap/New()
	spawn(-1)	src.TrapAI()
	return ..()

//Trap AI
obj/proc
	TrapAI() //AI Traps
		while(src)
			for(var/mob/Player/M in oview())
				//Check that the player is in a straight N,S,E,W direction
				//BUM RUSH!
				//Detect impact, damage player
				//Return to start location.