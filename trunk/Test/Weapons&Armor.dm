obj
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
			strength //amount usr.Str increases by
			melee = 0 //melee weapon toggle
			ranged = 0 //ranged weapon toggle

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
			defense //amount usr.Def increases by
			shield = 0