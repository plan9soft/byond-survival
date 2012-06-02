//This file contains everything needed for the melee combat system.
//
//Procs and verbs shared by melee and ranged combat go in Combat_General.dm

//Verbs
mob/verb
	Attack() //The Attack action
		if(src.AttackDelay<world.time) //First, we check the clock to see if we can attack again.
			flick("Attack",src)
			src.AttackDelay=world.time+AttackRate //Add AttackRate to the current time, we can't attack again till that is past.
			for(var/mob/M in get_step(src,src.dir))
				if(src!=M)//Make sure the src isn't attacking itself.
					var/Damage=max(0,src.Str-M.Def)
					M.TakeDamage(Damage,src)