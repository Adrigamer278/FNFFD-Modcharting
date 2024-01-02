/// @description scr_songint(songtype,song)
/// @param songtype
/// @param song

function scr_songint(argument0, argument1) {
	//setting stage
	if obj_stats.joshmode=false {
	    switch(argument0) {
	        case 1: //BONUS!!
	            switch(argument1) {
	                case 3: //cinemassacre
	                    song=mus_cinemassacre
	                    ntsc=true
	                    //background
	                    obj_backgroundp1.sprite_index=spr_danbg
	                    //characters
	                    scr_charset(0,-7)
	                    scr_charpos(200,297,460,297,-1,-1)
	                    //camera
	                    with(obj_camera) {
	                        xgo[playerc]=obj_player.x-50
	                        xgo[badguyc]=obj_badguy.x+50
	                        xgo[mainc]=324
	                        x=xgo[mainc]
	                    }
	                    //pause music variables
	                    pausesong=-1
	                    pausevol=0
	                    pausetime=0
	                break;
	                case 2: //break it down
	                    song=mus_breakitdown
	                    weeknd3=true
	                    obj_song.weeknd3m=0.65
	                    ntsc=true
	                    //background
	                    obj_backgroundp1.sprite_index=spr_bidbg
	                    //characters
	                    scr_charset(0,-6)
	                    scr_charpos(120,320,pbx,pby,200,lby)
	                    obj_badguy.everybeat=2
	                    obj_player.everybeat=2
	                    obj_lady.sprite_index=spr_georgetv
	                    obj_lady.drawgirl=false
	                    //camera
	                    with(obj_camera) {
	                        xgo[playerc]=300//320
	                        ygo[playerc]=250//200
	                        big[playerc]=200
	                        xgo[badguyc]=123
	                        ygo[badguyc]=200
	                        big[badguyc]=200
	                        xgo[mainc]=200
	                        ygo[mainc]=200
	                        big[mainc]=400
	                    }
	                break;
	                case 1: //channelsurf & nermal
	                    song=mus_channelsurf
	                    ntsc=true
	                    //background
	                    obj_backgroundp1.sprite_index=spr_screensurfingbg
	                    //character
	                    scr_charset(0,-4)
	                    scr_charpos(120,320,pbx,pby,200,lby+10)
	                    obj_lady.sprite_index=spr_cstv
	                    obj_lady.drawgirl=false
	                    //nermal
	                    instance_create(obj_badguy.x-65,obj_badguy.y+5,obj_nermal)
	                    obj_nermal.depth=obj_badguy.depth-1
	                break;
	                case 0: //infographic
	                    song=mus_frostbytep1
	                    ntsc=true
	                    //background
	                    obj_backgroundp1.sprite_index=spr_georgeback
	                    instance_create(-100,114,obj_georgetrain)
	                    //positioning
	                    obj_player.x=320
	                    obj_player.y=320
	                    obj_badguy.x=64
	                    obj_badguy.y=320
	                    //characters
	                    scr_charset(0,-2)
	                    scr_charpos(64,320,320,320,200,lby+10)
	                    //camera
	                    with(obj_camera) {
	                        xgo[playerc]=290
	                        ygo[playerc]=272
	                        big[playerc]=200
	                        xgo[badguyc]=96
	                        ygo[badguyc]=200
	                        big[badguyc]=200
	                        xgo[mainc]=200
	                        ygo[mainc]=200
	                        big[mainc]=400
	                    }
	                    //kill lady (canon)
	                    obj_lady.x=200
	                    obj_lady.y+=10
	                    obj_lady.sprite_index=spr_georgetv
	                    obj_lady.drawgirl=false
	                break;
	                case 0.1:
	                    //song
	                    skipto=0
	                    song=mus_frostbytep2
	                break;
	            }
	        break;
	        case 0:
	            switch(argument1) {
	                case 0: //tutorial
	                    song=mus_tutorial
	                    //background
	                    obj_backgroundp1.sprite_index=spr_tutorialback
	                    instance_create(130,189,obj_tutorialguys)
	                    //characters
	                    scr_charset(1,0)
	                    scr_charpos(64,320,300,320,-1,-1)
	                    //camera
	                    with(obj_camera) {
	                        xgo[playerc]=290
	                        ygo[playerc]=272
	                        big[playerc]=200
	                        xgo[badguyc]=96
	                        ygo[badguyc]=272
	                        big[badguyc]=200
	                        xgo[mainc]=200
	                        ygo[mainc]=200
	                        big[mainc]=400
	                    }
	                break;
	                case 1: //summer
	                    song=mus_w1s1
	                    //background
	                    obj_backgroundp1.sprite_index=spr_houseback1
	                    obj_backgroundp1.y=87
	                    //character
	                    scr_charset(0,1)
	                    scr_charpos(244,368,578,368,420,343)
	                    //camera
	                    with(obj_camera) {
	                        xgo[playerc]=559
	                        ygo[playerc]=260
	                        big[playerc]=400
	                        xgo[badguyc]=260
	                        ygo[badguyc]=260
	                        big[badguyc]=400
	                        xgo[mainc]=420
	                        ygo[mainc]=260
	                        big[mainc]=400
	                        x=xgo[mainc]
	                        y=ygo[mainc]
	                    }
	                break;
	                case 2: //stars
	                    song=mus_w1s2
	                    //background
	                    obj_backgroundp1.sprite_index=spr_houseback1
	                    obj_backgroundp1.y=87
	                    //character
	                    scr_charset(0,1)
	                    scr_charpos(244,368,578,368,420,343)
	                    //camera
	                    with(obj_camera) {
	                        xgo[playerc]=559
	                        ygo[playerc]=260
	                        big[playerc]=400
	                        xgo[badguyc]=260
	                        ygo[badguyc]=260
	                        big[badguyc]=400
	                        xgo[mainc]=420
	                        ygo[mainc]=260
	                        big[mainc]=400
	                        x=xgo[mainc]
	                        y=ygo[mainc]
	                    }
	                break;
	                case 3: //girl next door
	                    song=mus_w2s1
	                    //background
	                    obj_backgroundp1.sprite_index=spr_busback
	                    //characters
	                    scr_charset(0,2)
	                    scr_charpos(190,303,448,306,313,262)
	                    //camera
	                    with(obj_camera) {
	                        xgo[playerc]=397
	                        ygo[playerc]=219
	                        big[playerc]=400
	                        xgo[badguyc]=213
	                        ygo[badguyc]=201
	                        big[badguyc]=400
	                        xgo[mainc]=308
	                        ygo[mainc]=197
	                        big[mainc]=400
	                        x=xgo[mainc]
	                        y=ygo[mainc]
	                    }
	                    //I never made a script for setting lady's sprites oops
	                    var k;
	                    for (k=0;k<8;k++) {
	                        if k%2=0 or k=0 {
	                            obj_lady.sprite[k]=spr_ladyidleleftw2
	                        } else {
	                            obj_lady.sprite[k]=spr_ladyidlerightw2
	                        }
	                    }
	                break;
	                case 4: //gamejack
	                    song=mus_w2s2
	                    //background
	                    obj_backgroundp1.sprite_index=spr_busback
	                    //characters
	                    scr_charset(1,0)
	                    scr_charpos(170,303,420,306,313,262)
	                    obj_lady.drawgirl=false
	                    //camera
	                    with(obj_camera) {
	                        xgo[playerc]=397
	                        ygo[playerc]=200
	                        big[playerc]=400
	                        xgo[badguyc]=213
	                        ygo[badguyc]=201
	                        big[badguyc]=400
	                        xgo[mainc]=308
	                        ygo[mainc]=200//197
	                        big[mainc]=400
	                    }
	                break;
	                case 5: //twinkle
	                    song=mus_w3s1
	                    weeknd3=true
	                    weeknd3m=0.5
	                    obj_song.mmm=0.6
	                    obj_song.mmmm=0.6
	                    //background
	                    obj_backgroundp1.image_alpha=0
	                    //characters
	                    scr_charset(0,4)
	                    scr_charpos(185,bby,400,pby,276,310)
	                    obj_lady.image_index=spr_speakeroff
	                    //still didn't make that script
	                    var k;
	                    for (k=0;k<8;k++) {
	                        obj_lady.sprite[k]=spr_cdboyidlestill
	                    }
	                    //camera
	                    if obj_stats.downscroll=true {
	                        var pluscamera=35;
	                    } else {
	                        var pluscamera=0;
	                    }
	                    //camera
	                    with(obj_camera) {
	                        xgo[playerc]=358
	                        ygo[playerc]=200+pluscamera
	                        big[playerc]=400
	                        xgo[badguyc]=210//176
	                        ygo[badguyc]=200+pluscamera
	                        big[badguyc]=400
	                        xgo[mainc]=280
	                        ygo[mainc]=200+pluscamera
	                        big[mainc]=400
	                        //set camera pos
	                        x=280
	                        y=200
	                    }
	                    //dude and buddy anime segment
	                    dudeasurf=-1
	                    buddyasurf=-1
	                    //tv screen "id"s
	                    var tv;
	                    for(tv=0;tv<=15;tv++) {
	                        screen[tv,0]="dark"
	                        screen[tv,1]=surface_create(45,45)
	                    }
	                    //dingle
	                    dingle=surface_create(45,45)
	                break;
	                case 6: //tsunami
	                    song=mus_w3s2
	                    weeknd3=true
	                    weeknd3m=0
	                    obj_song.mm="nothing"
	                    //characters
	                    scr_charset(0,3) //5
	                    scr_charpos(185,bby,425,pby,276,310)
	                    with(obj_badguy) { cdboy=surface_create(200,200); }
	                    instance_create(obj_player.x-70,obj_player.y-6,obj_nermal)
	                    with(obj_nermal) {
	                        image_xscale=1.125 //I drew buddy too small so this is my admititly lazy fix for that :P
	                        idle[playerc]=spr_buddyidlet
	                        anim[playerc]=spr_buddyleftt
	                        anim[badguyc]=spr_buddydownt
	                        anim[mainc]=spr_buddyupt
	                        anim[3]=spr_buddyrightt
	                        pause=spr_buddypauset
	                    }
	                    obj_lady.image_index=spr_speakeroff        
	                    //camera
	                    if obj_stats.downscroll=true {
	                        var pluscamera=35;
	                    } else {
	                        var pluscamera=0;
	                    }
	                    //camera
	                    with(obj_camera) {
	                        xgo[playerc]=385
	                        ygo[playerc]=225//+pluscamera
	                        big[playerc]=200
	                        xgo[badguyc]=180
	                        ygo[badguyc]=235//+pluscamera
	                        big[badguyc]=200
	                        xgo[mainc]=280
	                        ygo[mainc]=200+pluscamera
	                        big[mainc]=400
	                        //set camera pos
	                        x=280
	                        y=200
	                    }
	                    //tv screen "id"s
	                    var tv;
	                    for(tv=0;tv<=15;tv++) {
	                        screen[tv,0]="colorlight"
	                        screen[tv,1]=0
	                    }
	                break;
	                case 7: //satellite
	                    song=mus_w4s1
	                    obj_song.event=3
	                    //background
	                    obj_backgroundp1.sprite_index=spr_gunkstage1
	                    //characters
	                    scr_charset(0,6)
	                    scr_charpos(340,306,570,301,451,292)
	                    obj_player.image_alpha=0
	                    obj_badguy.image_alpha=0
	                    obj_lady.image_alpha=0
	                    obj_lady.drawgirl=false
	                    for (k=0;k<8;k++) {
	                        if k%2=0 or k=0 {
	                            obj_lady.sprite[k]=spr_ladycidleleft
	                        } else {
	                            obj_lady.sprite[k]=spr_ladycidleright
	                        }
	                    }
	                    //camera
	                    with(obj_camera) {
	                        xgo[playerc]=605 //placeholder
	                        ygo[playerc]=240
	                        big[playerc]=400
	                        xgo[badguyc]=298 //placeholder
	                        ygo[badguyc]=200
	                        big[badguyc]=400
	                        xgo[mainc]=451
	                        ygo[mainc]=200
	                        big[mainc]=400
	                        x=xgo[place]
	                        y=ygo[place]
	                        image_xscale=big[place]
	                    }
	                    //scr_screenborder(40,0.5);
	                break;
	                case 8: //starfire
	                    song=mus_w4s2
	                    hideui=true
	                    mmmmmmm=9999
	                    //background
	                    obj_backgroundp1.sprite_index=spr_gunkstage1
	                    //surface variables
	                    gunkscreen=-1
	                    dudescreen=-1
	                    gunkfreeze=-1
	                    dudefreeze=-1
	                    //characters
	                    scr_charset(0,7)
	                    scr_charpos(308,306,615,311,451,292)
	                    //STILL HAVEN'T MADE THAT "SET LADY SPRITES" SCRIPT
	                    var k;
	                    for (k=0;k<8;k++) {
	                        obj_lady.sprite[k]=spr_ladysad
	                    }
	                    //camera
	                    with(obj_camera) {
	                        xgo[playerc]=605
	                        ygo[playerc]=240
	                        big[playerc]=400
	                        xgo[badguyc]=obj_badguy.x
	                        ygo[badguyc]=200
	                        big[badguyc]=400
	                        xgo[mainc]=451
	                        ygo[mainc]=200
	                        big[mainc]=400
	                        x=xgo[place]
	                        y=ygo[place]
	                        image_xscale=big[place]
	                    }
	                    //scr_screenborder(60,0.85);
	                break;
	            }
	        break;
	    }
	}
	//load song
	
	var songLength = audio_sound_length(obj_song.song);
	
	if songLength <= 1 && (!(os_browser == browser_not_a_browser) || os_type == os_operagx) {
		return
	}
	
	fileExt = ".swows"
	
	var searchFile = function() {
		filename=(string(working_directory)+string("songs\\")+string(audio_get_name(song))+string(fileExt))
		if file_exists(filename) { file = file_text_open_read(filename) }
	}
	
	searchFile();
	
	if !file_exists(filename) { fileExt = ".json"; searchFile() }
	if !file { return action_message("Song chart not found!") }
	
	var strumLine=ds_list_create()	
	var allNotes=[]
	var allEvents=ds_list_create()
	
	if fileExt = ".swows" {
		file_text_readln(file) //skip useless line
		obj_song.bpm=file_text_read_real(file) //load bpm
		file_text_readln(file)
		obj_song.notespeed=file_text_read_real(file) //load notespeed
		file_text_readln(file)
		file_text_readln(file) //skip the other useless line
		//note loading variables
		var b; //down
		var bb; //across
		
		var songlong=round(((songLength/60)*obj_song.bpm*4));
		var nosp=obj_song.notespeed //notespeed with no identifier
		//note starting position
		if obj_stats.downscroll = false {
		    starty=48
		} else {
		    starty=352
		}
		obj_song.y=starty
		//load notes
		for (bb=0;bb<8;bb++) {
		    //x position
		    if bb<4 {
		        var myx=32+(44*bb)
		    } else {
		        var myx=234+(44*(bb-4))
		    }
		    //ui notes
		    var sucker=instance_create(myx,starty,obj_uinotes);
		    sucker.note=bb;
			
			ds_list_add(strumLine,sucker);
		    //note... notes
		    for (b=0; b<songlong; b++) {
		        if b=0 {
		            var event=0
		        }
		        note[bb,b]=file_text_read_real(file)
		        file_text_readln(file)
		        if note[bb,b]!=0 {
		            //create note
		            var dingus=instance_create(myx,(b*48*nosp),obj_note); 
		            dingus.note=bb
		            dingus.type=note[bb,b]
		            //position holding
		            dingus.xx=dingus.x
		            dingus.yy=dingus.y
					
		            //solid checking
		            if note[bb,b]=4 or note[bb,b]=5 or note[bb,b]=6 or note[bb,b]=7 or note[bb,b]=10 or note[bb,b]=11 {
		                dingus.solid=false
		            } else {
		                dingus.solid=true
		            }
					
					array_push(allNotes,dingus);
		            //event note
		            if note[bb,b]=10 {
		                dingus.event=event
		                event++
						
						ds_list_add(allEvents,dingus);
		            }
		        }
		    }
		}	
	}
	else if fileExt = ".json" {
		var parsedSong=scr_jsonImport(filename, json_parse)
		var songData=parsedSong.song
		
		obj_song.song=song
		obj_song.bpm=songData.bpm
		obj_song.notespeed=songData.speed*0.4
		obj_song.notes=4 // extra keys later
		
		var strumY = 48;
		if obj_stats.downscroll=true {
			strumY = 352;
		}
		
		var dingus;
		
		// camera focus
		var createCameraChange = function(strumT,dudeCam) {
			var posFromStrum=(strumT/60*obj_song.bpm*4)*(48*obj_song.notespeed)
			
			var dingus = instance_create(0,posFromStrum,obj_note)
		    dingus.note = 1
			
			dingus.solid=false
		    
			// no both cam....
			// type for it is 6 btw
			if (dudeCam) {
				dingus.type = 4;
			} else {
				dingus.type = 5;
			}
			
			array_push(allNotes,dingus);
		}
		
		// create strums (this is why rainbow doesnt have left,down,up strums, there arent notes on that lane so game doesnt spawn them)
		for (bb=0; bb<obj_song.notes*2; bb++) {
			var strum;
			
			if bb<obj_song.notes {
		        var myx=32+(44*bb)
		    } else {
		        var myx=234+(44*(bb-4))
		    }
			
			strum = instance_create(myx,strumY,obj_uinotes)
			strum.note=bb
			
			ds_list_add(strumLine,strum);
		}
			
		var event=0
		// note: events are not sorted by strumtime, so have them sorted on the json already
		
		// wrapping for event json support
		if variable_struct_exists(songData,"notes") {
			var strumTime = 0;
			var curBPM = songData.bpm
		
			for (sectionnum=0; sectionnum<array_length(songData.notes); sectionnum++) {			
				var sectionData = songData.notes[sectionnum]
			
				var sectionBpm = variable_struct_get(sectionData,"changeBPM") ? sectionData.bpm : curBPM;
			
				curBPM = sectionBpm;
			
				var sectionBeats = (variable_struct_get(sectionData,"sectionBeats") != undefined) ? variable_struct_get(sectionData,"sectionBeats") : 4;
				strumTime += sectionBeats * (1000 * 60 / curBPM);
			
				createCameraChange(strumTime,sectionData.mustHitSection);
			
				for (noteIndex=0; noteIndex<array_length(sectionData.sectionNotes); noteIndex++) {
					var noteData = sectionData.sectionNotes[noteIndex]
				
					var sTime=noteData[0]/1000
					var noteNum=noteData[1]%(obj_song.notes*2) // tricky compliance / old note types
					var Length=noteData[2]
					var noteType= array_length(noteData) >= 4 ? noteData[3] : undefined;
				
					if sectionData.mustHitSection == true {
						if noteNum >= obj_song.notes { noteNum= noteNum - obj_song.notes } else { noteNum= noteNum + obj_song.notes }
					}
					
					if noteNum<obj_song.notes {
						var myx=32+(44*bb)
					} else {
						var myx=234+(44*(bb-4))
					}
				
					var posFromStrum=(sTime/60*obj_song.bpm*4)*(48*obj_song.notespeed)
					
					// strumFromPos = 60*(yPos/(obj_song.bpm*4*48*obj_song.notespeed))*1000
					// (if you want to add modcharts ofc, simple ones like moving the strums will work but drunk effects and all may not))
				
					dingus = instance_create(myx,posFromStrum,obj_note)
			        dingus.note = noteNum
		       
					dingus.type = 1
					dingus.solid=true
				
					if noteType = "Hurt Note" {
						dingus.type = 3
					} else if noteType = "GF Sing" {
						dingus.type = 2 // buddy
					} else if noteNum = -1 {
						// event note ig
						dingus.solid=false
						if noteType = "Event" {
							dingus.type = 10
						} else if noteType = "Hey!" {
							dingus.type = 7
						}
						Length = 0;
					} 
				
					array_push(allNotes,dingus);
			       
					//event notes
					
			        if dingus.type=10 {
			            dingus.event=event
			            event++
						ds_list_add(allEvents,dingus);
					}
				
					if Length>0 {
						var stepCrochet=(((60 / obj_song.bpm))/4) // todo: replace with conductor ig
						sTime = sTime + stepCrochet/4
						for (sus=0; sus<((Length/(stepCrochet*1000))-1); sus++) {
							sTime = sTime + stepCrochet // + stepCrochet
							var posFromStrum=(sTime/60*obj_song.bpm*4)*(48*obj_song.notespeed)
							
							if noteNum<obj_song.notes {
								dingus = instance_create(myx,posFromStrum,obj_note)
					        } else {
								dingus = instance_create(myx,posFromStrum,obj_note)
					        }
					        dingus.note = noteNum;
							dingus.type = 8;
							dingus.solid=true;
							
							array_push(allNotes,dingus);
						
							if noteType = "Hurt Note" {
								dingus.type = 3
							} else if noteType = "GF Sing" {
								dingus.type = 9 // sustain buddy
							}
						}
					}
				}
			}	
		}
		
		if variable_struct_exists(songData,"events") {
			for (eventSec=0; eventSec<array_length(songData.events); eventSec++) {	
				var eventData = songData.events[eventSec]
			
				var sTime=eventData[0]/1000
				
				var posFromStrum=(sTime/60*obj_song.bpm*4)*(48*obj_song.notespeed)
				
				for (eventInd=0; eventInd<array_length(eventData[1]); eventInd++) {
					var eventData = eventData[1][eventInd]
				
					var eventName=eventData[0]
					
					var value1=eventData[1]
					var value2=eventData[2]
				
					var noteNum = 6;
				
					dingus = instance_create(apartg+((noteNum-obj_song.notes)*spacex) + funnySpace,posFromStrum,obj_note)
			        dingus.note = noteNum
					
					if eventName = "Event" {
						dingus.type = 10
					} else if eventName = "Hey!" {
						dingus.type = 7
					}
					
					array_push(allNotes,dingus);
		       
					if dingus.type = 10 {
						dingus.event=event
						event++
						
						ds_list_add(allEvents,dingus);
					}
				}
			}
		}
	}
	if (file) { file_text_close(file) };
	
	array_foreach(allNotes,function(note) {instance_deactivate_object(note)})
	
	array_sort(allNotes,function(n1,n2) {
		return (n1.strumTime >= n2.strumTime) ? 1 : -1
	})
	
	obj_song.strums = strumLine;
	obj_song.allNotes = allNotes;
	obj_song.allEvents = allEvents;
	
	var obj = instance_create(0,0,obj_modchart)

	for (bb=0;bb<(obj_song.notes*2);bb++) {
		variable_struct_set(obj,"strum"+string(bb),{
			x:0,
			y:0,
			z:0,
			alpha:1,
			angle:0,
			incomingAngle:0,
		});
	}
	
}
