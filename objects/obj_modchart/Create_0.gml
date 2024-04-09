/// @description load modifiers and steps

disableZ = false; // disable z math and stuff

// utils

iterateStruct = function(struct,func) {
	var keys = variable_struct_get_names(struct);
	for (var i = array_length(keys)-1; i >= 0; --i) {
		var k = keys[i];
		var v = struct[$ k];
		func(k,v);
	}
}

iterateArray = function(array,func) {
	var length = array_length(array);
	for (i=0; i<length; i++) {
		func(i,array[i]);
	}
}

// tweens
// using TweenGMX

getEaseFunc = function(string) {
	switch(string_lower(string)) {
		case "inoutback": return EaseInOutBack;
		case "outback": return EaseOutBack;
		case "inback": return EaseInBack;
		case "backinout": return EaseInOutBack;
		case "backout": return EaseOutBack;
		case "backin": return EaseInBack;
		
		case "inoutquad": return EaseInOutQuad;
		case "outquad": return EaseOutQuad;
		case "inquad": return EaseInQuad;
		case "quadinout": return EaseInOutQuad;
		case "quadout": return EaseOutQuad;
		case "quadin": return EaseInQuad;
		
		case "inoutsine": return EaseInOutSine;
		case "outsine": return EaseOutSine;
		case "insine": return EaseInSine;
		case "sineinout": return EaseInOutSine;
		case "sineout": return EaseOutSine;
		case "sinein": return EaseInSine;
		
		case "circout": return EaseOutCirc;
		
		default: return EaseLinear;
	}
	
	return EaseLinear;
}

tweenProperty = function(struct,property,value = 0,time = 0,easingStyle = "linear") {
	TweenFire(struct,getEaseFunc(easingStyle),"once",true,0,time,property,variable_struct_get(struct,property),value)
}

// tweening the notes to a position
noteTweenX = function(noteNum = 0,pos = 0,time = 0,easingStyle = "linear") {
	var offsets = getStrumOffsetStruct(noteNum)
	var strum = array_get(obj_song.strums, noteNum)
	
	var off = 0;
	if instance_exists(strum) {
		off = strum.defaultX;
	} else {
		off = (noteNum<obj_song.notes ? 32+(44*noteNum) : 234+(44*(noteNum-4)));
	}
	
	TweenFire(offsets,getEaseFunc(easingStyle),"once",true,0,time,"x",offsets.x,pos - off)
}

noteTweenY = function(noteNum = 0,pos = 0,time = 0,easingStyle = "linear") {
	var offsets = getStrumOffsetStruct(noteNum)
	var strum = array_get(obj_song.strums, noteNum)
	
	var off = 0;
	if instance_exists(strum) {
		off = strum.defaultY;
	} else {
		off = (obj_stats.downscroll ? 352 : 48);
	}
	
	TweenFire(offsets,getEaseFunc(easingStyle),"once",true,0,time,"y",offsets.y,pos - off)
}

noteTweenAngle = function(noteNum = 0,pos = 0,time = 0,easingStyle = "linear") {
	var offsets = getStrumOffsetStruct(noteNum)
	TweenFire(offsets,getEaseFunc(easingStyle),"once",true,0,time,"angle",offsets.angle,pos)
}

noteTweenAlpha = function(noteNum = 0,pos = 0,time = 0,easingStyle = "linear") {
	var offsets = getStrumOffsetStruct(noteNum)
	TweenFire(offsets,getEaseFunc(easingStyle),"once",true,0,time,"alpha",offsets.alpha,pos)
}

noteTweenDirection = function(noteNum = 0,pos = 0,time = 0,easingStyle = "linear") {
	var offsets = getStrumOffsetStruct(noteNum)
	TweenFire(offsets,getEaseFunc(easingStyle),"once",true,0,time,"incomingAngle",offsets.incomingAngle,pos)
}

// extra offset tween

noteTweenOffsetX = function(noteNum = 0,pos = 0,time = 0,easingStyle = "linear") {
	var offsets = getStrumOffsetStruct(noteNum)
	TweenFire(offsets,getEaseFunc(easingStyle),"once",true,0,time,"x",offsets.x,pos)
}

noteTweenOffsetY = function(noteNum = 0,pos = 0,time = 0,easingStyle = "linear") {
	var offsets = getStrumOffsetStruct(noteNum)
	TweenFire(offsets,getEaseFunc(easingStyle),"once",true,0,time,"y",offsets.y,pos)
}

// modifiers tween

modifierTweenValue = function(modifier,pos = 0,time = 0,easingStyle = "linear") {
	TweenFire(modifier,getEaseFunc(easingStyle),"once",true,0,time,"value",modifier.value,pos)
}

modifierTweenX = function(modifier,pos = 0,time = 0,easingStyle = "linear") {
	TweenFire(modifier,getEaseFunc(easingStyle),"once",true,0,time,"x",modifier.x,pos)
}

modifierTweenY = function(modifier,pos = 0,time = 0,easingStyle = "linear") {
	TweenFire(modifier,getEaseFunc(easingStyle),"once",true,0,time,"y",modifier.y,pos)
}

modifierTweenZ = function(modifier,pos = 0,time = 0,easingStyle = "linear") {
	TweenFire(modifier,getEaseFunc(easingStyle),"once",true,0,time,"z",modifier.z,pos)
}

// sets
setNoteOffsetX = function(noteNum,pos) {
	var offsets = getStrumOffsetStruct(noteNum)
	offsets.x = pos
}

setNoteOffsetY = function(noteNum,pos) {
	var offsets = getStrumOffsetStruct(noteNum)	
	offsets.y = pos
}

// extra off

setNoteX = function(noteNum,pos) {
	var offsets = getStrumOffsetStruct(noteNum)
	var strum = array_get(obj_song.strums, noteNum)
	
	var off = 0;
	if instance_exists(strum) {
		off = strum.defaultX;
	} else {
		off = (noteNum<obj_song.notes ? 32+(44*noteNum) : 234+(44*(noteNum-4)));
	}
	
	offsets.x = pos - off
}

setNoteY = function(noteNum,pos) {
	var offsets = getStrumOffsetStruct(noteNum)
	var strum = array_get(obj_song.strums, noteNum)
	
	var off = 0;
	if instance_exists(strum) {
		off = strum.defaultY;
	} else {
		off = (obj_stats.downscroll ? 352 : 48);
	}
	
	offsets.y = pos - off
}

setNoteOffsetAlpha = function(noteNum,pos) {
	var offsets = getStrumOffsetStruct(noteNum)
	offsets.alpha = pos
}

setNoteOffsetAngle = function(noteNum,pos) {
	var offsets = getStrumOffsetStruct(noteNum)
	offsets.angle = pos
}

setNoteOffsetDirection = function(noteNum,pos) {
	var offsets = getStrumOffsetStruct(noteNum)
	offsets.incomingAngle = pos
}

// beat and steps system

beatEvents = {};
stepEvents = {};

addStepEvent = function(step,func) {
	if !variable_struct_exists(stepEvents,step) {variable_struct_set(stepEvents,step,[])};
	array_push(variable_struct_get(stepEvents,step),func);
}

onEvenStepTill = function(stepStart,stepEnd,func) {
	for (i=0; i<floor(((stepEnd-stepStart)/2)); i++) {
		var step = (2*i) + stepStart;
        addStepEvent(step,func);
	}
}

onStepTill = function(stepStart,stepEnd,func) {
	for (step=stepStart; step<stepEnd; step++) {
        addStepEvent(step,func);
	}
}

addBeatEvent = function(beat,func) {
	if !variable_struct_exists(beatEvents,beat) {variable_struct_set(beatEvents,beat,[])};
	array_push(variable_struct_get(beatEvents,beat),func);
}

onEvenBeatTill = function(beatStart,beatEnd,func) {
	for (i=0; i<floor((beatEnd-beatStart)/2); i++) {
		var beat = (2*i) + beatStart;
        addBeatEvent(beat,func);
	}
}

onBeatTill = function(beatStart,beatEnd,func) {
	for (beat=beatStart; beat<beatEnd; beat++) {
        addBeatEvent(beat,func);
	}
}

// define modifiers
drunk = {
	x: 0,
	y: 0,
	z: 0,
}

boomerang = {y:0}

drunkNotes = {
	x: 0,
	y: 0,
	z: 0,
}

drunkSpeed = {
	x: 1,
	y: 1,
	z: 1,
}

tipsy = {
	x: 0,
	y: 0,
	z: 0,
}

tipsySpeed = {
	x: 1,
	y: 1,
	z: 1,
}

reverse = {
	x: 0,
	y: 0,
}

strumlineRotate = {
	x: 0,
	y: 0,
	z: 90,
}

camHUD = {
	x: 0,
	y: 0,
}

// functions / start of variables define

getStrumOffsetStruct = function(note) { return variable_struct_get(self,"strum"+string(note)) }

screenWidth = 200;
screenHeight = 200;

xArrowSize = 44;
yArrowSize = 48;
avgArrowSize = (xArrowSize+yArrowSize)/2;

strumsXDiff = obj_song.strums[obj_song.notes].defaultX - obj_song.strums[0].defaultX;
strumsYDiff = 352 - 48; // downscrollpos-upscrollpos

zNear = 0
zFar = 1000
zRange = zNear - zFar 
tanHalfFOV = tan(pi/4);
rad = pi/180;

// precalculated stuff to improve performance
preCalculated = (2 * zFar * zNear / zRange)
sizePreCalculated = (1/tanHalfFOV)

getCartesianCoords3D = function(theta, phi, radius) {

	var finalX = 0
	var finalY = 0
	var finalZ = 0
	
	finalX = cos(theta*rad)*sin(phi*rad);
	finalY = cos(phi*rad);
	finalZ = sin(theta*rad)*sin(phi*rad);
	finalX = finalX*radius;
	finalY = finalY*radius;
	finalZ = finalZ*radius;

	return [finalX,finalY,finalZ/1000]
}

getNoteRot = function(data, curPos, XPos, YPos) {
	var xVar = 0
	var yVar = 0
	var zVar = -1
	
	if disableZ { return [XPos,YPos,zVar] };
	
	var noteRotX = 0;
	var noteRotY = 0;

	var strumRotX = getCartesianCoords3D(noteRotX,90, XPos-(screenWidth/2))
	xVar = strumRotX[0]+(screenWidth/2)
	var strumRotY = getCartesianCoords3D(90,noteRotY, YPos-(screenHeight/2))
	yVar = strumRotY[1]+(screenHeight/2)
	
	zVar = zVar + strumRotX[2] + strumRotY[2]
	return [xVar,yVar,zVar]
}

calculatePerspective = function(startX,startY,z) {
	
	if disableZ { return [startX,startY,-1] }

	startX-= (screenWidth*1.15)
	startY-= (screenHeight)
	
	// fd weird x mult
	startX*=2;
	startY*=2;

	var zPerspectiveOffset = (z+preCalculated);

	var xPerspective = startX*sizePreCalculated;
	var yPerspective = startY/sizePreCalculated;
	xPerspective = xPerspective/-zPerspectiveOffset;
	yPerspective = yPerspective/-zPerspectiveOffset;
	
	xPerspective/=2;
	yPerspective/=2;

	xPerspective+= (screenWidth*1.15)
	yPerspective+= (screenHeight)

	return [xPerspective,yPerspective,zPerspectiveOffset]
}

quaternionEuler = function(roll, pitch, yaw) {
	roll = degtorad(roll);
	pitch = degtorad(pitch);
	yaw = degtorad(yaw)
	
	var cr = cos(roll);
    var sr = sin(roll);
    var cp = cos(pitch);
    var sp = sin(pitch);
    var cy = cos(yaw);
    var sy = sin(yaw);
    
    var q = {x: 0, y: 0, z: 0, w:0 };
    q.w = cr * cp * cy + sr * sp * sy;
    q.x = sr * cp * cy - cr * sp * sy;
    q.y = cr * sp * cy + sr * cp * sy;
    q.z = cr * cp * sy - sr * sp * cy;
    return q;
}

runModifiers = function(obj,curPos) {
	if !obj { show_debug_message("NO OBJ!!") };
	
	//show_debug_message(variable_struct_get(self,"strum0"))
	
	var songPosition = obj_song.songpos;
	var flip = obj_stats.downscroll ? -1 : 1;
	
	var strum = array_get(obj_song.strums, obj.note)
	var strumOffsets = variable_struct_get(self,"strum"+string(obj.note));
	var num = obj.note%obj_song.notes;
	
	var offsetY = 48;
	var offsetX = 0;
	var offsetZ = -1;
	var offsetAngle = 0;
	var offsetAlpha = 1;
	var offsetIncoming = 0;
	var multDist = 1;
	
	var scale = {
		x:1,
		y:1,
	}
	
	if instance_exists(strum) {
		offsetY = strum.defaultY;
		offsetX = strum.defaultX;
	} else {
		offsetY = (obj_stats.downscroll ? 352 : 48);
		offsetX = (obj.note<obj_song.notes ? 32+(44*obj.note) : 234+(44*(obj.note-4)));
	}
	
	var noteRotPos = getNoteRot(obj.note, 0, offsetX, offsetY)
	offsetX = noteRotPos[0]
	offsetY = noteRotPos[1]
	offsetZ = noteRotPos[2]
	
	if strumOffsets!= undefined {
		offsetX += strumOffsets.x
		offsetY += strumOffsets.y
		offsetAngle += strumOffsets.angle
		offsetAlpha *= strumOffsets.alpha
		offsetIncoming += strumOffsets.incomingAngle
		scale.x *= strumOffsets.scale.x
		scale.y *= strumOffsets.scale.y
	}
	
	if boomerang.y!=0 {
		multDist *= 0.75;
		curPos*= 1.25;
		
		offsetY += (sin(curPos/-700) * 400 + (curPos/3.5)) * (-boomerang.y);
        offsetAlpha *= clamp(1-(curPos/-600-3.5), 0, 1);
	}
	
	// DRUNK
	if drunk.x != 0 {
		var drunkOffX = drunk.x * (cos(((songPosition) + ((num)*0.2) + (curPos*0.45)*(10/screenHeight)) * (drunkSpeed.x*0.2)) * xArrowSize*0.5);
		offsetX+=drunkOffX;
	}
	
	if drunk.y != 0 {
		var drunkOffY = drunk.y * (cos(((songPosition) + ((num)*0.2) + (curPos*0.45)*(10/screenHeight)) * (drunkSpeed.y*0.2)) * yArrowSize*0.5);
		offsetY+=drunkOffY;
	}
	
	if !disableZ && drunk.z!=0 {
		var drunkOffZ = drunk.z * (cos(((songPosition) + ((num)*0.2) + (curPos*0.45)*(10/screenHeight)) * (drunkSpeed.z*0.2)) * xArrowSize*0.5);
		offsetZ+=drunkOffZ / 100;
	}
	
	// DRUNK NOTES
	if drunkNotes.x != 0 {
		var drunkOffX = drunkNotes.x/5 * (sin(((songPosition / 100) + ((num)*0.02) + (10/screenHeight)) * (curPos*0.45) * (drunkSpeed.x*0.2)) * xArrowSize*0.5);
		offsetX+=drunkOffX;
	}
	
	if drunkNotes.y != 0 {
		var drunkOffY = drunkNotes.y/5 * (sin(((songPosition / 100) + ((num)*0.02) + (10/screenHeight)) * (curPos*0.45) * (drunkSpeed.y*0.2)) * yArrowSize*0.5);
		offsetY+=drunkOffY;
	}
	
	if !disableZ && drunkNotes.z!=0 {
		var drunkOffZ = drunkNotes.z/5 * (sin(((songPosition / 100) + ((num)*0.02) + (10/screenHeight)) * (curPos*0.45) * (drunkSpeed.z*0.2)) * xArrowSize*0.5);
		offsetZ+=drunkOffZ / 100;
	}
	
	// TIPSY
	if tipsy.x != 0 {
		var tipsyOffX = tipsy.x * (cos((songPosition *(1.2) + (num)*(2.0)) * (5) * tipsySpeed.x*0.2 ) * xArrowSize*0.4);
		offsetX+=tipsyOffX;
	}
	
	if tipsy.y != 0 {
		var tipsyOffY = tipsy.y * (cos((songPosition *(1.2) + (num)*(2.0)) * (5) * tipsySpeed.y*0.2 ) * xArrowSize*0.4);
		offsetY+=tipsyOffY;
	}
	
	if !disableZ && tipsy.z!=0 {
		var tipsyOffZ =	tipsy.z * (cos((songPosition *(1.2) + (num)*(2.0)) * (5) * tipsySpeed.z*0.2 ) * xArrowSize*0.4);
		offsetZ+=tipsyOffZ / 100;
	}
	
	// REVERSE
	if reverse.x != 0 {
		var reverseX = (obj.note < obj_song.notes) ? (reverse.x * strumsXDiff) : -(reverse.x * strumsXDiff) 
		offsetX+=reverseX;
	}
	
	if reverse.y != 0 {
		var reverseY = strumsYDiff * reverse.y * flip;
		multDist*= (1-(reverse.y*2))
		offsetY+=reverseY;
	}
	
	offsetX+=camHUD.x;
	offsetY+=camHUD.y;
	
	if (strumlineRotate.x!=0 || strumlineRotate.y!=0 || strumlineRotate.z!=90) {
		var laneShit = obj.note%obj_song.notes;
	    var offsetThing = 0.5;
	    var halfKeyCount = obj_song.notes/2;
	    if (obj.note < halfKeyCount)
	    {
	        offsetThing = -0.5;
	        laneShit = obj.note+1;
	    }
		
	    var distFromCenter = ((laneShit)-halfKeyCount)+offsetThing; //theres probably an easier way of doing this
	    offsetX += -distFromCenter*xArrowSize;

	    var upscroll = !obj_stats.downscroll;
	    var q = quaternionEuler(strumlineRotate.z, strumlineRotate.x, (upscroll ? -strumlineRotate.y : strumlineRotate.y));
	    offsetX += q.x * distFromCenter*xArrowSize;
	    offsetY += q.y * distFromCenter*yArrowSize;
		offsetZ += q.z * distFromCenter*avgArrowSize / 100;
	}
	
	// post modifiers
	
	return {
		x:offsetX,
		y:offsetY,
		z:offsetZ,
		scale:scale,
		angle:offsetAngle*flip,
		alpha:offsetAlpha,
		incomingAngle:offsetIncoming*flip + 90,
		distMult:multDist,
	}
};

kabooming = false;
kaboomIntensity = 3;

stepHit = function(curStep) {
	// do code here
	
	if kabooming {
		var stepCrochet = obj_song.stepCrochet;
		 if curStep % 4 == 0 {
			 modifierTweenY(camHUD,-6*kaboomIntensity,stepCrochet*2,"circOut")
		 } else if curStep % 4 == 2 {
			 modifierTweenY(camHUD,0,stepCrochet*2,"sineIn")
		 }
	}
	
	// internal
	_step(curStep);
};
beatHit = function(curBeat) {
	// do code here
	
	// internal
	_beat(curBeat);
};

isStartLerp = false;
stupidSin = false;
stupidCos = false;
connectionStarting = false;
connectionTerminated = false;
satelliteWin = undefined;
satnoteSizeX = 1;
satnoteSizeY = 1;
start = 0;
wow = 0;
weirdComing = 0;

flipWindow = true;

flxVel = false;
allVel = 0;

onUpdate = function() {
	if chimpgameModifier {
		for (i=0;i<array_length(chimpWindows);i++) {
			var win = chimpWindows[i]
			win.setPosition(lerp(win.x,win.endX,deltaMult*0.02),lerp(win.y,win.endY,deltaMult*0.02)) 
		}
	}
	
	switch(obj_song.song) {
		case mus_w4s1:
		
			satnoteSizeX = lerp(satnoteSizeX,1,5*(1/60)*deltaMult);
			satnoteSizeY = lerp(satnoteSizeY,1,5*(1/60)*deltaMult);
		
			var songPos = obj_song.songpos*1000
			if isStartLerp {
				for (i=0; i<(obj_song.notes*2); i++) { 
					var cur = getStrumOffsetStruct(i)
					setNoteOffsetX(i,lerp(cur.x,0,deltaMult*.008))
					setNoteOffsetY(i,lerp(cur.y,0,deltaMult*.01))
				}
			}
			
			if stupidSin {
				for (i=0; i<(obj_song.notes*2); i++) { 
					var weirdOff = i+(clamp((i-1), 1, 9)) * 1.2
					setNoteOffsetY(i,0.5*(sin(((songPos-start) / 1000 * 1.3) + weirdOff) * ((15*(i*40.5392+9)) % 20.5)))
				}
			}
			
			if stupidCos {
				for (i=0; i<(obj_song.notes*2); i++) { 
					var weirdOff = i * 1.2 + i/2
					setNoteOffsetX(i,0.5*(cos(((songPos-start) / 1000 * 1.3) + weirdOff) * ((115*(i*46.5392+9)) % 32.5)))
				}
			}
			
			if flxVel {
				allVel-= 10*(1/60)*deltaMult
				for (i=0; i<(obj_song.notes*2); i++) { 
					var off = getStrumOffsetStruct(i)
					off.y-=allVel
				}
			}
			
			for (i=0; i<(obj_song.notes*2); i++) {
				var offs = getStrumOffsetStruct(i)
				offs.scale.x = satnoteSizeX;
				offs.scale.y = satnoteSizeY;
			}
			
			var win = satelliteWin;
			var thisWin = global.thisWindow;
			
			if connectionStarting {
				var twspeed = deltaMult*0.025
				thisWin.setSize(lerp(window_get_width(),500,twspeed),lerp(window_get_height(),500,twspeed))
				if flipWindow {
					thisWin.setPosition((display_get_width()-window_get_width())/2,lerp(window_get_y(),display_get_height() -window_get_height() - 50,twspeed))
				} else {
					thisWin.setPosition((display_get_width()-window_get_width())/2,lerp(window_get_y(),50,twspeed))
				}
				
				win.setPosition(win.x,lerp(win.y,win.endY,twspeed)) 
			}
			
			if connectionTerminated {
				var twspeed = deltaMult*0.05
				thisWin.setSize(lerp(window_get_width(),800,twspeed),lerp(window_get_height(),800,twspeed))
				thisWin.setPosition((display_get_width()-window_get_width())/2,lerp(window_get_y(),(display_get_height()-window_get_height())/2,twspeed))
				
				if flipWindow {
					win.setPosition(win.x,lerp(win.y,-450,twspeed))
				} else {
					win.setPosition(win.x,lerp(win.y,display_get_height() + 50,twspeed)) 
				}
			}
		break;
	}
};

chimpgameModifier = false
chimpWindows = []
onCreate = function() {
	
	if chimpgameModifier {
		for (i=0;i<4;i++) { // create 4 chimpgames
			var window = scr_makewindow();
			window.makeWin(["-chimpgame"]);
			
			var defX = (display_get_width()-400)/2
			var defY = (display_get_height()-400)/2
			
			var xPos = i>1 ? defX + window_get_width()/2 + 300 : defX - 300 - 400
			var yPos = i%2==0 ? defY - defY/1.5 : defY + defY/1.5
			window.endX = xPos; window.endY = yPos
			window.setPosition(defX,defY)
			window.setBorder(false)
			window.setSize(400,400)
			
			array_push(chimpWindows,window)
		}
	}
	
	switch(obj_song.song) {
		case mus_w4s1:
			satelliteWin = scr_makewindow();
			satelliteWin.makeWin(["-satellite"]);
			satelliteWin.setSize(400,400)
			//satelliteWin.setBorder(false)
			satelliteWin.setTitle("shh nothing")
			satelliteWin.setPosition((display_get_width()-400)/2,flipWindow ? -400-50 : display_get_height() + 50)
			
			satelliteWin.endY = display_get_height() - 400 - 100 // -windowSize -offset
			
			if flipWindow {
				satelliteWin.endY = 50;
			}
		
			isStartLerp = true;
			for (i=0; i<(obj_song.notes*2); i++) {
				setNoteOffsetX(i, (i>3 ? 4000+screenWidth : -4000))
				setNoteOffsetY(i, -1000)
			}
			
			addBeatEvent(32,function(){
				isStartLerp = false;
			})
			
			addBeatEvent(112,function(){
				stupidCos = true;
			})
			
			addBeatEvent(160,function(){
				stupidCos = false;
			})
			
			addBeatEvent(223,function(){
				connectionStarting = true;
				
				//SATELLITES ARE IN THE SKY!!! NOT BELOW YOUR WINDOW!!
				if obj_stats.downscroll!=flipWindow {
					modifierTweenY(boomerang,-.75,obj_song.crochet*2,"quadout")
				}
			})
			
			addBeatEvent(224,function(){
				stupidSin = true;
				modifierTweenX(reverse,.5,obj_song.crochet*2,"quadout")
				
				var crochet = obj_song.crochet
				for (i=0; i<(obj_song.notes); i++) {
					noteTweenAlpha(i,0.5,crochet,"quadout")
				}
			})
			
			addBeatEvent(287,function(){
				connectionStarting = false;
				connectionTerminated = true;
				
				modifierTweenY(boomerang,0,obj_song.crochet,"quadout")
				
				var crochet = obj_song.crochet
				for (i=0; i<(obj_song.notes); i++) {
					noteTweenAlpha(i,1,crochet,"quadout")
				}
			})
			
			addBeatEvent(291,function(){
				connectionTerminated = false;
			})
			
			addStepEvent(63*4+1,function(){
				
				var stepCrochet = obj_song.stepCrochet;
				var time = stepCrochet*4
				
				noteTweenOffsetY(7 ,0, time, "sineIn")
				satnoteSizeX = satnoteSizeX + 0.5
				satnoteSizeY = satnoteSizeY - 0.25
			})

	        addStepEvent(63*4+2,function(){
	            satnoteSizeX = satnoteSizeX - 0.25
	            satnoteSizeY = satnoteSizeY + 0.5
			})
			
			addBeatEvent(64,function(){
				var stepCrochet = obj_song.stepCrochet;
				for (i=0; i<4; i++) {
					noteTweenOffsetX(i,-1000,stepCrochet+ i*0.2, "sineIn")
				}
				for (i=7; i>3; i--) {
					noteTweenOffsetX(i,1000,stepCrochet+ (3-(i-4))*0.2, "sineIn")
				}
			})
			
			onStepTill(32*4,64*4,function(step){
	            if !(step%2==0) { return }
				var stepCrochet = obj_song.stepCrochet;
				
	            var bare = wow%8;
	            var strum = floor(bare)%8;

	            var time = stepCrochet*4

	            if (bare==strum) && (step!=64*4) {
					setNoteOffsetAngle(strum,0)
					noteTweenOffsetY(strum,-30,time,"circOut")
	                noteTweenAngle(strum , 360, time, "circOut")
				}

	            wow = wow + 0.5

	            strum = strum -1
	            if strum==-1 { strum = 7 }
	            noteTweenOffsetY(strum ,0, time, "sineIn")
			})

	        addBeatEvent(94,function(){
				var stepCrochet = obj_song.stepCrochet;
				for (i=0; i<4; i++) {
					noteTweenOffsetX(i,0,stepCrochet+ 0.1 + (3-i)*0.2, "circOut")
				}
				for (i=7; i>3; i--) {
					noteTweenOffsetX(i,0,stepCrochet+ 0.1 + (i-4)*0.2, "circOut")
				}
			})
			
			addBeatEvent(288,function(){
				stupidSin = false;
				
				satnoteSizeX = 1.4;
				satnoteSizeY = 0.7;
				modifierTweenX(reverse,0,obj_song.crochet,"quadout")
			})
			
			var increase = function() {
				satnoteSizeX=satnoteSizeX+0.1;
				satnoteSizeY=satnoteSizeY+0.1;
			}
			
			addBeatEvent(296,increase);
	        addBeatEvent(304,increase);
	        addBeatEvent(316,increase);
	        addBeatEvent(328,increase);
	        addBeatEvent(332,increase);
	        addBeatEvent(336,increase);
	        addBeatEvent(344,increase);
	        addBeatEvent(348,increase);
			
			onStepTill(1275,1280,function(step){
				var stepCrochet = obj_song.stepCrochet;
				
				weirdComing += 0.05;
				reverse.x = weirdComing;
				modifierTweenX(reverse,weirdComing-0.025,stepCrochet,"quadout")
				
				satnoteSizeX=satnoteSizeX+0.15;
				satnoteSizeY=satnoteSizeY+0.15;
				for (i=0; i<(obj_song.notes*2); i++) {
					setNoteOffsetAngle(i,step%2==0 ? -90 : 90)
				}
			})
			
			onStepTill(763,767,function(step){
	            satnoteSizeX=satnoteSizeX+0.15;
	            satnoteSizeY=satnoteSizeY+0.15;
				for (i=0; i<(obj_song.notes*2); i++) {
					setNoteOffsetAngle(i,step%2==0 ? 10 : -10)
				}
			})
			
			addStepEvent(1280,function() {
				kabooming = true;
				
				var crochet = obj_song.crochet*2
				modifierTweenX(reverse,0,crochet,"quadout")
				strumlineRotate.x = 0;
				modifierTweenX(strumlineRotate,360,crochet,"quadout")
			})
			
			drunkSpeed.x = .15;
			drunkSpeed.y = .15;
			drunkSpeed.z = .15;
			
			onBeatTill(289,318,function() {
				var crochet = obj_song.crochet
				var moveAmmo = 15;
				drunkNotes.x = 1.5;
				for (i=0; i<(obj_song.notes*2); i++) {
					setNoteOffsetX(i, moveAmmo)
					noteTweenOffsetX(i , 0, crochet, "quadout")
					
					setNoteOffsetY(i, (beat%2 == 0 ? moveAmmo : -moveAmmo) * ((i%4)>1 ? -1 : 1))
					noteTweenOffsetY(i , 0, crochet, "quadout");

					setNoteOffsetAngle(i, (beat%2 == 0 ? 10 : -10) * ((i%4)>1 ? -1 : 1))
					noteTweenAngle(i , 0, crochet, "quadout");
				}
			})
			
			onBeatTill(320,1422/4,function() {
				var crochet = obj_song.crochet
				var moveAmmo = 15;
				
				drunkNotes.z = 1;
				for (i=0; i<(obj_song.notes*2); i++) {
					setNoteOffsetX(i, moveAmmo)
					noteTweenOffsetX(i , 0, crochet, "quadout")
					
					setNoteOffsetY(i, (beat%2 == 0 ? moveAmmo : -moveAmmo) * ((i%4)>1 ? -1 : 1))
					noteTweenOffsetY(i , 0, crochet, "quadout");

					setNoteOffsetAngle(i, (beat%2 == 0 ? 10 : -10) * ((i%4)>1 ? -1 : 1))
					noteTweenAngle(i , 0, crochet, "quadout");
					
					setNoteOffsetDirection(i, (beat%2 == 0 ? 10 : -10) * ((i%4)>1 ? -1 : 1))
					noteTweenDirection(i , 0, crochet, "quadout")
					
					drunkNotes.x = 1.5;
					modifierTweenX(drunkNotes,0,crochet,"quadout")
				}
			})
		
			onBeatTill(160,189,function() {
				var crochet = obj_song.crochet
				var moveAmmo = 10;
				for (i=0; i<(obj_song.notes*2); i++) {
					setNoteOffsetX(i, (beat%2 == 0 ? moveAmmo : -moveAmmo))
					noteTweenOffsetX(i , 0, crochet, "quadout")

					setNoteOffsetAngle(i, (beat%2 == 0 ? 10 : -10))
					noteTweenAngle(i , 0, crochet, "quadout");

					setNoteOffsetDirection(i, (beat%2 == 0 ? 10 : -10))
					noteTweenDirection(i , 0, crochet, "quadout")
				}
			})
			
			onBeatTill(192,222,function() {
				var crochet = obj_song.crochet
				var moveAmmo = 10;
				for (i=0; i<(obj_song.notes*2); i++) {
					setNoteOffsetX(i, (beat%2 == 0 ? moveAmmo : -moveAmmo))
					noteTweenOffsetX(i , 0, crochet, "quadout")

					setNoteOffsetAngle(i, (beat%2 == 0 ? 10 : -10))
					noteTweenAngle(i , 0, crochet, "quadout");

					setNoteOffsetDirection(i, (beat%2 == 0 ? 10 : -10))
					noteTweenDirection(i , 0, crochet, "quadout")
					
					drunkNotes.y = 1.5;
					modifierTweenY(drunkNotes,0,crochet,"quadout")
				}
			})
			
			addStepEvent(1422,function(){
				var crochet = obj_song.crochet
				
				flxVel=true;
				allVel=3;
				for (i=0; i<(obj_song.notes*2); i++) {
					noteTweenAlpha(i,0,crochet*6,"quadout")
				}
			})
			
		break;
		
		case mus_w3s2:
			var startBeat = 48;			
			for (i=0; i<(obj_song.notes*2); i++) {
				onEvenBeatTill(startBeat,8*2+48,function() {
					var crochet = obj_song.crochet
					
					drunk.x = beat%4==0 ? 2 : -2;
					drunk.y = beat%4==0 ? 3 : -4;
					drunk.z = beat%4==0 ? 1 : -1;
					modifierTweenX(drunk,0,crochet,"quadout")
					modifierTweenY(drunk,0,crochet,"quadout")
					modifierTweenZ(drunk,0,crochet,"quadout")
					
					tipsy.x = beat%4==0 ? 2 : -2;
					modifierTweenX(tipsy,0,crochet,"quadout")
					
					strumlineRotate.z = beat%4==0 ? 100 : -80;
					strumlineRotate.y = beat%4==0 ? 20 : -20;
					strumlineRotate.x = beat%4==0 ? 20 : -20;
					modifierTweenZ(strumlineRotate,90,crochet,"quadout")
					modifierTweenY(strumlineRotate,0,crochet,"quadout")
					modifierTweenX(strumlineRotate,0,crochet,"quadout")
					
					for (i=0; i<(obj_song.notes*2); i++) {
						var strData = getStrumOffsetStruct(i);
						strData.scale.x=0.8;
						tweenProperty(strData.scale,"x",1,crochet,"quadout")
						
						if ((i%2==0 && !(beat%4==0)) || (beat%4==0 && !(i%2==0))) {
							strData.y=beat%4==0 ? -50 : 50;
							strData.z=beat%4==0 ? -5 : 5;
							strData.angle=random_range(-20,20);
							
							tweenProperty(strData,"y",0,crochet,"sineout")
							tweenProperty(strData,"z",1,crochet,"sineout")
							tweenProperty(strData,"angle",0,crochet,"sineout")
						}
					}
				})
				
				onEvenBeatTill(65,65 + 2*(7*6-3),function() {
					var crochet = obj_song.crochet
					
					tipsy.y = beat%4==0 ? 1 : -1;
					modifierTweenY(tipsy,0,crochet,"quadout")
				})	
			}
		break;
		default:
		
		break;
	}
}

_step = function(step) { // steps
	self.step = step;
	iterateStruct(stepEvents,function(t,funcs) {
		if step>=t {
			iterateArray(funcs,function(_,func) {
				func(step);
			})
			variable_struct_remove(stepEvents,t); // clear
		}
	})
}

_beat = function(beat) { // beats
	self.beat = beat;
	iterateStruct(beatEvents,function(t,funcs) {
		if beat>=t {
			iterateArray(funcs,function(_,func) {
				func(beat);
			})
			variable_struct_remove(beatEvents,t); // clear
		}
	})
}