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
	CliffB
		icon = 'Cliff B.dmi'
		density = 1
	CliffM
		icon = 'Cliff M.dmi'
		density = 1
	CliffT
		icon = 'Cliff T.dmi'
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


//get and drop item commands
obj
	verb
		get()
			set src in usr.loc
			loc = usr
		drop()
			set src in usr
			loc = usr.loc


mob
	icon = 'knight.dmi'
	Login()
		loc = locate(/turf/Start)
	var
		HP = 30

//change name command
mob/verb/set_name(N as text)
	set desc = "(\"new name\") Change your name."
	name = N


//whisper verb
mob/verb/whisper(M as mob, msg as text)
	M << "[usr] whiapwea, '[msg]'"

// Say command
mob/verb
	say(msg as text)
		view() << "[usr] says, [msg]"

//out of character char (world chat)
mob/verb
	OOC_chat(t as text)
		world <<"<b>[src]:</b> [t]"

//who command
mob/verb
	who()
		var/counter=0
		for(var/mob/Player/M in world)
			counter+=1
			src<<"([M.Level1]    [M]"
		src<<"<b>[counter] Players online"

//HP variable ALL mobs have 30 hp default for now
var
	HP = 30

//attack command
mob/verb
	attack(mob/M as mob in oview(1)) //attacks a mob 1 tile in front
		flick("attack",src) // Switches to "attack" icon state when attacking
		usr << "You attack [M]!" // Message user gets
		oview() << "[usr] attacks [M]!" // Message to everyone in view
		var/damage = rand(1,10) // Damgage variable 1 through 10
		world << "[damage] damage!" // world sees damage dealt
		M.HP-= damge // damage done taken from HP total




