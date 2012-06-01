//Lists and defines all INTERACTABLE objects used in the game, and all Object specific procs
//Non-interactable objects are considered Turf and go in Enviroment.dm

obj  //Interactable Objects
	Pushable_Boulder //Pushable Boulder
		icon='Boulder.dmi'
		density=1
		Pushable=1 //Boulders are pushable.

	projectile //Projectiles
		Arrow //Arrow Projectile. Arrows use default range and damage.
			icon = 'Arrow.dmi'
			density = 1

	lightsource //lightsources
		Torch //torch
			icon = 'torchlit.dmi'
			luminosity = 3
			pickup = 1
			verb //torch specific verbs !LEAVE HERE!
				Use_Torch()
					if (torch_lit==1)
						luminosity = 0
						usr << "You extinguish the torch."
						icon = 'torch_un.dmi'
						torch_lit = 0
					else
						luminosity = 3
						usr << "You light the torch."
						icon = 'torchlit.dmi'
						torch_lit = 1

	food //foods
		Berry //berry
			icon = 'Berrys.dmi'
			pickup = 1
			healing = 5
			verb  //berry specific verb !LEAVE HERE!
				Eat_Berry()
					Eat()

		Acorns //acorns
			icon = 'Acorns.dmi'
			pickup = 1
			healing = 2
			verb //acorn specific verb !LEAVE HERE!
				Eat_Acorns()
					Eat()