obj
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