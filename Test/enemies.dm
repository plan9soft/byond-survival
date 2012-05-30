//List of all enemy monsters.
//See vars.dm for explanations of each var.
mob
	Enemies
		zombie_guy //Zombies
			icon='Male zombie.dmi'
			MaxHP=70
			Str=8
			Def=3
			Bodtype="Flesh"
			AttackRate=10
			AI="Zombie"

		skele_archer //Skeleton Archers
			icon='Skel archer.dmi'
			MaxHP=50
			Str=7
			Def=2
			Bodtype="Bone"
			AttackRate=10
			AI="Archer"

//All enemy monster AI.
//The AI each monster uses is determined by it's AI var
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

	ArcherAI() //AI for ranged attack mobs.
		while(src)
			for(var/mob/Player/M in oview())
				if(get_dist(src,M)<=1) //If we're right next to our target, attack him
					src.dir=get_dir(src,M)
					src.Attack()
				else if(get_dist(src,M)>=1 && get_dist(src,M)<=3)//If we're too close..
					walk_away(src,M,6,0,4) //Step away from the hero!
					sleep(4) //Pause
					walk(src,0)//Stop moving
				else //Face the hero and shoot!
					src.dir=get_dir(src,M)
					Shoot()
				break
			sleep(4)

 //Initializes stats & specifies AI
mob/Enemies/New()
	src.HP=src.MaxHP
	if(src.AI=="Zombie")
		spawn(-1)	src.ZombieAI()
	if(src.AI=="Archer")
		spawn(-1)	src.ArcherAI()
	return ..()

