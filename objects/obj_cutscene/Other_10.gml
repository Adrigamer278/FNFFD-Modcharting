
if (array_length(obj_stats.weeksonglist) = obj_stats.weekgoing)
{
	var disWeekData = obj_stats.categoriesData[obj_stats.catgoing].weeks[obj_stats.weekndgoing]
	
	disWeekData.beat = true;
	disWeekData.timesPlayed += 1;
	
    if (obj_stats.hasLockedSongs(obj_stats.catgoing,obj_stats.weekndgoing,true))
    {
        instance_create(0, 0, obj_unlocksong)
        instance_destroy()
    }
    else
    {
        instance_create(0, 0, obj_fadeout)
        obj_fadeout.roomgo = 5
        audio_play_sound(mus_menu, 9999, true)
		
		obj_stats.unlockWeekLockedSongs(obj_stats.catgoing,obj_stats.weekndgoing)
    }
}
else
{
    instance_create(0, 0, obj_fadeout)
    obj_fadeout.roomgo = 7
    obj_stats.weekgoing++
	
	var nextSongName = array_length(obj_stats.weeksonglist) >= obj_stats.weekgoing ? obj_stats.weeksonglist[obj_stats.weekgoing-1] : "i, robot"
	
	obj_stats.songgoing = obj_stats.getSongByName(nextSongName,obj_stats.catgoing)
}


/*

///song ending
var cg=obj_stats.cutgoing
var cground=round(cg)
var what=obj_stats.cutgoing//cg-cground
if what=0.2 { //song unlock
    if obj_stats.songlocked[1,obj_stats.weekndgoing-1]=true {
        instance_create(0,0,obj_unlocksong);
        instance_destroy();
    } else {
        instance_create(0,0,obj_fadeout)
        obj_fadeout.roomgo=rm_stageselect
        audio_play_sound(mus_menu,9999,true)
    }
} else {
    instance_create(0,0,obj_fadeout)
    if obj_stats.weekndgoing!=0 {
        obj_fadeout.roomgo=rm_stage
        if what=0.1 { //if its the middle cutscene
            obj_stats.weekgoing++
        }
    } else { //tutorial ending
        obj_fadeout.roomgo=rm_stageselect
        audio_play_sound(mus_menu,9999,true)
    }
}

/* */
/*  */
