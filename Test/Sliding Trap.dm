//Work on the slidy trap code.
obj
	trap
		SlideTrap
			icon='Spike trap.dmi'
			density = 1

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