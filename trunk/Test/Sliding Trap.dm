//Work on the slidy trap code.
obj
	trap
		SlideTrap
			icon='Spike trap.dmi'
			density = 1
		var
			damage = 5
			StartX
			StartY
			StartZ


		Bump(atom/O) //Called when movement fails due to blockage. O is the blockage, src is the arrow.
			if(ismob(O)) //if O is a mob, deal damage then delete the arrow
				O:TakeTrapDamage(src.damage,"A Trap")
			else //If we hit anything that isn't a mob, we return to start location.

//Initiallizes Trap AI
obj/trap/New()
	StartX = src.x //Each trap saves it's starting location
	StartY = src.y
	StartZ = src.z
	spawn(-1)	src.TrapAI()
	return ..()

//Trap AI
obj/trap/proc
	TrapAI() //AI Traps
		while(src)
			if(src.x!=StartX || src.y!=StartY || src.z!=StartZ)
				return
			else
				for(var/mob/Player/M in oview())
					var/PlayerDir=get_dir(src,M)
					switch(PlayerDir)
						if(NORTH) walk(src,NORTH,0,0)
						if(SOUTH) walk(src,SOUTH,0,0)
						if(EAST) walk(src,EAST,0,0)
						if(WEST) walk(src,WEST,0,0)
				break

				//Check that the player is in a straight N,S,E,W direction
				//BUM RUSH!
				//Detect impact, damage player
				//Return to start location.