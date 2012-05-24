/*
	These are simple defaults for your project.
 */

world
	fps = 25		// 25 frames per second
	icon_size = 32	// 32x32 icon size by default

	view = 6		// show up to 6 tiles outward from center (13x13 view)


// Make objects move 8 pixels per tick when walking

mob
	step_size = 8

obj
	step_size = 8

mob
	icon = 'knight.dmi'
	Login()
		loc = locate(/turf/Start)

mob
	verb
		say(msg as text)
			world << "[usr] says, [msg]"

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


obj/torchlit
	icon = 'torchlit.dmi'
	luminosity = 3

obj/torchlit/verb/extinguish()
	set src in view(1)
	luminosity = 0

obj/torchlit/verb/light()
	set src in view(1)
	luminosity = 3

mob/verb/sexy_time()
	world << "[usr] sexes you up!"
	name = "sex"
	desc = "oh yeah baby!"

