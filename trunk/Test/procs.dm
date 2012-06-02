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
		UpdateInventory() //updates inventory panel
			var
				item_count = 0
			winset(src, "inventory", "current-cell=1,1")
			src << output("Inventory\n(Right click an item for more options)", "inventory")
			for(var/obj/O in src)
				item_count++
				winset(src, "inventory", "current-cell=1,[item_count+1]")
				src << output(O, "inventory")
			winset(src, "inventory", "cells=1x[item_count+1]")

obj //Object Specific Procs
	lightsource //Create a new class of objects, "lightsource". For things like wall lanterns, etc.

	food //create a new class of objects, "food". for things like berries, ect

		proc  //proc to make food heal when eaten
			Eat()
				if (usr.HP < usr.MaxHP-src.healing) //only trigger healing if low health
					usr.HP = usr.HP + src.healing
					usr << "You eat a [src]. It's pretty tasty!"
					Move(usr.loc) //drop item to force inventory refresh
					del src
				else if (usr.HP >= usr.MaxHP-src.healing && usr.HP != usr.MaxHP) //don't want to exceed MaxHP
					usr.HP = usr.MaxHP
					usr << "You eat a [src]. It's pretty tasty!"
					Move(usr.loc) //drop item to force inventory refresh
					del src
				else
					usr << "You don't feel hungry right now after all..."