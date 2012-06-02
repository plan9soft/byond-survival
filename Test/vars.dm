//Variables for Monsters
mob
	var
		HP=100 //Current Hitpoints.
		MaxHP=100 //Max HP
		Str=10 //Melee damage delt
		Def=5 //Incoming damage is reduced by this much.
		Bodtype //This is the mob's body type. The sound played when this mob is hit depends on their body type.
		AttackRate=6 //1/10ths of seconds between attacks.
		AttackDelay //Used to determine when mob can next attack. Leave undefined!
		AI //The AI that this mob will use.

//Variables for Objects.
obj

	var //Variables that apply to each Object
		Pushable=0 //1=Pushable 0=No
		pickup = 0 //1=Yes 0=No. Objects cannot be picked up by default

	projectile
		var //Projectile specific variables
			maxrange=20
			damage=2
			mob/owner //The mob who fired the projectile

	lightsource
		var //lightsource specific variables.
			lit //1=Lit 0=Not lit

	food
		var //food specific variables/
			healing //determine the amount of healing to be done

//These variables are used in the directional density system.
atom
	var
		BlockedEntry = 0
		BlockedExit = 0

