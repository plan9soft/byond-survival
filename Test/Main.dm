world
	name = "Alpha"
	mob=/mob/Player

mob/Player
	icon='knight.dmi'
	icon_state="Player"
	Bodtype="Hero"

mob
    Login()
        if(src.LoadProc())
            world<<"[src] has Returned"
        else
            src.loc=locate(5,5,1)
            world<<"[src] has Logged In"


    Logout()
        world<<"[src] has Logged Out"
        src.SaveProc()
        del src

