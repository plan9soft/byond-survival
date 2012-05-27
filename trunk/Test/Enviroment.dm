world
	fps = 25		// 25 frames per second
	icon_size = 32	// 32x32 icon size by default

	view = 6		// show up to 6 tiles outward from center (13x13 view)


// Make objects move 8 pixels per tick when walking

mob
	step_size = 8

obj
	step_size = 8


area/dark
	luminosity = 0

turf

	Start
		icon = 'Start.dmi'
	Water
		icon = 'Calm water.dmi'
		density = 1
	grass
		icon = 'Grass.dmi'
	GrassWaterN
		icon = 'Grass water N.dmi'
	GrassWaterE
		icon = 'Grass water E.dmi'
	GrassWaterW
		icon = 'Grass water S.dmi'
		density = 1
	GrassWaterS
		icon = 'Grass water W.dmi'
	GrassWaterNE
		icon = 'Grass water NE.dmi'
	GrassWaterSE
		icon = 'Grass water SE.dmi'
	GrassWaterSW
		icon = 'Grass water SW.dmi'
	GrassWaterNW
		icon = 'Grass water NW.dmi'
	GrassWaterNE2
		icon = 'Grass water NE 2.dmi'
	GrassWaterSE2
		icon = 'Grass water SE 2.dmi'
	GrassWaterSW2
		icon = 'Grass water SW 2.dmi'
	GrassWaterNW2
		icon = 'Grass water NW 2.dmi'
	Dirt
		icon = 'Dirt.dmi'
	DirtWaterN
		icon = 'Dirt water N.dmi'
	DirtWaterE
		icon = 'Dirt water E.dmi'
	DirtWaterW
		icon = 'Dirt water S.dmi'
	DirtWaterS
		icon = 'Dirt water W.dmi'
	DirtWaterNE
		icon = 'Dirt water NE.dmi'
	DirtWaterSE
		icon = 'Dirt water SE.dmi'
	DirtWaterSW
		icon = 'Dirt water SW.dmi'
	DirtWaterNW
		icon = 'Dirt water NW.dmi'
	DirtWaterNE2
		icon = 'Dirt water NE 2.dmi'
	DirtWaterSE2
		icon = 'Dirt water SE 2.dmi'
	DirtWaterSW2
		icon = 'Dirt water SW 2.dmi'
	DirtWaterNW2
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
	Cavewall
		icon = 'Cave wall.dmi'
		density = 1
	Cavefloor
		icon = 'Cave floor.dmi'
	Cavefloor2
		icon = 'Cave floor 2.dmi'
	cavefloor3
		icon = 'Cave floor 3.dmi'
	GrasscliffNW
		icon = 'Grass cliff NW.dmi'
		density = 1
	GrasscliffN
		icon = 'Grass cliff N.dmi'
		density = 1
	GrasscliffNE
		icon = 'Grass cliff NE.dmi'
		density = 1
	GrasscliffW
		icon = 'Grass cliff W.dmi'
		density = 1
	GrasscliffC
		icon = 'Grass cliff C.dmi'
		density = 1
	GrasscliffE
		icon = 'Grass cliff E.dmi'
		density = 1
	GrasscliffSW
		icon = 'Grass cliff SW.dmi'
		density = 1
	GrasscliffS
		icon = 'Grass cliff S.dmi'
		density = 1
	GrasscliffSE
		icon = 'Grass cliff SE.dmi'
		density = 1

obj/Treestump
	icon = 'Tree stump.dmi'
	density = 1
obj/Treestump1
	icon = 'Tree stump 1.dmi'
	density = 1
obj/Treestump2
	icon = 'Tree stump 2.dmi'
	density = 1
obj/Tree2topE
	icon = 'Tree 2 top E.dmi'
	layer = MOB_LAYER+1  //overhead
obj/Tree2topN
	icon = 'Tree 2 top N.dmi'
	layer = MOB_LAYER+1  //overhead
obj/Tree2topNE
	icon = 'Tree 2 top NE.dmi'
	layer = MOB_LAYER+1  //overhead
obj/Tree2topNW
	icon = 'Tree 2 top NW.dmi'
	layer = MOB_LAYER+1  //overhead
obj/Tree2topS
	icon = 'Tree 2 top S.dmi'
	layer = MOB_LAYER+1  //overhead
obj/Tree2topSE
	icon = 'Tree 2 top SE.dmi'
	layer = MOB_LAYER+1  //overhead
obj/Tree2topSW
	icon = 'Tree 2 top SW.dmi'
	layer = MOB_LAYER+1  //overhead
obj/Tree2topW
	icon = 'Tree 2 top W.dmi'
	layer = MOB_LAYER+1  //overhead
obj/Treecenter1
	icon = 'Tree center 1.dmi'
	layer = MOB_LAYER+1  //overhead
obj/Treecenter2
	icon = 'Tree center 2.dmi'
	layer = MOB_LAYER+1  //overhead
obj/TreetopN
	icon = 'Tree top N.dmi'
	layer = MOB_LAYER+1  //overhead
obj/TreetopNE
	icon = 'Tree top NE.dmi'
	layer = MOB_LAYER+1  //overhead
obj/TreetopNW
	icon = 'Tree top NW.dmi'
	layer = MOB_LAYER+1  //overhead
obj/TreetopS
	icon = 'Tree top S.dmi'
	layer = MOB_LAYER+1  //overhead
obj/TreetopSE
	icon = 'Tree top SE.dmi'
	layer = MOB_LAYER+1  //overhead
obj/TreetopSW
	icon = 'Tree top SW.dmi'
	layer = MOB_LAYER+1  //overhead
obj/TreetopW
	icon = 'Tree top W.dmi'
	layer = MOB_LAYER+1  //overhead
obj/TreetopE
	icon = 'Tree top E.dmi'
	layer = MOB_LAYER+1  //overhead

obj/torchlit
	icon = 'torchlit.dmi'
	luminosity = 3

obj/torchlit/verb/extinguish()
	set src in view(1)
	luminosity = 0

obj/torchlit/verb/light()
	set src in view(1)
	luminosity = 3

obj/enemyspawner