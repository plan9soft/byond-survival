

mob/Enemies
    zombie_guy
        icon='Male zombie.dmi'
        MaxHP=100
        Str=10
        Def=5

mob/Enemies/New()
    src.HP=src.MaxHP
    spawn(-1)    src.CombatAI()
    return ..()

mob/Enemies/proc/CombatAI()
    while(src)
        for(var/mob/Player/M in oview())
            if(get_dist(src,M)<=1)
                src.dir=get_dir(src,M)
                src.Attack()
            else
                step_to(src,M)
            break
        sleep(rand(4,8))