/*
Attempting to make torches change usr luminocity when wielded.
*/
obj
	var
		wield = 0 //1=Yes, 0=No.
		/*ghtsource

	lightsource //lightsources
		lightsource = 1 //declares item a lightsource
		var //lightsource specific variables.
			lit //1=Lit 0=Not lit
			licon //lit icon
			uicon //unlit icon

	proc
		light()
			if (src.lit==1)
				usr.luminosity = 0
				usr << "You extinguish the [src]."
				src.icon = src.uicon
				src.lit = 0
			else
				usr.luminosity = 3
				usr << "You light the [src]."
				src.icon = src.licon
				src.lit = 1

	Torch //torch
		licon = Torch_Lit.dmi
		uicon = Torch_Unlit.dmi
		luminosity = 3
		pickup = 1
		wield = 1
		lit = 1
		verb //torch specific verbs !LEAVE HERE!
			Use_Torch()
				light()

/*
Need verbs named wield/unequip - verbs call procs which applies changes to usr.
verbs should apply to all obj that can be wielded (need var)
*/
	verb
		Wield()
			if(src.wield==1)
				if(src.lightsource==1)
					usr.luminosity = src.luminocity+1*/

	weapon
		Sword
			icon = 'SSwordinvo.dmi'
			pickup = 1
			wield = 1
			density=1

	armor
		Wooden_Shield
			icon = 'Wooden Shield.dmi'
			pickup = 1
			wield = 1
			density = 1