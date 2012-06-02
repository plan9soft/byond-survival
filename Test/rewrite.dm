/*
Attempting to make torches change usr luminocity when wielded.
*/
obj
	var
		wield = 0 //1=Yes, 0=No.
		lightsource

	lightsource //lightsources
		var //lightsource specific variables.
			lit //1=Lit 0=Not lit
		lightsource = 1 //declares item a lightsource

		Torch //torch
			icon = 'torchlit.dmi'
			luminosity = 3
			pickup = 1
			wield = 1
			lit = 1
			verb //torch specific verbs !LEAVE HERE!
				Use_Torch()
					if (lit==1)
						luminosity = 0
						usr << "You extinguish the torch."
						icon = 'torch_un.dmi'
						lit = 0
					else
						luminosity = 3
						usr << "You light the torch."
						icon = 'torchlit.dmi'
						lit = 1

/*
Need verbs named wield/unequip - verbs call procs which applies changes to usr.
verbs should apply to all obj that can be wielded (need var)
*/
	verb
		Wield()
			if(src.wield==1)
				if(src.lightsource==1)
					usr.luminosity = src.luminocity+1