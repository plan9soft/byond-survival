mob
	verb
		Action() //The Generic "Interact" verb
			for(var/obj/e in get_step(src,src.dir))//Find an object that is directly infront of us
				if(e.Pushable==1) // Check if the target is pushable.
					walk(e,usr.dir,0,4) //The mob then walks in the direction the usr is facing.
					sleep(3.5) //Give the mob time to walk
					walk(e,0,0,0) //The mob then halts
				if(e.pickup==1) // Check if the target can be picked up.
					e.Get() //Pick up the object

		OOC_chat(t as text) //Out of Character chat
			world<<"<b>[src]:</b> [t]"

		Say(t as text) //In Character chat
			view() <<"[src] says: [t]"

		Set_name(N as text) //change name command
			set desc = "(\"new name\") Change your name."
			name = N

		Who() //Says how many players are online.
			var/counter=0
			for(var/mob/Player/M in world)
				counter+=1
				src<<"[M]"
			src<<"<b>[counter] players online"

obj
	verb
		Get()
			set src in oview(1) //You have to be standing next to it
			if(src.pickup == 1)
				usr << "You get [src]"
				Move(usr) //Put it in the user's contents.

		Drop()
			if(src.equipped==1)
				usr <<"You cannot drop the [src]. Please unequip first"
			else
				usr << "You drop [src]"
				src.Move(usr.loc)