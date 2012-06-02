//Lists and defines all INTERACTABLE objects, object specific procs
//and object specific verbs.
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

	lightsource
		Torch //torch
			icon = 'Torch Unlit.dmi'
			luminosity = 0
			lit = 0
			pickup = 1
			verb //torch specific verbs !LEAVE HERE!
				Use_Torch()
					if (lit==1)
						usr.luminosity = 0
						luminosity = 0
						usr << "You extinguish the torch."
						icon = 'Torch Unlit.dmi'
						lit = 0
					else
						usr.luminosity = 3
						luminosity = 3
						usr << "You light the torch."
						icon = 'Torch Lit.dmi'
						lit = 1
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