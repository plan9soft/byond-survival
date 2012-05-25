mob
	proc
		TakeDamage(var/Damage,var/mob/Attacker)
			src.HP-=Damage
			src.DeathCheck(Attacker)

		DeathCheck(var/mob/Killer)
			if(src.HP<=0)
				if(src.client)
					world<<"[Killer] Killed [src]!"
					src.HP=src.MaxHP
					src.loc=locate(5,5,1)
				else
					Killer<<"<b>You Killed [src]"
					del src