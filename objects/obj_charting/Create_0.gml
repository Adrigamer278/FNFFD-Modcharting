bpm=95
song=mus_tutorial
notespeed=1
notes=4
//unimportant crap
songlong=round(((audio_sound_length(song) / 60)*bpm*4))
songpos=-1
songplaying=0 //I wanted to make this a var
//notes
var b;
var bb;
for (bb=0; bb<notes*2; bb++) {
    for (b=0; b<songlong; b++) {
        note[bb,b]=0
        /*
        upop[i]=0
        downop[i]=0
        leftop[i]=0
        rightop[i]=0
        up[i]=0
        down[i]=0
        left[i]=0
        right[i]=0
        */
    }
}
//grid
var i;
for (i=0;i<notes*2;i++) {
    var dingus = instance_create(352+(i*16),64,obj_notecreater)
    with(dingus) {
        image_yscale=obj_charting.songlong
    }
    dingus.row=i
    if i<notes*2/2 {
        dingus.image_blend=make_colour_hsv(181,157,145)
    } else {
        dingus.image_blend=make_colour_hsv(35,207,199)
    }
}

/* */
/*  */
