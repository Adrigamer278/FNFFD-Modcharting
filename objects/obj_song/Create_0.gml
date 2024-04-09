/// @description ui variables
//note surface
notesurf=surface_create(800,800)
//ui surface
ui=surface_create(400,400)
hideui=false
//health bar
houtline=c_black
hplayer=c_yellow
hbaddie=c_purple
//flow
foutline=c_black
fback=make_color_rgb(18,72,75)
ffull=make_color_rgb(83,206,213)
//icons
baddieicon=spr_stradicon
playericon=spr_dudeicon
//text color
tcolor=c_white
toutline=c_black
image_speed=0
//screenborder
spr_screenborder=-1

///extra vars
m=0
mm=0
mmm=0
mmmm=0
mmmmm=0
mmmmmm=0 //ok this is starting to get out of hand
mmmmmmm=0 //holy shmoley
//color vars
r=0
g=0
b=0
alph=0

///main vars
instance_create(0,0,obj_fadein)
image_speed=0
image_index=0
image_alpha=0
if obj_stats.downscroll=false {
    //y=16
    basey=48
    y=48
} else {
    basey=352
    y=352
}
//intro skipping
skipto=0
skipi=0
//song vars
bpm=95
song=mus_tutorial
songRate = 1

//game_set_speed(165,gamespeed_fps)

strums=[]
unspawnNotes=[]
lastNoteLane = {};
allEvents=[]

notespeed=3
notes=4
songplaying=0
paused=false
//points
skill=50
flow=0
coolscore=0
misses=0
//paused
dudean=0
dudeim=0
badan=0
badim=0
weeknd3=false
weeknd3m=1
//ntsc
ntsc=false
ntscsurface=-1
ntscdist=3
squigliness_invert_value=1
//extra
mcdonalds=false
lol=window_get_x();
lol2=window_get_y();

alarm[0]=20 * room_speed/60
alarm[1]=50 * room_speed/60 
alarm[2]=80 * room_speed/60
alarm[3]=110 * room_speed/60
alarm[4]=150 * room_speed/60

songpos = -(alarm[4]+2.5)/room_speed * songRate
spacey=48
surfaceh=true
//trippy vars
wavey=false
waveint=0
wavedude=false
//ploopy!
sel=0
event=0
saved=false

curStep = 0;
curBeat = 0;
crochet = 0;
stepCrochet = 0;

scr_songint(obj_stats.songgoing.name,obj_stats.modgoing);

//scr_skipintrosprite(obj_stats.typegoing,obj_stats.weekgoing);

