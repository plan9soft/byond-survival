//Directional Density.
//Lets us walk some directions on tiles, but not others
//
// See this thread for more details
// http://www.byond.com/forum/?post=791175
//
// The system uses bitflags. See this for more details
//http://files.byondhome.com/UnknownPerson/bitflags.html

turf
	Enter(var/atom/movable/O) //Runs when we TRY and enter a new tile
		if(src.density==1) //If density is 1, don't even try moving on
			return 0
		else
			//If we're trying to enter/exit from an illegal direction
			if(O.dir & src.BlockedEntry || O.dir & O.loc.BlockedExit)
				return 0 //Then kill the movement.
			else
				return 1

//These variables are used in the directional density system.
atom
	var
		BlockedEntry = 0
		BlockedExit = 0

