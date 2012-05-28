mob
	var
		FileName="Players/[ckey(src.key)].sav"

	proc
		SaveProc()
		if(fexists(FileName))   fdel(FileName)
		var
			savefile
			F=new(FileName)
			F["HP"]<<src.HP
			F["MaxHP"]<<src.MaxHP
			F["Str"]<<src.Str
			F["Def"]<<src.Def
			F["LastX"]<<src.x
			F["LastY"]<<src.y
			F["LastZ"]<<src.z
			src<<"Character Saved..."


		LoadProc()
		if(fexists(FileName))
		var
			savefile
			F=new(FileName)
			F["HP"]>>src.HP
			F["MaxHP"]>>src.MaxHP
			F["Str"]>>src.Str
			F["Def"]>>src.Def
			src.loc=locate(F["LastX"],F["LastY"],F["LastZ"])
			src<<"Character Loaded..."
			return 1