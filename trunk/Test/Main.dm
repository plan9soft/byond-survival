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

	Player //defines player info
		icon='knight.dmi'
		icon_state="Player"
		Bodtype="Hero"
		AttackRate=5

	Login() //login related
		if(src.LoadProc())
			world<<"[src] has Returned"
		else
			src.loc=locate(5,5,1)
			world<<"[src] has Logged In"

	Logout() //logout related
		world<<"[src] has Logged Out"
		src.SaveProc()
		del src

	var
		HP=100 //Current Hitpoints.
		MaxHP=100 //Max HP
		Str=10 //Melee damage delt
		Def=5 //Incoming damage is reduced by this much.
		Bodtype //This is the mob's body type. The sound played when this mob is hit depends on their body type.
		AttackRate=6 //1/10ths of seconds between attacks.
		AttackDelay //Used to determine when mob can next attack. Leave undefined!
		AI //The AI that this mob will use.

area //defines areas
	dark
		luminosity = 0

	outside

	inside