//Directional Density.
//Lets us walk some directions on tiles, but not others

turf
	Enter(atom/movable/O)
		if(get_dir(src,O) == src.CantEnterFrom)
			return 0
		else
			return 1

	Exit(atom/movable/O)
		if(get_dir(src,O) == src.CantExitFrom)
			return 0
		else
			return 1

turf
	var
		CantEnterFrom
		CantExitFrom

//Turf Defenitions
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
	Cave/CavefloorW
		icon = 'Cave floor W.dmi'
	Cave/CavefloorC
		icon = 'Cave floor C.dmi'
	Cave/ImpassibleFloor
		icon = 'Cave floor C.dmi'
		density = 1
	Cave/CavefloorE
		icon = 'Cave floor E.dmi'
	Cave/CavefloorW2
		icon = 'Cave floor W2.dmi'
	Cave/CavefloorC2
		icon = 'Cave floor C2.dmi'
	Cave/CavefloorE2
		icon = 'Cave floor E2.dmi'
	Cave/CaveWallW
		icon = 'Cave wall W.dmi'
		density = 1
	Cave/CaveWallC
		icon = 'Cave wall C.dmi'
		density = 1
	Cave/CaveWallE
		icon = 'Cave wall E.dmi'
		density = 1
	Cave/CaveWallSW
		icon = 'Cave wall SW.dmi'
		density = 1
	Cave/CaveWallS
		icon = 'Cave wall S.dmi'
		density = 1
	Cave/CaveWallSE
		icon = 'Cave wall SE.dmi'
		density = 1
	Cave/CaveWallNE
		icon = 'Cave wall NE.dmi'
		density = 1
	Cave/CaveWallN
		icon = 'Cave wall N.dmi'
		density = 1
	Cave/CaveWallNW
		icon = 'Cave wall NW.dmi'
		density = 1
	Cave/CaveWallTop
		icon = 'Cave wall top.dmi'
		density = 1
	Cave/CaveWallMid
		icon = 'Cave wall middle.dmi'
		density = 1
	Cave/CaveWallBot
		icon = 'Cave wall bottom.dmi'
		density = 1

	Cave/CaveRimN
		icon = 'Cave wall rim N.dmi'
	Cave/CaveRimE
		icon = 'Cave wall rim E.dmi'
	Cave/CaveRimSW
		icon = 'Cave wall rim SW.dmi'
	Cave/CaveRimS
		icon = 'Cave wall rim S.dmi'
	Cave/CaveRimSE
		icon = 'Cave wall rim SE.dmi'
	Cave/CaveRimNE
		icon = 'Cave wall rim NE.dmi'
	Cave/CaveRimW
		icon = 'Cave wall rim W.dmi'
	Cave/CaveRimNW
		icon = 'Cave wall rim NW.dmi'
	Cave/CaveRimSW2
		icon = 'Cave wall rim SW2.dmi'
	Cave/CaveRimSE2
		icon = 'Cave wall rim SE2.dmi'
	Cave/CaveRimNW2
		icon = 'Cave wall rim NW2.dmi'
	Cave/CaveRimNE2
		icon = 'Cave wall rim NE2.dmi'

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

	Cave2/NewCaveWallS
		icon = 'New cave wall S.dmi'
	Cave2/NewCaveWallSW
		icon = 'New cave wall SW.dmi'
	Cave2/NewCaveWallSE
		icon = 'New cave wall SE.dmi'
	Cave2/NewCaveWallW
		icon = 'New cave wall W.dmi'
		CantExitFrom = WEST
	Cave2/NewCaveWallC
		icon = 'New cave wall C.dmi'
	Cave2/NewCaveWallE
		icon = 'New cave wall E.dmi'
		CantExitFrom = EAST
	Cave2/NewCaveWallN
		icon = 'New cave wall N.dmi'
	Cave2/NewCaveWallNE
		icon = 'New cave wall NE.dmi'
	Cave2/NewCaveWallNW
		icon = 'New cave wall NW.dmi'
	Cave2/NewCaveWallRimW
		icon = 'New cave wall rim W.dmi'
		CantExitFrom = WEST
	Cave2/NewCaveWallRimE
		icon = 'New cave wall rim E.dmi'
		CantExitFrom = EAST
	Cave2/NewCaveWallN2
		icon = 'New cave wall N2.dmi'
		CantExitFrom = NORTH
	Cave2/NewCaveWallNE2
		icon = 'New cave wall NE2.dmi'
	Cave2/NewCaveWallNW2
		icon = 'New cave wall NW2.dmi'

	Cave2/Stairs1
		icon = 'Stairs1.dmi'
	Cave2/Stairs2
		icon = 'Stairs2.dmi'
	Cave2/Stairs3
		icon = 'Stairs3.dmi'
	Cave2/Stairs4
		icon = 'Stairs4.dmi'
	Cave2/Stairs5
		icon = 'Stairs5.dmi'


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