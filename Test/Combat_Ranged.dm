//This file contains everything needed for the projectile system.
//It includes all the procs and verbs
//
//Procs and verbs shared by melee and ranged combat go in Combat_General.dm

//Verbs
mob/verb
	Shoot() //Ranged Attack verb
		if(src.AttackDelay<world.time) //First, we check the clock to see if we can attack again.
			flick("Attack",src)
			src.AttackDelay=world.time+AttackRate //Add AttackRate to the current time, we can't attack again till that is past.
			var/obj/projectile/Arrow/P = new(null,usr)
			walk(P,P.dir,0)

obj
	projectile
		var //Projectile specific variables
			maxrange
			damage
			mob/owner //The mob who fired the projectile

//Procs
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

		Move() //Triggers each time the projectile moves
			src.maxrange-- //remove 1 from src.maxrange
			if(src.maxrange<=0) del src //if length is 0, delete the projectile
			return ..() //otherwise, continue on.

		Bump(atom/O) //Called when movement fails due to blockage. O is the blockage, src is the arrow.
			if(ismob(O)) //if O is a mob, deal damage then delete the arrow
				O:TakeArrowDamage(src.damage,src.owner,src)
			else if(isobj(O)) del src //If we hit an object, delete the arrow
			//else if(isturf(O)) ;//If we hit obstructing turf...
			del src