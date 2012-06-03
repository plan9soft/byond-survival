obj

/*
Need verbs named wield/unequip - verbs call procs which applies changes to usr.
verbs should apply to all obj that can be wielded (need var)
*/
	var
		equipped = 0

	weapon
		verb
			Equip()
				if(melee==1)
					if(src.equipped==0)
						usr.Str=10+src.strength
						src.equipped = 1
						usr<<"You equip a [src]."
					else
						usr<<"[src] is already equipped"

			Unequip()
				if(melee==1)
					if(src.equipped==0)
						usr<<"[src] is not yet equipped"
					else
						usr.Str=10
						src.equipped = 0
						usr<<"You unequip the [src]."

		var
			strength
			melee = 0

		Sword
			icon = 'SSwordinvo.dmi'
			pickup = 1
			melee = 1
			strength = 2
			density=1

	armor
		verb
			Equip()
				if(shield==1)
					if(equipped==0)
						usr.Def=5+src.defense
						src.equipped = 1
						usr<<"You equip a [src]."
					else
						usr<<"[src] is already equipped"

			Unequip()
				if(shield==1)
					if(src.equipped==0)
						usr<<"[src] is not yet equipped"
					else
						usr.Def=5
						src.equipped = 0
						usr<<"You unequip the [src]."

		var
			defense
			shield = 0

		Wooden_Shield
			icon = 'Wooden Shield.dmi'
			pickup = 1
			shield = 1
			defense = 2
			density = 1

/*
Attempting to make torches change usr luminocity when wielded.
	var
		lightsource

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
				light()*/