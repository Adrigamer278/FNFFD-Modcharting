name="mousedemo"
action="nothing"
c=0
//mouse vars
var i;
for(i=0;i<room_speed*10;i++) {
    mouse[0,i]=0 //x
    mouse[1,i]=0 //y
}
audio_play_sound(mus_cats,9999,true)

