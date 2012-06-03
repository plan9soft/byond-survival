obj //Object Specific Procs
	food //create a new class of objects, "food". for things like berries, ect

		var //food specific variables/
			healing //determine the amount of healing to be done

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