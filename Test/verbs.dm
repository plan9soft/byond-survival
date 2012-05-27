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
		flick("Attack",src)
		for(var/mob/M in get_step(src,src.dir))
			if(src!=M && M.Attackable==1) //If the Target IS NOT the Attacker AND Target IS attackable.
				var/Damage=max(0,src.Str-M.Def)
				M.TakeDamage(Damage,src)

	//The Push Boulder verb
	PushBoulder()//Filling in the paren means we need to provide an argument before the verb will execute. Hence the old drop down list.
		for(var/mob/objects/e in get_step(src,src.dir))//Find a mob that is directly infront of us
			if(e.Pushable==1) // Check if the target is pushable.
				src.PushObject(e, 1, 4) // Here we will move the object 1 tile at a rate of 4 pixels per 1/10 seconds.





//change name command
mob/verb/set_name(N as text)
	set desc = "(\"new name\") Change your name."
	name = N