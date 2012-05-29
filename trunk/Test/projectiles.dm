//This file contains the work in progress projectile system.
//default is not included in compile
//Don't move anything out of this file till it's all good to go.

//Define any extra mob variables we might need
//mob/var


//Define a skeleton archer guy
mob
	Enemies
		skele_archer
			icon='Skel archer.dmi'
			MaxHP=50
			Str=7
			Def=2
			Bodtype="Bone"
			AttackRate=10
			AI="Archer"

//Define the arrow projectile
obj/projectile/var
	maxrange=20
	damage=2
	mob/owner //The mob who fired the projectile

obj/projectile
	icon = 'Boulder.dmi'
	density = 1
	New(_loc,mob/_owner)
		if(_owner) //if an owner was specified...
			//src.dmg = max(_owner.Level * src.dmg,1) //dynamic dmg example
			//src.length = max(round(_owner.MaxMP / src.length),5) //dynamic length example
			src.dir = _owner.dir
			if(!src.loc) src.loc = get_step(_owner,_owner.dir) //if loc isn't set, initialize it.
			src.owner = _owner
	Move()
		src.maxrange-- //remove 1 from src.maxrange
		if(src.maxrange<=0) del src //if length is 0, delete the projectile
		return ..() //otherwise, continue on.

	Bump(atom/O) //Called when movement fails due to blockage. O is the blockage, src is the arrow.
		if(ismob(O)) //if O is a mob, deal damage then delete the arrow
			O:TakeDamage(src.damage,src.owner)
			del src
		else if(isobj(O)) del src //If we hit an object, delete the arrow
		//else if(isturf(O)) ;//If we hit obstructing turf...
		del src

	Arrow //Arrow
		icon_state = "arrow"

		damage=1.25 //low dmg..whatever

//Define the "Shoot" verb
mob/verb
	Shoot()
		var/obj/projectile/Arrow/P = new(null,usr)
		walk(P,P.dir,0)