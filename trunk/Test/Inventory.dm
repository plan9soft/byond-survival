mob
	Entered(atom/movable/thing) // Something has been added to my contents (inventory), so update my inventory display.
		UpdateInventory()

	Exited(atom/movable/thing) // Something has been removed from my contents (inventory), so update my inventory display.
		UpdateInventory()

	proc
		UpdateInventory() //updates inventory panel
			var
				item_count = 0
			winset(src, "inventory", "current-cell=1,1")
			src << output("Inventory\n(Right click an item for more options)", "inventory")
			for(var/obj/O in src)
				item_count++
				winset(src, "inventory", "current-cell=1,[item_count+1]")
				src << output(O, "inventory")
			winset(src, "inventory", "cells=1x[item_count+1]")