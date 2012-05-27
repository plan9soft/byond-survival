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

	Attack()
		flick("Attack",src)
		for(var/mob/M in get_step(src,src.dir))
			var/Damage=max(0,src.Str-M.Def)
			//view(M)<<"[src] hit [M] for [Damage] Damage!"
			if(src!=M) //If the Target IS NOT the Attacker, do damage.
				M.TakeDamage(Damage,src)

//This is the verb that Pushes boulders.
mob/verb
	PushBoulder(mob/objects/e)
		// Check if the target is pushable.
		if(e.Pushable==1)
			src.PushObject(e, 1, 4) // Here we will move the object 1 tile at a rate of 4 pixels per 1/10 seconds.






//change name command
mob/verb/set_name(N as text)
	set desc = "(\"new name\") Change your name."
	name = N