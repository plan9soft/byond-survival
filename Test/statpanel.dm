mob/Stat()
	statpanel("[src]'s stats")
	stat("Health:","[src.HP]/[src.MaxHP]")
	stat("Strength:","[src.Str]")
	stat("Defense:","[src.Def]")
	/* Following lines overwrite the Stats Pannel with an Inventory
	Stat()
		statpanel("Inventory",contents)
	*/