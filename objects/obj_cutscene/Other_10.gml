var cg, cground, what;
cg = obj_stats.cutgoing
cground = round(cg)
what = (cg - cground)
if (what == 0.2)
{
    if (obj_stats.songlocked[1, obj_stats.weekndgoing-1] == 1)
    {
        instance_create(0, 0, obj_unlocksong)
        instance_destroy()
    }
    else
    {
        instance_create(0, 0, obj_fadeout)
        obj_fadeout.roomgo = 5
        audio_play_sound(mus_menu, 9999, true)
        obj_stats.songlocked[1, obj_stats.weekndgoing] = 0
        obj_stats.songnew[1, obj_stats.weekndgoing] = 1
    }
}
else
{
    instance_create(0, 0, obj_fadeout)
    if (cg != 0.1)
    {
        obj_fadeout.roomgo = 7
        if (what == 0.1)
            obj_stats.weekgoing++
    }
    else
    {
        obj_fadeout.roomgo = 5
        audio_play_sound(mus_menu, 9999, true)
    }
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
