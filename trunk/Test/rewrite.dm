obj
	food
		var
			healing

		proc  //berry specific verbs !LEAVE HERE!
			Eat()
				if (usr.HP < usr.MaxHP-src.healing)
					usr.HP = usr.HP + src.healing
					usr << "You eat a [src]. It's pretty tasty!"
					del src
				else if (usr.HP >= usr.MaxHP-src.healing && usr.HP != usr.MaxHP) //don't want to exceed MaxHP
					usr.HP = usr.MaxHP
					usr << "You eat a [src]. It's pretty tasty!"
					del src
				else
					usr << "You don't feel hungry right now after all..."

		Acorns //acorns
			icon = 'Acorns.dmi'
			pickup = 1
			healing = 2
			verb
				Eat_Acorns()
					Eat()

