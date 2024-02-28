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
deltatime=delta_time / 1000000 * room_speed;
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

// parse files ig....

loadedMods = [];
array_push(loadedMods,scr_loadmod(working_directory));

// LOAD MODS!!!

var curFolder = file_find_first(working_directory + "mods/*", fa_directory);
while(curFolder != "") {
	var modDir = working_directory+"mods/"+curFolder;
	if file_exists(modDir+"/songs.json") {
		show_debug_message("Adding mod from folder: "+curFolder)
		array_push(loadedMods,scr_loadmod(modDir));
	}
	curFolder = file_find_next();
}

getSongByName = function(name,modInd) {
	if modInd = undefined { modInd = 0 }
	return loadedMods[modInd].songs[array_get_index(loadedMods[modInd].songsName,name)]
}

getWknd = function(wkndId,modInd) {
	if modInd = undefined { modInd = 0 }
	return loadedMods[modInd].weeknds[array_get_index(loadedMods[modInd].weekndsId,wkndId)]
}

isSongUnlocked = function(name,modInd) {
	return !isSongLocked(name,modInd); //lmao
}

isSongLocked = function(name,modInd) {
	if modInd = undefined { modInd = 0 }
	return getSongByName(name,modInd).stats.locked
}

setSongLockState = function(name,state,modInd) {
	if modInd = undefined { modInd = 0 }
	getSongByName(name,modInd).stats.locked = state
}

hasLockedSongs = function(week,modInd) {
	if modInd = undefined { modInd = 0 }
	
	var isSongLocked = false;
	
	var wknd = getWknd(week,modInd);
	
	for (s=0;s<array_length(wknd.unlocks);s++) {
		var songData = getSongByName(wknd.unlocks[s],modInd)
		isSongLocked = isSongLocked ? isSongLocked : songData.stats.locked
	}
	
	return isSongLocked
}

unlockWeekSongs = function(week,modInd) {
	if modInd = undefined { modInd = 0 }

	var wknd = getWknd(week,modInd);
	for (s=0;s<array_length(wknd.unlocks);s++) {
		var songData = getSongByName(wknd.unlocks[s],modInd)
		songData.stats.locked = false;
	}
}

songgoing = [] // song going to 2.0
modgoing = 0 // mod lol
weeksonglist = [] // the week list

weekgoing=4.2 // song you're going to
weekndgoing=4 //weeknd you're going to
typegoing=0 // type of song your playing (UNUSED RN)
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
skinrainbow=false

scr_skinint(skin)

