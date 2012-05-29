mob

	Login() //login related
		if(src.LoadProc())
			world<<"[src] has Returned"
		else
			src.loc=locate(5,5,1)
			world<<"[src] has Logged In"

	Logout() //logout related
		world<<"[src] has Logged Out"
		src.SaveProc()
		del src

	proc
		TakeDamage(var/Damage,var/mob/Attacker)
			src.HP-=Damage
			src.overlays += image('Overlay hit.dmi')
			//Play sounds to indicate that the target has been hit. Sound depends on the "Bodtype" defined for each mob.
			if(src.Bodtype=="Flesh")
				world << sound('Impact - Flesh.wav', volume=45)
			else if(src.Bodtype=="Metal")
				world << sound('Impact - Metal.wav', volume=45)
			else if(src.Bodtype=="Hero")
				world << sound('Impact - Metal.wav', volume=40)
			src.DeathCheck(Attacker)
			sleep(2)
			src.overlays -= image('Overlay hit.dmi')

		DeathCheck(var/mob/Killer)
			if(src.HP<=0)
				if(src.client)
					world<<"[Killer] Killed [src]!"
					src.HP=src.MaxHP
					src.loc=locate(5,5,1)
				else
					Killer<<"<b>You Killed [src]"
					del src