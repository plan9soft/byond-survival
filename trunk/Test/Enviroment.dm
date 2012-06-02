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

//Turf Defenitions
//When you add turf, PLEASE add illegal entry and exit locations
//CantExitFrom and CantEnterFrom
//If you don't want the player to be able to move enter/exit from a certain location
//See the above Enter() proc and vars.dm
turf

	Start
		icon = 'Start.dmi'
	Water
		icon = 'Calm water.dmi'
		density = 1
	Grass/Grass
		icon = 'Grass.dmi'
	Grass/GrassWaterN
		icon = 'Grass water N.dmi'
	Grass/GrassWaterE
		icon = 'Grass water E.dmi'
	Grass/GrassWaterW
		icon = 'Grass water S.dmi'
		density = 1
	Grass/GrassWaterS
		icon = 'Grass water W.dmi'
	Grass/GrassWaterNE
		icon = 'Grass water NE.dmi'
	Grass/GrassWaterSE
		icon = 'Grass water SE.dmi'
	Grass/GrassWaterSW
		icon = 'Grass water SW.dmi'
	Grass/GrassWaterNW
		icon = 'Grass water NW.dmi'
	Grass/GrassWaterNE2
		icon = 'Grass water NE 2.dmi'
	Grass/GrassWaterSE2
		icon = 'Grass water SE 2.dmi'
	Grass/GrassWaterSW2
		icon = 'Grass water SW 2.dmi'
	Grass/GrassWaterNW2
		icon = 'Grass water NW 2.dmi'
	Dirt/Dirt
		icon = 'Dirt.dmi'
	Dirt/DirtWaterN
		icon = 'Dirt water N.dmi'
	Dirt/DirtWaterE
		icon = 'Dirt water E.dmi'
	Dirt/DirtWaterW
		icon = 'Dirt water S.dmi'
	Dirt/DirtWaterS
		icon = 'Dirt water W.dmi'
	Dirt/DirtWaterNE
		icon = 'Dirt water NE.dmi'
	Dirt/DirtWaterSE
		icon = 'Dirt water SE.dmi'
	Dirt/DirtWaterSW
		icon = 'Dirt water SW.dmi'
	Dirt/DirtWaterNW
		icon = 'Dirt water NW.dmi'
	Dirt/DirtWaterNE2
		icon = 'Dirt water NE 2.dmi'
	Dirt/DirtWaterSE2
		icon = 'Dirt water SE 2.dmi'
	Dirt/DirtWaterSW2
		icon = 'Dirt water SW 2.dmi'
	Dirt/DirtWaterNW2
		icon = 'Dirt water NW 2.dmi'
	DirtgrassN
		icon = 'Dirt grass N.dmi'
	DirtgrassE
		icon = 'Dirt grass E.dmi'
	DirtgrassW
		icon = 'Dirt grass S.dmi'
	DirtgrassS
		icon = 'Dirt grass W.dmi'
	DirtgrassNE
		icon = 'Dirt grass angle NE.dmi'
	DirtgrassSE
		icon = 'Dirt grass angle SE.dmi'
	DirtgrassSW
		icon = 'Dirt grass angle SW.dmi'
	DirtgrassNW
		icon = 'Dirt grass angle NW.dmi'
	Bush1
		icon = 'Bush 1.dmi'
	Bush2
		icon = 'Bush 2.dmi'
		density = 1
	Bush3
		icon = 'Bush 3.dmi'
		density = 1

	Grassflower1
		icon = 'Grass flower 1.dmi'
	Grassflower2
		icon = 'Grass flower 2.dmi'

	Cave/CavefloorC
		icon = 'Cave floor C.dmi'
	Cave/ImpassibleFloor
		icon = 'Cave floor C.dmi'
		density = 1
	Cave/CaveWallS
		icon = 'cave wall S.dmi'
		density = 1
	Cave/CaveWallSW
		icon = 'cave wall SW.dmi'
		density = 1
	Cave/CaveWallSE
		icon = 'cave wall SE.dmi'
		density = 1
	Cave/CaveWallW
		icon = 'cave wall W.dmi'
		density = 1
	Cave/CaveWallC
		icon = 'cave wall C.dmi'
		density = 1
	Cave/CaveWallE
		icon = 'cave wall E.dmi'
		density = 1
	Cave/CaveWallN
		icon = 'cave wall N.dmi'
		BlockedEntry = NORTH
		BlockedExit = SOUTH
	Cave/CaveWallNE
		icon = 'cave wall NE.dmi'
		BlockedEntry = WEST | NORTH
		BlockedExit = EAST | SOUTH
	Cave/CaveWallNW
		icon = 'cave wall NW.dmi'
		BlockedEntry = NORTH | EAST
		BlockedExit = SOUTH | WEST
	Cave/CaveWallRimW
		icon = 'cave wall rim W.dmi'
		BlockedEntry = EAST
		BlockedExit = WEST
	Cave/CaveWallRimE
		icon = 'cave wall rim E.dmi'
		BlockedEntry = WEST
		BlockedExit = EAST
	Cave/CaveWallRimN
		icon = 'cave wall N2.dmi'
		BlockedEntry = SOUTH
		BlockedExit = NORTH
	Cave/CaveWallRimNE
		icon = 'cave wall NE2.dmi'
		BlockedEntry = WEST | SOUTH
		BlockedExit = EAST | NORTH
	Cave/CaveWallRimNW
		icon = 'cave wall NW2.dmi'
		BlockedEntry = EAST | SOUTH
		BlockedExit = WEST | NORTH
	Cave/Stairs1
		icon = 'Stairs1.dmi'
	Cave/Stairs2
		icon = 'Stairs2.dmi'
	Cave/Stairs3
		icon = 'Stairs3.dmi'
	Cave/Stairs4
		icon = 'Stairs4.dmi'
	Cave/Stairs5
		icon = 'Stairs5.dmi'

	Grass/GrasscliffNW
		icon = 'Grass cliff NW.dmi'
		density = 1
	Grass/GrasscliffN
		icon = 'Grass cliff N.dmi'
		density = 1
	Grass/GrasscliffNE
		icon = 'Grass cliff NE.dmi'
		density = 1
	Grass/GrasscliffW
		icon = 'Grass cliff W.dmi'
		density = 1
	Grass/GrasscliffC
		icon = 'Grass cliff C.dmi'
		density = 1
	Grass/GrasscliffE
		icon = 'Grass cliff E.dmi'
		density = 1
	Grass/GrasscliffSW
		icon = 'Grass cliff SW.dmi'
		density = 1
	Grass/GrasscliffS
		icon = 'Grass cliff S.dmi'
		density = 1
	Grass/GrasscliffSE
		icon = 'Grass cliff SE.dmi'
		density = 1

	Brick/BrickFloor1
		icon = 'Brick floor 1.dmi'
	Brick/BrickFloor2
		icon = 'Brick floor 2.dmi'
	Brick/BrickWallC
		icon = 'Brick wall C.dmi'
		density = 1
		opacity = 1
	Brick/BrickWallE
		icon = 'Brick wall E.dmi'
	Brick/BrickWallN
		icon = 'Brick wall N.dmi'
	Brick/BrickWallNE
		icon = 'Brick wall NE.dmi'
	Brick/BrickWallNE2
		icon = 'Brick wall NE2.dmi'
	Brick/BrickWallNW
		icon = 'Brick wall NW.dmi'
	Brick/BrickWallNW2
		icon = 'Brick wall NW2.dmi'
	Brick/BrickWallS
		icon = 'Brick wall S.dmi'
	Brick/BrickWallSE
		icon = 'Brick wall SE.dmi'
	Brick/BrickWallSE2
		icon = 'Brick wall SE2.dmi'
	Brick/BrickWallW
		icon = 'Brick wall W.dmi'
	Brick/BrickWallSW
		icon = 'Brick wall SW.dmi'
	Brick/BrickWallSW2
		icon = 'Brick wall SW2.dmi'
	Filler
		icon = 'Filler.dmi'
		density = 1
		opacity = 1


obj/Bigrock
	icon = 'Big rock.dmi'
	density = 1
obj/plants/Treestump
	icon = 'Tree stump.dmi'
	density = 1
obj/plants/Treestump1
	icon = 'Tree stump 1.dmi'
	density = 1
obj/plants/Treestump2
	icon = 'Tree stump 2.dmi'
	density = 1
obj/plants/Tree2topE
	icon = 'Tree 2 top E.dmi'
	layer = MOB_LAYER+1  //overhead
obj/plants/Tree2topN
	icon = 'Tree 2 top N.dmi'
	layer = MOB_LAYER+1  //overhead
obj/plants/Tree2topNE
	icon = 'Tree 2 top NE.dmi'
	layer = MOB_LAYER+1  //overhead
obj/plants/Tree2topNW
	icon = 'Tree 2 top NW.dmi'
	layer = MOB_LAYER+1  //overhead
obj/plants/Tree2topS
	icon = 'Tree 2 top S.dmi'
	layer = MOB_LAYER+1  //overhead
obj/plants/Tree2topSE
	icon = 'Tree 2 top SE.dmi'
	layer = MOB_LAYER+1  //overhead
obj/plants/Tree2topSW
	icon = 'Tree 2 top SW.dmi'
	layer = MOB_LAYER+1  //overhead
obj/plants/Tree2topW
	icon = 'Tree 2 top W.dmi'
	layer = MOB_LAYER+1  //overhead
obj/plants/Treecenter1
	icon = 'Tree center 1.dmi'
	layer = MOB_LAYER+1  //overhead
obj/plants/Treecenter2
	icon = 'Tree center 2.dmi'
	layer = MOB_LAYER+1  //overhead
obj/plants/TreetopN
	icon = 'Tree top N.dmi'
	layer = MOB_LAYER+1  //overhead
obj/plants/TreetopNE
	icon = 'Tree top NE.dmi'
	layer = MOB_LAYER+1  //overhead
obj/plants/TreetopNW
	icon = 'Tree top NW.dmi'
	layer = MOB_LAYER+1  //overhead
obj/plants/TreetopS
	icon = 'Tree top S.dmi'
	layer = MOB_LAYER+1  //overhead
obj/plants/TreetopSE
	icon = 'Tree top SE.dmi'
	layer = MOB_LAYER+1  //overhead
obj/plants/TreetopSW
	icon = 'Tree top SW.dmi'
	layer = MOB_LAYER+1  //overhead
obj/plants/TreetopW
	icon = 'Tree top W.dmi'
	layer = MOB_LAYER+1  //overhead
obj/plants/TreetopE
	icon = 'Tree top E.dmi'
	layer = MOB_LAYER+1  //overhead
obj/enemyspawner
	icon = 'Blue mob.dmi'