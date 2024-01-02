//debug
debug=false
//options
screenscale=4
downscroll=false
readable=false
skin=0
volume=1
//delta time
globalvar deltatime;
deltatime=room_speed/1000000*delta_time;
//4 key
bind[0]=37 //right
bind[1]=40 //up
bind[2]=38 //down
bind[3]=39 //left
//gamepad
bind[4]=gp_face3 //right
bind[5]=gp_face1 //up
bind[6]=gp_face4 //down
bind[7]=gp_face2 //left
//6 key
//bind[8]=ord("D")
//bind[9]=ord("F")
//bind[10]=ord("G")
//bind[11]=ord("H")
//bind[12]=ord("J")
//bind[13]=ord("K")

//scores
mini=-5 //how far negative the songlist goes
maxi=9 //how many songs are there
cat=1 //how many catigories of songs there are
var s;
var l;
for (l=0;l<=cat;l++) {
    for (s=0;s<(maxi-mini);s++) {
        songscore[l,s]=0
        songmiss[l,s]=0
        songlocked[l,s]=false
        songnew[l,s]=false
    }
}
songlocked[1,0]=true //locking infographic
songlocked[1,1]=true //locking channelsurfing & nermal
songlocked[1,2]=true //locking break it down, triangle man
songlocked[1,3]=true //locking cinemassacre
weekgoing=4.2 // song you're going to
weekndgoing=4 //weeknd you're going to
typegoing=0 // type of song your playing
cutgoing=0.2 // cutscene you're going to
joshmode=false
freeplay=false //are you playing a song in freeplay or storymode
thunderstonedroprate=2 //your welcome you unthankful fucks
gamepad=false
//other fun things
discord=true
playedw2=false //hides cd boy and gamejack in level screen
seenpopup=false //if the player has seen the control screen popup
bluedude=false //if the childish prankster wears a blue shirt
gndscore=0 //temp score for weeknd 2 cutscene
suckass=false //you sucked in twinkle
skipped=false //have you skipped the song you're on
specialroom=0 //what funny little room will you get
scr_loadoptions();
//create lady's font
globalvar fnt_lady;
fnt_lady = font_add_sprite_ext(spr_ladyfont," qwertyuiopasdfghjklzxcvbnmQWERTYUIOP",false,0);
//crash prevention
globalvar shaderbroke;
globalvar shaderdisabled;
if shaders_are_supported() && shader_is_compiled(sh_ntsc) {
    shaderbroke=false
    shaderdisabled=false
} else {
    shaderbroke=true
    shaderdisabled=true
}

///skin variables
colorhat=$8D97C2
colorskin=$EED6C4
colorhair=$473E38
colorshirt=$D7799C
colorstripe=$653662
colorpants=$5F5492
colorshoes=$353344
scr_skinint(skin)

