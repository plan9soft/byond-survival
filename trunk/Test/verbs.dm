mob/verb
	Say(t as text)
		view() <<"[src] says: [t]"

	OOC_chat(t as text)
		world<<"<b>[src]:</b> [t]"

	Who()
		var/counter=0
		for(var/mob/Player/M in world)
			counter+=1
			src<<"[M]"
		src<<"<b>[counter] players online"

	//The Attack action
	Attack()
		if(src.AttackDelay<world.time) //First, we check the clock to see if we can attack again.
			flick("Attack",src)
			src.AttackDelay=world.time+AttackRate //Add AttackRate to the current time, we can't attack again till that is past.
			for(var/mob/M in get_step(src,src.dir))
				if(src!=M && M.Attackable==1) //If the Target IS NOT the Attacker AND Target IS attackable.
					var/Damage=max(0,src.Str-M.Def)
					M.TakeDamage(Damage,src)
		else
			return

	//The Action verb.
	//Checks each mob nearby
	//Does any interaction applicable.
	Action()//Filling in the paren means we need to provide an argument before the verb will execute. Hence the old drop down list.
		for(var/mob/objects/e in get_step(src,src.dir))//Find a mob that is directly infront of us
			if(e.Pushable==1) // Check if the target is pushable.
				walk(e,usr.dir,0,4) //The mob then walks in the direction the usr is facing.
				sleep(3.5) //Give the mob time to walk
				walk(e,0,0,0) //The mob then halts





//change name command
mob/verb/set_name(N as text)
	set desc = "(\"new name\") Change your name."
	name = N