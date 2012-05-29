mob/verb
	//The Generic "Interact" verb
	Action()
		for(var/obj/e in get_step(src,src.dir))//Find an object that is directly infront of us
			if(e.Pushable==1) // Check if the target is pushable.
				walk(e,usr.dir,0,4) //The mob then walks in the direction the usr is facing.
				sleep(3.5) //Give the mob time to walk
				walk(e,0,0,0) //The mob then halts

	//The Attack action
	Attack()
		if(src.AttackDelay<world.time) //First, we check the clock to see if we can attack again.
			flick("Attack",src)
			src.AttackDelay=world.time+AttackRate //Add AttackRate to the current time, we can't attack again till that is past.
			for(var/mob/M in get_step(src,src.dir))
				if(src!=M)//Make sure the src isn't attacking itself.
					var/Damage=max(0,src.Str-M.Def)
					M.TakeDamage(Damage,src)
		else
			return

	//Out of Character chat
	OOC_chat(t as text)
		world<<"<b>[src]:</b> [t]"

	//In Character chat
	Say(t as text)
		view() <<"[src] says: [t]"

	//Ranged Attack verb
	Shoot()
		if(src.AttackDelay<world.time) //First, we check the clock to see if we can attack again.
			flick("Attack",src)
			src.AttackDelay=world.time+AttackRate //Add AttackRate to the current time, we can't attack again till that is past.
			var/obj/projectile/Arrow/P = new(null,usr)
			walk(P,P.dir,0)

	//change name command
	set_name(N as text)
		set desc = "(\"new name\") Change your name."
		name = N

	//Says how many players are online.
	Who()
		var/counter=0
		for(var/mob/Player/M in world)
			counter+=1
			src<<"[M]"
		src<<"<b>[counter] players online"