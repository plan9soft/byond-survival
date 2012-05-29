//This file rewritten
mob
	Enemies //defines enemy info
		zombie_guy //zombies
			icon='Male zombie.dmi'
			MaxHP=100
			Str=10
			Def=5
			Bodtype="Flesh" //This is the mob's body type. The sound played when this mob is hit depends on their body type.
			AttackRate=10
			AI="Zombie"

mob/Enemies/proc
	ZombieAI() //Appears to direct enemy AIs to step towards player.
		while(src)
			for(var/mob/Player/M in oview())
				if(get_dist(src,M)<=1)
					src.dir=get_dir(src,M)
					src.Attack()
				else
					step_to(src,M)
					break
			sleep(rand(4,8))

	ArcherAI() //Appears to direct enemy AIs to step towards player.
		while(src)
			for(var/mob/Player/M in oview())
				if(get_dist(src,M)<=1) //If we're right next to our target, attack him
					src.dir=get_dir(src,M)
					src.Attack()
				else if(get_dist(src,M)>=1 && get_dist(src,M)<=3)//If we're too close..
					walk_away(src,M,4,1,0) //Step away from the hero!
					sleep(4) //Pause
					walk(src,0)//Stop moving
				else //Face the hero and shoot!
					Shoot()
					break
			sleep(4)

mob/Enemies/New() //Initializes stats & specifies AI
	src.HP=src.MaxHP
	if(src.AI=="Zombie")
		spawn(-1)	src.ZombieAI()
	if(src.AI=="Archer")
		spawn(-1)	src.ArcherAI()
	return ..()

//Defines Objects
mob/objects //Defines interactive object info
	Boulder //boulder
		icon='Boulder.dmi'
		Pushable=1 //Boulders are pushable.
		Attackable=0 //Boulders are not attackable.