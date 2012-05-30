//move to objects.dm/Interactable Objects when complete
obj
	lightsource/Torch //torch
		icon = 'torchlit.dmi'
		luminosity = 3
		pickup = 1
		verb //torch specific verbs !LEAVE HERE!
			Use_Torch()
				usr << "You use the torch."
				/* if (torch_lit = 1)
					luminosity = 0
					usr << "You extinguish the torch."
					icon = 'torch_un.dmi'
					torch_lit = 0
				else
					luminosity = 3
					usr << "You light the torch."
					icon = 'torchlit.dmi'
					var torch_lit = 1 */

	Berry //berry
		icon = 'Berrys.dmi'
		pickup = 1
		verb  //berry specific verbs !LEAVE HERE!
			Eat_Berry()
				usr << "You eat a berry. It's pretty tasty!"
				/*if (mob/Player.HP < mob/Player.MaxHP)
					mob/Player.HP + 5
					if (mob/Player.HP > mob/Player.MaxHP)
						mob/Player.HP == mob/Player.MaxHP
					usr << "You eat a berry. It's pretty tasty!"
					del src*/

obj //move to objects.dm when complete
	verb
		get()
			set src in oview(1)     //You have to be standing next to it
			if(src.pickup == 1)
				usr << "You get [src]"
				Move(usr)		//Put it in the user's contents.

		drop()
			usr << "You drop [src]"
			Move(usr.loc)

	var
		pickup = 0 //1=Yes 0=No. Objects cannot be picked up by default/

obj
	lightsource //Create a new class of objects, "lightsource". For things like wall lanterns, etc.
		var //lightsource specific variables.
			torch_lit = 1 //1=Lit 0=Not lit