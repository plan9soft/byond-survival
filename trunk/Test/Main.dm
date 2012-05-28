//This file rewritten
world
	name = "Alpha"
	mob=/mob/Player
	fps = 25		// 25 frames per second
	icon_size = 32	// 32x32 icon size by default
	view = 6		// show up to 6 tiles outward from center (13x13 view)

obj //defines global properties of obj
	step_size = 8

mob
	step_size = 8 //global step size for all mobs

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

	Player //defines player info
		icon='knight.dmi'
		icon_state="Player"
		Bodtype="Hero"

area //defines areas
	dark
		luminosity = 0