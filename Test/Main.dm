//This file rewritten
world
	name = "Alpha"
	mob=/mob/Player	//Configure the mob type to create when players log in.
	fps = 25		// 25 frames per second
	icon_size = 32	// 32x32 icon size by default
	view = 6		// show up to 6 tiles outward from center (13x13 view)

obj //defines global properties of obj
	step_size = 8


mob
	step_size = 8 //global step size for all mobs

	Stat()
		statpanel("[src]'s stats") //creates stat panel
		stat("Health:","[src.HP]/[src.MaxHP]")
		stat("Strength:","[src.Str]")
		stat("Defense:","[src.Def]")
		statpanel("Inventory",contents) //creates inventory panel

	Player //defines player info
		icon='knight.dmi'
		icon_state="Player"
		Bodtype="Hero"
		AttackRate=5

area //defines areas
	dark
		luminosity = 0