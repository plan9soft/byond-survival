//Lists and defines all INTERACTABLE objects used in the game, and all Object specific procs
//Non-interactable objects are considered Turf and go in Enviroment.dm

obj //Global obj variables
	var
		pickup = 0 //1=Yes 0=No. Objects cannot be picked up by default

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
			verb  //berry specific verbs !LEAVE HERE!
				Eat_Berry()
					if (usr.HP < usr.MaxHP)
						usr.HP = usr.HP + 5
						if (usr.HP > usr.MaxHP) //don't want to exceed MaxHP
							usr.HP = usr.MaxHP
						usr << "You eat a berry. It's pretty tasty!"
						del src
					else if (usr.HP >= usr.MaxHP)
						usr << "You don't feel hungry right now after all..."
