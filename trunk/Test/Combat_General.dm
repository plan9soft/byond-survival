//This file contains combat code shared by the Melee and ranged components.


//Procs
mob/proc
	TakeDamage(var/Damage,var/mob/Attacker)
		src.HP-=Damage
		src.overlays += image('Overlay hit.dmi')
		//Play sounds to indicate that the target has been hit. Sound depends on the "Bodtype" defined for each mob.
		switch(Bodtype)//Switch is compact notation for an if-else chain.
			if("Flesh")	view() << sound('Impact - Flesh.wav', volume=45)
			if("Metal")	view() << sound('Impact - Metal.wav', volume=45)
			if("Hero")	view() << sound('Impact - Metal.wav', volume=40)
			if("Bone")	view() << sound('Impact - Bone.wav', volume=45)
			else	world << sound('Attack - Twang.wav', volume=45)
		src.DeathCheck(Attacker)
		sleep(2)
		src.overlays -= image('Overlay hit.dmi')

	TakeArrowDamage(var/Damage,var/mob/Attacker,var/obj/projectile/proj)//Special proc for ranged attacks.
		src.HP-=Damage
		del proj //delete the arrow
		src.overlays += image('Overlay hit arrow.dmi')
		world << sound('Attack - Arrow Woosh.wav', volume=45)
		src.DeathCheck(Attacker)
		sleep(2)
		src.overlays -= image('Overlay hit arrow.dmi')

	DeathCheck(var/mob/Killer)
		if(src.HP<=0)
			if(src.client)
				world<<"[Killer] Killed [src]!"
				src.HP=src.MaxHP
				src.loc=locate(5,5,1)
			else
				Killer<<"<b>You Killed [src]"
				del src