var songPosition = obj_song.songpos;
var positionDiff=obj_song.songpos*1000 - strumTime

var curPos = (positionDiff*obj_song.notespeed)
var dist = (0.45 * -curPos);
if obj_stats.downscroll=true { dist = -dist };
var strum = ds_list_find_value(obj_song.strums, note);

var strumY = undefined;
var strumX = undefined;
var strumIncoming = 90;

var alpha = 1;
var angle = 0;
var scale = {
	x:1,
	y:1,
};

if instance_exists(strum) {
	var strumY = strum!=undefined ? strum.y : (obj_stats.downscroll ? 352 : 48);
	var strumX = strum!=undefined ? strum.x : (note<obj_song.notes ? 32+(44*note) : 234+(44*(note-4)));	
	var strumIncoming = strum!=undefined ? strum.incomingAngle : 90;
	var alpha = strum.image_alpha;
	var angle = strum.image_angle;
	var scale = {
		x:strum.image_xscale,
		y:strum.image_yscale,
	};
}

if instance_exists(obj_modchart) && solid {
	var offsets = obj_modchart.runModifiers(self,curPos);
	strumX = offsets.x;
	strumY = offsets.y;
	alpha = offsets.alpha;
	angle = offsets.angle;
	scale = offsets.scale;
	strumIncoming = offsets.incomingAngle;
	dist *= offsets.distMult;
}

var strumIncoming = degtorad(strumIncoming);

var yDist = sin(strumIncoming) * dist;
var xDist = cos(strumIncoming) * dist;

var finalX = strumX!= undefined ? (strumX + xDist) : x;
var finalY = strumY!= undefined ? (yDist + strumY) : y;

var zScale = -1;

if instance_exists(obj_modchart) && solid {
	var finalPos = obj_modchart.calculatePerspective(finalX,finalY,offsets.z);
	zScale = finalPos[2]

	x = finalPos[0];
	y = finalPos[1];
} else {
	x = finalX;
	y = finalY;
}

image_alpha = alpha;
image_angle = angle;
image_xscale = scale.x * (1/-zScale);
image_yscale = scale.y * (1/-zScale);

obj_song.flow=clamp(obj_song.flow,0,1)
var lose=1+(7*(1-obj_song.flow))
var win=2.5

var offScreen=obj_song.songpos >= ((strumTime+166)/1000);
var reachedHitPos = obj_song.songpos >= (strumTime/1000) && songPosition>0;
var canBeHit = (obj_song.songpos*1000)-(strumTime)

var hitbox = 166; // ms

canBeHit=(canBeHit < hitbox && canBeHit >-hitbox)

//note goes off screen
if (offScreen && (type=1 or type=2 or type=8 or type=9) && note >= obj_song.notes) {
	instance_destroy();
	obj_song.skill+=lose
	obj_song.misses+=1
	obj_song.flow-=0.1
	obj_song.coolscore-=50
}
//event

if type = 10 {
	if reachedHitPos {
		scr_noteevent(obj_song.song,event);
		instance_destroy();
    }
}
//hitting notes
if note < obj_song.notes { //enemy
    if reachedHitPos { //14 
        var butt; //LOL
        var sprite; //less funny
        var chungy; //abit funny
        switch(type) {
            case 2:
                chungy=4
            break;
            case 3:
                chungy=8
            break;
            case 9:
                chungy=4
            break;
            default:
                chungy=0
            break;
        }
        switch(type) {
            case 3:
                if bombhit=true {
                    obj_badguy.sprite_index=obj_badguy.anim[((note)+chungy)]
                    obj_badguy.hit[note]=true
                } else {
                    scr_bombevent(obj_song.song,note);
                }
            break;
            case 7:
                obj_badguy.sprite_index=obj_badguy.ayy
                obj_badguy.hit[note]=true
                switch(obj_badguy.ayy) {
                    case spr_cyanayy:
                        audio_play_sound(snd_cyanayy,9999,false)
                    break;
                    case spr_buddyayy:
                        audio_play_sound(snd_buddyayy,9999,false)
                    break;
                    case spr_gunkayy:
                        audio_play_sound(snd_gunkayy,9999,false)
                    break;
                    case spr_danayy:
                        audio_play_sound(snd_danayy,9999,false)
                    break;
                }
            break;
            default:
                obj_badguy.sprite_index=obj_badguy.anim[((note)+chungy)]
                obj_badguy.hit[note]=true
                if obj_song.weeknd3=true && obj_song.skill<95 {
                    obj_song.skill+=2.5*obj_song.weeknd3m
                }
            break;
        }
        instance_destroy();
    }
} else { //player
    //if (y <= obj_uinotes.y+(32*obj_song.notespeed) && y >= obj_uinotes.y-(32*obj_song.notespeed) && hitable=true) && obj_song.paused=false {
    if (canBeHit && hitable=true) && obj_song.paused=false {
        var butt; //LOL
        var sprite; //less funny
        var chungy; //abit funny
        //sprites spacing
        switch(type) {
            case 2:
                chungy=4
            break;
            case 9:
                chungy=4
            break;
            default:
                chungy=0
            break;
        }
        //pressing note
        switch(type) {
            default: //normal note
                 if keyboard_check_pressed((obj_stats.bind[note-obj_song.notes])+plus) xor gamepad_button_check_pressed(0,(obj_stats.bind[note-obj_song.notes+4])) {
                    obj_player.sprite_index=obj_player.anim[((note-obj_song.notes)+chungy)]
                    obj_player.hit[(note-obj_song.notes)]=true
                    obj_song.skill-=win
                    obj_song.flow+=0.05
                    obj_song.coolscore+=100
                    instance_destroy();  
                }
            break;
            case 3: //bomb
                if keyboard_check_pressed(obj_stats.bind[note-obj_song.notes]) xor gamepad_button_check_pressed(0,(obj_stats.bind[note-obj_song.notes+4])) {
                    obj_player.sprite_index=obj_player.anim[(note-obj_song.notes+chungy)]
                    obj_player.hit[note-obj_song.notes]=true
                    obj_song.skill+=15
                    obj_song.misses+=1
                    obj_song.flow=0
                    obj_song.coolscore-=200
                    randomize();
                    var randomsound=round(random(2))
                    switch(randomsound) {
                        case 0:
                            audio_play_sound(snd_bomb1,9999,false)
                        break;
                        case 1:
                            audio_play_sound(snd_bomb2,9999,false)
                        break;
                        case 2:
                            audio_play_sound(snd_bomb3,9999,false)
                        break;
                    }
                    instance_destroy();
                }
                scr_bombevent(obj_song.song,note);
            break;
            case 4:
                obj_camera.place=playerc
                instance_destroy();  
            break;
            case 5:
                obj_camera.place=badguyc
                instance_destroy();  
            break;
            case 6:
                obj_camera.place=mainc
                instance_destroy();  
            break;
            case 7:
                obj_player.press=true
                obj_player.frame=0
                if obj_song.skill < 75 {
                    obj_player.sprite_index=obj_player.ayy
                    audio_play_sound(snd_dudeayy,9999,false)
                } else {
                    obj_player.sprite_index=obj_player.yousuck
                    audio_play_sound(snd_crap,9999,false)
                }
                instance_destroy();  
            break;
            case 8: //hold
            if keyboard_check(obj_stats.bind[note-obj_song.notes]) xor gamepad_button_check(0,(obj_stats.bind[note-obj_song.notes+4])) {
                obj_player.sprite_index=obj_player.anim[(note-obj_song.notes+chungy)]
                //obj_player.hit[(note-obj_song.notes)]=true
                obj_player.frame=0
                obj_song.skill-=1
                obj_song.coolscore+=25
                instance_destroy();  
            }
            break;
            case 9: //hold alt
            if keyboard_check(obj_stats.bind[note-obj_song.notes]) xor gamepad_button_check(0,(obj_stats.bind[note-obj_song.notes+4])) {
                obj_player.sprite_index=obj_player.anim[(note-obj_song.notes+chungy)]
                //obj_player.hit[(note-obj_song.notes)]=true
                obj_player.frame=0
                obj_song.skill-=1
                obj_song.coolscore+=25
                instance_destroy();  
            }
            break;
            case 10: //event
                //just found out you can time your key press perfectly
                //and hit an event note and it doesnt do the event lolol
            break;
            case 11: //firework pre
                //audio_play_sound(snd_oh,9999,false)
                instance_destroy();
            break;
            case 12: //firework BOOM
                if keyboard_check_pressed(obj_stats.bind[2]) xor gamepad_button_check_pressed(0,(obj_stats.bind[6])) {
                    //obj_player.sprite_index=obj_player.anim[2]
                    //obj_player.hit[2]=true
                    //obj_player.frame=0
                    //audio_play_sound(snd_ha,9999,false)
                    //instance_destroy();
                }
                instance_destroy();
            break;
        }  
    }
}
