//Lists and defines all INTERACTABLE objects used in the game, and all Object specific procs
//Non-interactable objects are considered Turf and go in Enviroment.dm

//Interactable Objects
obj
	Pushable_Boulder //Pushable Boulder
		icon='Boulder.dmi'
		density=1
		Pushable=1 //Boulders are pushable.

	//Projectiles
	projectile
		Arrow //Arrow Projectile. Arrows use default range and damage.
			icon = 'Arrow.dmi'
			density = 1

//Object Specific Procs
obj
	//Projectile Specific Procs
	projectile

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
				O:TakeDamage(src.damage,src.owner)
				del src
			else if(isobj(O)) del src //If we hit an object, delete the arrow
			//else if(isturf(O)) ;//If we hit obstructing turf...
			del src