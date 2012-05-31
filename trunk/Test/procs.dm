mob //mob related procs
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
			switch(Bodtype)//Switch is compact notation for an if-else chain.
				if("Flesh")	world << sound('Impact - Flesh.wav', volume=45)
				if("Metal")	world << sound('Impact - Metal.wav', volume=45)
				if("Hero")	world << sound('Impact - Metal.wav', volume=40)
				if("Bone")	world << sound('Impact - Bone.wav', volume=45)
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

obj //Object Specific Procs
	projectile //Projectile Specific Procs

		//Spawns a projectile Object
		New(_loc,mob/_owner)
			if(_owner) //if an owner was specified...
				//src.dmg = max(_owner.Level * src.dmg,1) //dynamic dmg example
				//src.length = max(round(_owner.MaxMP / src.length),5) //dynamic length example
				src.dir = _owner.dir
				if(!src.loc) src.loc = get_step(_owner,_owner.dir) //if loc isn't set, initialize it.
				src.owner = _owner

		//Makes a projectile move
		Move()
			src.maxrange-- //remove 1 from src.maxrange
			if(src.maxrange<=0) del src //if length is 0, delete the projectile
			return ..() //otherwise, continue on.

		//What happens when a projectile hits something.
		Bump(atom/O) //Called when movement fails due to blockage. O is the blockage, src is the arrow.
			if(ismob(O)) //if O is a mob, deal damage then delete the arrow
				O:TakeArrowDamage(src.damage,src.owner,src)
			else if(isobj(O)) del src //If we hit an object, delete the arrow
			//else if(isturf(O)) ;//If we hit obstructing turf...
			del src

	lightsource //Create a new class of objects, "lightsource". For things like wall lanterns, etc.
		var //lightsource specific variables.
			torch_lit = 1 //1=Lit 0=Not lit

	food //create a new class of objects, "food". for things like berries, ect