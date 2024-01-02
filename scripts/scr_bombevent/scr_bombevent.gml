function scr_bombevent(argument0, argument1) {
	//if you want the bomb notes to do something
	//funny instead of changing the characters sprite
	//(also if youre reading this I never combined the note event script
	//and this script into one)
	var song=argument0
	var note=argument1
	switch(song) {
	    case mus_channelsurf:
	        if (obj_song.event!=5 && obj_song.event!=7 && obj_song.event!=11) {
	            if note<obj_song.notes {
	                var bob=0
	            } else {
	                var bob=-4
	            }
	            obj_nermal.sprite_index=obj_nermal.anim[((note)+8)+bob]
	            obj_nermal.hit[note+bob]=true
	        } else {
	            obj_song.mmmmmm=10
	        }
	    break;
	    case mus_w2s2:
	        if note<obj_song.notes {
	            obj_badguy.sprite_index=obj_badguy.anim[((note)+8)]
	            obj_badguy.hit[note]=true
	        }
	        obj_song.mmmmm=10
	    break;
	    case mus_w3s2:
	        if note<obj_song.notes {
	            obj_badguy.sprite_index=obj_badguy.anim[((note)+8)]
	            obj_badguy.hit[note]=true
	            obj_song.skill-=2
	        } else {
	            obj_nermal.sprite_index=obj_nermal.anim[((note)-4)]
	            obj_nermal.hit[note-4]=true
	            obj_song.skill-=2
	            instance_destroy();
	        }
	    break;
	    case mus_w4s1:
	        obj_nermal.sprite_index=obj_nermal.anim[((note))]
	        obj_nermal.hit[note]=true
	    break;
	    default:
	    break;
	}



}
