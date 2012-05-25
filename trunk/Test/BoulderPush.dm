//This file contains all the code needed for the Boulder Push mechanic.

mob/objects //Define our boulder object
    Boulder
        icon='Boulder.dmi'

mob

	// Note that in this method we will move the object by pixels. That way
	// we don't get a choppy push animation.
	// mob/object/e is the object in question
	// tileOffset is the amount of tiles you want to push the enemy
	// pixelOffset is the amount of pixels you want to move the enemy by to reach
	// its tile goal.

	proc/PushObject(mob/objects/e, tileOffset, pixelOffset)
		var/static/step = 0 			// How far we have moved (not in pixels).
		var/static/pixel_step = 0		// How far we have moved in pixels.

		pixel_step += pixelOffset		// Update the amount of pixel movement.

		// Here we check the tile offset. We only want to move the player by 1 tile.
		if (tileOffset == 0)
			step++
		else if(32 - pixel_step <= 0)
			step++
			pixel_step = 0

		// Here we'll just wait 1/10 of a second before we call the function again. Also,
		// we base the movement of the enemy from our direction.
		spawn(1)
			if (step != tileOffset)
				switch (src.dir)
					if (NORTH)
						e.pixel_y += pixelOffset
					if (SOUTH)
						e.pixel_y -= pixelOffset
					if (EAST)
						e.pixel_x += pixelOffset
					if (WEST)
						e.pixel_x -= pixelOffset
				PushObject(e, tileOffset, pixelOffset)
			else
				switch (src.dir)
					if (NORTH)
						e.loc = locate(e.loc.x, e.loc.y+step, 1)
					if (SOUTH)
						e.loc = locate(e.loc.x, e.loc.y-step, 1)
					if (EAST)
						e.loc = locate(e.loc.x+step, e.loc.y, 1)
					if (WEST)
						e.loc = locate(e.loc.x-step, e.loc.y, 1)

				// We want to reset these variables. The pixel_x and pixel_y distort the
				// location of the character and we want to make sure we set them back to 0.
				// Furthermore we want to set step and pixel_step back to 0 since they are
				// static variables.
				e.pixel_x = 0
				e.pixel_y = 0
				step = 0
				pixel_step = 0


//This is the actual verb that does the pushing.
mob/verb
	PushBoulder(mob/objects/e)
		// Here we will move the object 1 tile at a rate of 4 pixels per 1/10 seconds.
		src.PushObject(e, 1, 4)