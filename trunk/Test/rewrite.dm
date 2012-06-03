obj

/*
Need verbs named wield/unequip - verbs call procs which applies changes to usr.
verbs should apply to all obj that can be wielded (need var)
*/
	weapon
		verb
			Wield_Weapon()
				if(melee==1)
					usr.Str=usr.Str+src.strength
					usr<<"You equip a [src]."

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
			Wield_Armor()
				if(shield==1)
					usr.Def=usr.Def+src.defense
					usr<<"You equip a [src]."

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