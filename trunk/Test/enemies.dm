mob/Enemies
    zombie_guy
        icon='Male zombie.dmi'
        MaxHP=100
        Str=10
        Def=5
        Bodtype="Flesh" //This is the mob's body type. The sound played when this mob is hit depends on their body type.
        Pushable=0

mob/Enemies/New() //Initializes stats & specifies AI
    src.HP=src.MaxHP
    spawn(-1)    src.ZombieAI()
    return ..()

mob/Enemies/proc/ZombieAI() //Appears to direct enemy AIs to step towards player.
    while(src)
        for(var/mob/Player/M in oview())
            if(get_dist(src,M)<=1)
                src.dir=get_dir(src,M)
                src.Attack()
            else
                step_to(src,M)
            break
        sleep(rand(4,8))

//Interactable Objects

//Boulder
mob/objects
    Boulder
        icon='Boulder.dmi'
        Pushable=1 //Boulders are pushable.
        Attackable=0 //Boulders are not attackable.
