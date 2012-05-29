//move to objects.dm/Interactable Objectswhen complete
obj
	Torch //torch
	icon = 'torchlit.dmi'
	luminosity = 3
	verb //torch specific verbs !LEAVE HERE!
		Use_Torch()
			set src in view(1)
			if (luminosity = 3)
				luminosity = 0
				usr << "You extinguish the torch."
				icon = 'torch_un.dmi'
			else
				luminosity = 3
				usr << "You light the torch."
				icon = 'torchlit.dmi'

	Berry //berry
	icon = 'blue mob.dmi'
	verb  //berry specific verbs !LEAVE HERE!
		Eat_Berry()
			if (mob/Player.HP < mob/Player.MaxHP)
				mob/Player.HP + 5
				if (mob/Player.HP > mob/Player.MaxHP)
					mob/Player.HP == mob/Player.MaxHP
				usr << "You eat a berry. It's pretty tasty!"
				del src