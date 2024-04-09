/// @description double note fix FIX THE CRAP
//note spacing
if obj_stats.downscroll=false {
    var flip=-48*obj_song.notespeed
} else {
    var flip=48*obj_song.notespeed
}
/*
if y>=obj_uinotes.y-(32*obj_song.notespeed) {
    image_blend=c_green
} else {
    image_blend=c_white
}
*/

var thisNoteType = (type=1 || type=2 || type=3 || type=8 || type=9);
if !thisNoteType { hitable = false; return;}

canBeHit = (obj_song.songpos*1000)-(strumTime)
canBeHit=(canBeHit < noteHitbox && canBeHit >-noteHitbox)

if instance_exists(prevNote) && obj_song.songpos>0 {
	var validNoteType = (prevNote.type=1 || prevNote.type=2 || prevNote.type=3 || prevNote.type=8 || prevNote.type=9);
	
	if !validNoteType {
		prevNote.hitable = false;
		hitable = true;
		return;
	}
	
	var canPrevBeHit = prevNote.canBeHit
	
	if !canPrevBeHit && canBeHit {
		prevNote.hitable = false;
		hitable = true;
	} else if canPrevBeHit && canBeHit {
		hitable = false;
	} else if canPrevBeHit && !canBeHit {
		hitable = false;
	} else {
		prevNote.hitable = false;
		hitable = false;
	}
	
    /*var noteabove = -1
	noteabove = instance_position(x,y+flip,obj_note) //gets the id of the note above it
   
   if instance_exists(noteabove) {
	   
	    // 25 ms between each note, will be fine unless you use a dnb chart, in that case fuck you
		if abs(noteabove.strumTime - strumTime) > 25 { hitable = validNoteType; return;  }
		if obj_stats.downscroll=false {
			if (noteabove.y>=obj_uinotes.y-(32*obj_song.notespeed)) && validNoteType  {
                hitable=false;
                //image_blend=c_red
            } else {
                hitable=true;
                //image_blend=c_white
            }
		} else {
			if (noteabove.y<=obj_uinotes.y+(32*obj_song.notespeed)) && validNoteType {
				noteabove.hitable = true;
                hitable=false;
                //image_blend=c_red
            } else {
                hitable=true;
                //image_blend=c_white
            }
		}
   } else {
	   hitable = true;
   }*/
} else {
    hitable=canBeHit;
    //image_blend=c_white
}

/* */
/*  */
