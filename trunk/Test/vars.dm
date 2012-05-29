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
		AI="Zombie" //The AI that this mob will use.

//Variables for Objects.
obj
	var //Variables that apply to each Object
		Pushable=0 //1=Pushable 0=No
	projectile/var //Projectile specific variables
		maxrange=20
		damage=2
		mob/owner //The mob who fired the projectile