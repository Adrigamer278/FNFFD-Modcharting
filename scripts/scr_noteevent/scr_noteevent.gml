function scr_noteevent(argument0, argument1) {
	var song=argument0;
	var event=argument1;
	switch(song) {
	    case mus_cinemassacre:
	        switch(event) {
	            case 0:
	                obj_song.event=1
	                obj_player.image_alpha=1
	                obj_badguy.image_alpha=1
	                obj_backgroundp1.image_alpha=1
	                //camera
	                scr_cbounce(5,5,5,0,1)
	                with(obj_camera) {
	                    place=badguyc
	                    ease=20
	                    big[badguyc]=200
	                    xgo[badguyc]-=40
	                    x=xgo[badguyc]
	                    y=ygo[badguyc]+80
	                    image_xscale=big[badguyc]-70
	                }
	            break;
	            case 1:
	                with(obj_camera) {
	                    ease=40
	                    xgo[badguyc]=obj_badguy.x+50
	                    big[badguyc]=400
	                }
	            break;
	            case 3:
	                instance_create(0,0,obj_danbg)
	                scr_cbounce(5,5,5,5,2)
	            break;
	            case 4: //COWBOY
	                instance_create(obj_camera.xgo[mainc],obj_player.y-20,obj_tutorialtable)
	                obj_tutorialtable.sprite_index=spr_cowboy
	                obj_tutorialtable.image_blend=c_white
	                obj_tutorialtable.depth=obj_player.depth+1
	                with(obj_camera) {
	                    big[badguyc]=200
	                    xgo[badguyc]-=30
	                    //ygo[badguyc]+=30
	                    x=xgo[badguyc]
	                    y=ygo[badguyc]
	                    image_xscale=big[badguyc]
	                }
	                //camera
	                scr_cbounce(0,0,0,0,2)
	                //slick and nermal
	                obj_song.mmmm=112 //222
	            break;
	            case 5: //reset camera after cowboy
	                with(obj_camera) {
	                    big[badguyc]=400
	                    xgo[badguyc]+=30
	                    ygo[badguyc]=200
	                }
	                scr_cbounce(5,5,5,5,2)
	            break;
	            case 7:
	                //reset camera
	                obj_camera.place=mainc
	                with(obj_danbg) {
	                    x=-300
	                    waittime=0
	                    walkout=0
	                    behind=picture
	                    phase="walkin"
	                    picture++
	                }
	                //technicall difficulties
	                //obj_song.event="techdiff"
	                //instance_create(0,0,obj_fadein)
	                //obj_fadein.color=c_white
	            break;
	            case 8:
	                obj_song.event=1
	                scr_cbounce(5,5,5,5,2)
	                //instance_create(0,0,obj_fadein)
	                //obj_fadein.color=c_white
	            break;
	            case 9: //cin
	                with(obj_song) {
	                    mmmmm=0.5
	                    mmmmmm=0
	                    mmmmmmm=1
	                }
	            break;
	            case 10: //e
	                obj_song.mmmmmmm=2
	            break;
	            case 11: //mass
	                obj_song.mmmmmmm=3
	            break;
	            case 12: //a
	                obj_song.mmmmmmm=4
	            break;
	            case 13: //cre
	                obj_song.mmmmmmm=5
	            break;
	            case 14: //cine
	                obj_song.mmmmmmm=1
	            break;
	            case 15: //e
	                obj_song.mmmmmmm=2
	            break;
	            case 16: //mass
	                obj_song.mmmmmmm=3
	            break;
	            case 17: //a
	                obj_song.mmmmmmm=4
	            break;
	            case 18: //cre
	                obj_song.mmmmmmm=5
	            break;
	            case 19: //dork spaceship
	                obj_song.mm=600
	                obj_song.mmmmm=0
	            break;
	            case 21:
	                with(obj_danbg) {
	                    x=-300
	                    waittime=0
	                    walkout=0
	                    behind=picture
	                    phase="walkin"
	                    picture++
	                }
	                obj_song.mmmmmmm=0
	            break;
	            case 23: //cromp dinos
	                instance_destroy(obj_tutorialtable)
	                var crompdinoa=instance_create(obj_camera.xgo[mainc],obj_badguy.y-20,obj_tutorialtable);
	                crompdinoa.sprite_index=spr_cromposaura
	                crompdinoa.depth=obj_badguy.depth+1
	                obj_song.mmm=650
	                scr_cbounce(0,0,0,0,2)
	                //flash
	                instance_create(0,0,obj_fadein)
	                obj_fadein.color=c_white
	                obj_fadein.time=0.04
	            break;
	            case 24:
	                obj_song.event=1
	                scr_cbounce(5,5,5,5,2)
	                //instance_create(0,0,obj_fadein)
	                //obj_fadein.color=c_white
	            break;
	            default:
	            break;
	        }
	    break;
	    case mus_breakitdown:
	        switch(event) {
	            case 0:
	                with(obj_camera) {
	                    x=xgo[mainc]
	                    y=ygo[mainc]
	                }
	                obj_song.m++
	            break;
	            case 1:
	                obj_song.m++
	            break;
	            case 2:
	                obj_song.m++
	            break;
	            case 3:
	                obj_song.m++
	            break;
	            case 4:
	                obj_song.m++
	            break;
	            case 5:
	                instance_create(0,0,obj_fadein)
	                obj_fadein.color=c_white
	                obj_song.m=0
	                obj_song.mm=-146
	                obj_song.mmm=150*2
	                obj_song.mmmm=-61
	                obj_song.mmmmm=80*2
	                obj_song.event++
	            break;
	            case 6: //start
	                instance_create(0,0,obj_fadein)
	                obj_fadein.color=c_white
	                obj_fadein.time=0.025
	                obj_song.m=0
	                obj_song.mm=20
	                obj_song.mmm=0
	                obj_song.mmmm=0
	                obj_song.mmmmm=0
	                obj_song.event++
	            break;
	            case 7: //camera jump
	                instance_create(0,0,obj_fadein)
	                obj_fadein.color=c_white
	                obj_fadein.time=0.0125
	                obj_fadein.alpha=0.25
	                with(obj_camera) {
	                    place=2
	                    x=xgo[mainc]
	                    y=ygo[mainc]
	                    image_xscale=big[mainc]
	                }
	                //obj_song.mmmmmmm="everybeat" //ok I really should make a object for camera bouncing but whatever
	                scr_cbounce(5,5,5,5,2);
	            break;
	            case 8: //boodooboopto
	                obj_song.event++
	                //obj_song.mmmmmmm="nothing"
	                scr_cbounce(0,0,0,0,2);
					
					obj_player.sprite_index = obj_player.idle[0]
					obj_player.press = false
	            break;
	            case 9: //sad
	                obj_song.mmm=1
	            break;
	            case 10: //more sad
	                obj_song.mmmmm=1
	            break;
	            case 11: //cool sprites
	                scr_charset(5,-6);
	                obj_song.event++
	                obj_song.mm=0
	                obj_song.mmm=0
	                obj_song.mmmm=0
	                obj_song.mmmmm=0
	                //obj_song.mmmmmmm="SWAG!"
	                scr_cbounce(10,10,10,10,2);
					
					obj_player.sprite_index = obj_player.idle[0]
					obj_player.press = false
					
	                obj_player.idleon=obj_badguy.idleon
	                obj_player.x=obj_camera.x+60
	                obj_badguy.x=obj_camera.x-60
	                //flash
	                instance_create(0,0,obj_fadein)
	                obj_fadein.color=c_white
	                //camera stuff
	                with(obj_camera) {
	                    xgo[0]=320
	                    ygo[0]=200
	                    big[0]=400
	                    big[1]=400
	                    big[2]=350
	                    ygo[2]+=30
	                }
	            break;
	            case 12: //here he comes
	                obj_camera.xgo[0]=350
	                obj_song.mm=true
	                obj_song.mmmm=spr_dorkwalk
	            break;
	            case 13: //"yo whats up!"
	                obj_song.mm=false
	                obj_song.mmmm=spr_dorkscared
	                obj_song.mmmmmmm="nothing"
	                with(obj_player) {
	                    press=true
	                    frame=0
	                    sprite_index=spr_dudewhatsup
	                    idle[0]=spr_dudewhat
	                    idle[0]=spr_dudewhat
	                    idle[0]=spr_dudewhat
	                    idle[0]=spr_dudewhat
	                    pause=spr_dudewhat
	                }
	            break;
	            case 14:
	                obj_song.event++
	                scr_charset(5,-6);
	                scr_cbounce(0,0,0,0,2);
	                with(obj_camera) {
	                    place=mainc
	                    ease=40
	                    xgo[0]-=180
	                    obj_camera.x=xgo[mainc]
	                }
	                instance_create(0,0,obj_fadein)
	                obj_fadein.color=c_white
	            break;
	            case 15: //back to business
	                instance_create(0,0,obj_fadein)
	                obj_fadein.color=c_white
	                obj_song.event++
	                //character positions
	                with(obj_lady) {
	                    x=obj_camera.xgo[2]
	                    image_alpha=1
	                    sprite_index=spr_dorktv
	                }
	                with(obj_player) {
	                    x=obj_lady.x+90
	                    y=obj_lady.y+30
	                    image_alpha=1
	                }
	                with(obj_badguy) {
	                    x=obj_lady.x-100
	                    y=obj_lady.y+30
	                    image_alpha=1
	                }
	                //camera
	                scr_cbounce(10,10,10,10,2);
	                with(obj_camera) {
	                    place=mainc
	                    x=xgo[mainc]
	                    y=ygo[mainc]
	                }
	            break;
	        }
	    break;
	    case mus_channelsurf:
	        switch(event) {
	            case 0:
	                instance_create(0,0,obj_fadein)
	                obj_fadein.time=0.035
	            break;
	            case 2:
	                obj_nermal.sprite_index=obj_nermal.idle[0]
	                obj_nermal.image_index=0
	                obj_player.sprite_index=obj_player.idle[0]
	                obj_player.image_index=0
	            break;
	            case 3:
	                //values
	                /*
	                with(obj_song) {
	                    r=251
	                    g=111
	                    b=177
	                    alph=1
	                    m=0
	                    mm=240
	                    mmm=41
	                    mmmm=89
	                    mmmmm=0.55
	                }
	                */
	                with(obj_song) {
	                    m=0
	                    mm=0
	                    mmm=0
	                    mmmm=0.51
	                }
	                scr_cbounce(5,10,5,10,2);
	            break;
	            case 4: //nermal walking left && dude bomb notes
	                obj_nermal.mode="walkl"
	            break;
	            //5 nermal bomb nots
	            case 6: //nermal ugh
	                obj_nermal.hit[0]=true
	                obj_nermal.sprite_index=spr_nermalugh
	            break;
	            case 7: //nermal walk away
	                obj_nermal.mode="walkr"
	            break;
	            case 8: //nermal jumpscare
	                instance_create(200,200,obj_nermaljump)
	            break;
	            //10 dude bomb notes
	            //11 nermal bomb notes
	            case 12:
	                obj_song.mmmmmm=-1
	                obj_song.mmmmm=-140
	                obj_song.mmmmmmm=-140
	                obj_badguy.idle[0]=spr_slickayy
	            break;
	            case 13:
	                instance_create(0,0,obj_fadein)
	                obj_fadein.color=c_white
	                scr_charset(3,-4.1)
	                obj_player.y=350
	                obj_badguy.y=350
	                obj_badguy.x=88
	                obj_camera.image_xscale-=20
	                with(obj_nermal) {
	                        idle[0]=spr_nermalbidle
	                        anim[0]=spr_nermalbleft
	                        anim[1]=spr_nermalbdown
	                        anim[2]=spr_nermalbup
	                        anim[3]=spr_nermalbright
	                        anim[8]=spr_nermalbleft
	                        anim[9]=spr_nermalbdown
	                        anim[10]=spr_nermalbup
	                        anim[11]=spr_nermalbright
	                }
	            break;
	            case 14:
	                obj_song.mmmmm=0
	            break;
	            case 15:
	                obj_nermal.idle[0]=spr_nermalbsmug
	                obj_nermal.sprite_index=obj_nermal.idle[0]
	                obj_song.mmmmm=-140
	            break;
	            case 17:
	                obj_badguy.x=120
	                obj_badguy.y=320
	                obj_player.x=320
	                obj_player.y=320
	                scr_charset(0,-4)
	                instance_destroy(obj_nermal);
	                instance_create(obj_badguy.x-65,obj_badguy.y+5,obj_nermal)
	                obj_song.mmmmm=0
	                obj_song.mmmmmmm=0
	            break;
	            case 24:
	                instance_create(0,0,obj_fadeout)
	                obj_fadeout.roomable=false
	                obj_fadeout.time=0.025
	                obj_fadeout.color=c_white
	            break;
	            case 25:
	                instance_destroy(obj_fadeout)
	                instance_create(0,0,obj_fadein)
	                obj_fadein.color=c_white
	                obj_song.mmmmmm=-2
	            break;
	        }
	        obj_song.event=event+1
	    break;
	    case mus_frostbytep1:
	        switch(event) {
	            case 2:
	                instance_create(0,0,obj_fadein)
	                obj_fadein.time=0.02
	            break;
	            case 3:
	                instance_create(0,0,obj_fadein)
	                obj_fadein.time=0.02
	            break;
	            case 5:
	                instance_create(0,0,obj_fadein)
	                obj_fadein.color=c_white
	                mmmmmm=1
	            break;
	            case 9:
	                instance_create(0,0,obj_fadein)
	                obj_fadein.color=c_white
	                obj_song.m=0
	                mmmmmm=0
	            break;
	            case 13:
	                //instance_destroy(obj_midi_clock);
	                with(obj_song) {
	                    instance_destroy(obj_uinotes) //so theres no duplicates
	                    instance_destroy(obj_note)
	                    audio_stop_sound(songplaying)
	                    songpos=0
	                    if obj_stats.downscroll=false { //reset position
	                        //y=16
	                        y=48
	                    } else {
	                        y=352
	                    }
	                    song=mus_frostbytep2
	                    scr_songint("infographicp2",0); //load part 2
	                    obj_badguy.everybeat=1
	                    songplaying=audio_play_sound(mus_frostbytep2,9999,false) //lpay new song
						audio_sound_pitch(songplaying,obj_song.songRate)
					}
	                //camera reset
	                with(obj_camera) {
	                    place=2
	                    x=xgo[place]
	                    y=ygo[place]
	                    ygo[badguyc]=240
	                    image_xscale=big[place]
	                }
	                obj_stats.skipped=false
	                obj_song.event=0
	            break;
	        }
	        if event!=13 {
	            obj_song.event=event+1
	        }
	    break;
	    case mus_frostbytep2:
	        switch event {
	            case 1:
	                //set fump's notes to fump notes
	                obj_song.baddieicon=spr_fump
	                with(obj_uinotes) {
	                    if note<4 {
	                        sprite=spr_uinotefump
	                    }
	                }
	                instance_create(0,0,obj_fadein)
	                obj_fadein.color=c_white
	            break;
	            case 2:
	                instance_create(0,0,obj_fadein)
	                obj_fadein.color=c_white
	                scr_cbounce(10,10,10,10,1)
	            break;
	            case 3:
	                instance_create(0,0,obj_fadein)
	                obj_fadein.color=c_white
	                scr_cbounce(20,20,20,20,1)
	            break;
	            case 4:
	                instance_create(0,0,obj_fadein)
	                obj_fadein.color=c_white
	                scr_cbounce(0,0,0,0,1)
	            break;
	        }
	        obj_song.event=event+1 //dont ask why this is different then all the other ones lol
	    break;
	    case mus_w1s1:
	        switch(event) {
	            case 0:
	                instance_create(0,0,obj_fadeout)
	                obj_fadeout.color=c_white
	                obj_fadeout.roomable=false
	                obj_fadeout.time=0.02
	            break;
	            case 1:
	                instance_destroy(obj_fadeout)
	                instance_create(0,0,obj_fadein)
	                obj_fadein.color=c_white
	            break;
	            case 2:
	                instance_create(0,0,obj_fadein)
	                obj_fadein.color=c_white
	            break;
	        }
	        obj_song.event=event+1
	    break;
	    case mus_w1s2:
	        switch(event) {
	            case 2:
	                instance_destroy(obj_lady)
	                instance_destroy(obj_backgroundp1)
	                instance_create(0,0,obj_fadein)
	                obj_fadein.color=c_white
	            break;
	            case 4:
	                with(obj_camera) {
	                    x=xgo[mainc]
	                    y=ygo[mainc]
	                }
	                instance_create(0,87,obj_backgroundp1)
	                obj_backgroundp1.sprite_index=spr_houseback1
	                instance_create(420,343,obj_lady)
	                obj_badguy.x+=60
	                obj_player.x-=60
	                instance_create(0,0,obj_fadein)
	                obj_fadein.color=c_white
	            break;
	            case 5:
	                instance_create(0,0,obj_fadein)
	                obj_fadein.color=c_white
	            break;
	            case 8:
	                instance_create(0,0,obj_fadein)
	                obj_fadein.color=c_white
	                obj_badguy.x+=20
	                obj_player.x-=40
	                obj_lady.drawgirl=false
	                instance_create(obj_player.x+45,obj_player.y+5,obj_mimic)
	            break;
	            case 9:
	                obj_badguy.x-=80
	                obj_player.x+=120
	                obj_lady.drawgirl=true
	                instance_destroy(obj_mimic)
	                instance_create(0,0,obj_fadein)
	                obj_fadein.color=c_white
	            break;
	        }
	        obj_song.event=event+1
	    break;
	    case mus_w2s1: //girl next door
	        switch(event) {
	            case 1: //dance
	                instance_create(0,0,obj_fadein)
	                obj_fadein.color=c_white
	                with(obj_badguy) {
	                    idle[0]=spr_cyandanceleftup
	                    idle[1]=spr_cyandanceleftdown
	                    idle[2]=spr_cyandancerightup
	                    idle[3]=spr_cyandancerightdown
	                    numidle=3
	                }
	                with(obj_player) {
	                    idle[0]=spr_dudedanceup
	                    idle[1]=spr_dudedancedown
	                    press=false
	                    numidle=1
	                }
	                instance_create(obj_player.x-50,obj_player.y-10,obj_mimic)
	                with(obj_mimic) {
	                    idle[0]=spr_ladydanceup
	                    idle[1]=spr_ladydancedown
	                    pause=spr_ladydancepause
	                }
	                obj_lady.drawgirl=false
	            break;
	            case 2: //dance end
	                instance_create(0,0,obj_fadein)
	                obj_fadein.color=c_white
	                instance_destroy(obj_mimic)
	                obj_lady.drawgirl=true
	                with(obj_player) {
	                    idle[0]=spr_dudeidle
	                    numidle=0
	                    idleon=0
	                }
	                with(obj_badguy) {
	                    idle[0]=spr_cyanidle
	                    numidle=0
	                    idleon=0
	                }
	            break;
	            case 3: //goin' dark
	                obj_badguy.everybeat=2
	            break;
	            case 6: 
	                instance_create(0,0,obj_fadeout)
	                obj_fadeout.roomable=false
	                obj_fadeout.time=0.022
	                obj_fadeout.color=c_white
	                //resetting idle
	                obj_badguy.idleon=0
	                obj_badguy.numidle=0
	                obj_badguy.everybeat=1
	            break;
	            case 7: //snoring
	                instance_destroy(obj_fadeout)
	                instance_create(0,0,obj_fadein)
	                obj_fadein.color=c_white
	                obj_lady.drawgirl=true
	                obj_lady.image_alpha=1
	                obj_badguy.ayy=spr_cyansnoreup
	                scr_cbounce(10,10,10,10,1)
	            break;
	            case 8:
	                obj_badguy.ayy=spr_cyansnoredown
	                obj_lady.drawgirl=true
	                obj_lady.image_alpha=1
	                with(obj_camera) {
	                    x=xgo[badguyc]
	                    y=ygo[badguyc]
	                    big[badguyc]=200
	                    image_xscale=big[badguyc]
	                }
	                scr_cbounce(0,0,0,0,1)
	            break;
	            case 9:
	                obj_badguy.ayy=spr_cyansnoreup
	            break;
	            case 10:
	                obj_badguy.ayy=spr_cyansnoredown
	            break;
	            case 12:
	                obj_badguy.ayy=spr_cyanayy
	                with(obj_camera) {
	                    xgo[badguyc]=213
	                    ygo[badguyc]=201
	                    big[badguyc]=400
	                }
	                scr_cbounce(10,10,10,10,1)
	            break;
	            case 14:
	                obj_stats.gndscore=obj_song.coolscore
	            break;
	        }
	        obj_song.event=event+1
	    break;
	    case mus_w2s2: //gamejack
	        switch(event) {
	            case 0:
	                obj_lady.sprite_index=spr_TVidle
	                obj_badguy.idle[0]=spr_cdpun
	                obj_badguy.pause=spr_cdpunpause
	            break;
	            case 6:
	                instance_create(0,0,obj_fadeout)
	                obj_fadeout.color=c_white
	                obj_fadeout.time=0.02
	                obj_fadeout.roomable=false
	            break;
	            case 7:
	                scr_charset(2,3)
	                obj_song.m=0
	                obj_lady.sprite_index=spr_speaker
	                instance_destroy(obj_fadeout)
	                instance_create(0,0,obj_fadein)
	                obj_fadein.color=c_white
	                obj_player.image_alpha=1
	                obj_lady.image_alpha=1
	                scr_cbounce(5,5,5,5,2)
	            break;
	            case 10:
	                //audio_play_sound(snd_cdboynice,9999,false)
	            break;
	            case 11:
	                //audio_play_sound(snd_cdboygood,9999,false)
	            break;
	            case 12:
	                //audio_play_sound(snd_cdboyvgood,9999,false)
	            break;
	            case 14:
	                obj_badguy.pause=spr_cdboypausealt
	                obj_lady.sprite_index=spr_speakeroff
	                scr_cbounce(0,0,0,0,1)
	            break;
	            case 15:
	                //audio_play_sound(snd_cdow,9999,false)
	                var ow1 = instance_create(obj_badguy.x-30,obj_badguy.y-130,obj_cdboyow);
	                scr_cbounce(10,10,10,10,1)
	            break;
	            case 16:
	                //audio_play_sound(snd_cdpain,9999,false)
	                var ow2 = instance_create(obj_badguy.x+60,obj_badguy.y-80,obj_cdboyow);
	                ow2.image_index=1
	            break;
	            case 17:
	                //audio_play_sound(snd_cdowch,9999,false)
	                var ow3 = instance_create(obj_badguy.x-30,obj_badguy.y-80,obj_cdboyow);
	                ow3.image_index=2
	            break;
	            case 18:
	                //audio_play_sound(snd_cdbad,9999,false)
	                var ow4 = instance_create(obj_badguy.x+65,obj_badguy.y-130,obj_cdboyow);
	                ow4.image_index=3
	                scr_cbounce(20,10,20,10,1)
	            break;
	            case 21:
	                obj_badguy.ayy=spr_cdboyexplode
	            break;
	            case 22:
	                audio_play_sound(snd_explode,9999,false)
	            break;
	            default:
	            break;
	        }
	        obj_song.event=event+1
	    break;
	    case mus_w3s1: //twinkle
	        switch(event) {
	            case 0:
	                obj_song.screen[5,0]="lightup"
	                obj_song.screen[6,0]="lightup"
	            break;
	            case 1:
	                obj_song.screen[7,0]="lightup"
	                obj_song.screen[8,0]="lightup"
	            break;
	            case 2:
	                obj_song.screen[9,0]="lightup"
	                obj_song.screen[10,0]="lightup"
	            break;
	            case 3:
	                obj_song.screen[11,0]="lightup"
	                obj_song.screen[14,0]="lightup"
	            break;
	            case 4:
	                obj_song.screen[4,0]="lightup"
	            break;
	            case 5:
	                obj_song.screen[3,0]="lightup"
	            break;
	            case 6:
	                obj_song.screen[2,0]="lightup"
	            break;
	            case 7:
	                obj_song.screen[1,0]="lightup"
	            break;
	            case 8:
	                obj_song.screen[0,0]="lightup"
	            break;
	            case 9:
	                obj_song.screen[13,0]="lightup"
	                obj_song.screen[12,0]="lightup"
	            break;
	            case 10:
	                scr_cbounce(20,20,20,20,2)
	            break;
	            case 11:
	                var woah;
	                var k;
	                //change tvs
	                for(woah=0;woah<=15;woah++) {
	                    obj_song.screen[woah,0]=woah
	                }
	                //make cd boy dance!!!
	                for (k=0;k<8;k++) {
	                    if k%2=0 or k=0 {
	                        obj_lady.sprite[k]=spr_cdboyidleleft
	                    } else {
	                        obj_lady.sprite[k]=spr_cdboyidleright
	                    }
	                }
	                instance_create(0,0,obj_fadein)
	                obj_fadein.color=c_white
	                scr_cbounce(10,5,10,5,1)
	            break;
	            case 12:
	                var g;
	                var g;
	                //change tvs
	                for(g=0;g<=15;g++) {
	                    obj_song.screen[g,0]="gogo"
	                }
	            break;
	            case 13:
	                var woah;
	                var k;
	                instance_create(0,0,obj_fadein)
	                obj_fadein.color=c_white
	                obj_song.mmm=0.6
	                obj_song.mmmm=0.6
	                //change tvs
	                for(woah=0;woah<=15;woah++) {
	                    obj_song.screen[woah,0]="dark"
	                }
	                scr_cbounce(0,0,0,0,2)
	            break;
	            case 24:
	                var r;
	                //change tvs
	                for(r=0;r<=15;r++) {
	                    obj_song.screen[r,0]="ray"
	                }
	            break;
	            case 25:
	                var woah;
	                var k;
	                //change tvs
	                for(woah=0;woah<=15;woah++) {
	                    obj_song.screen[woah,0]=woah
	                }
	            break;
	            case 26:
	                instance_create(0,0,obj_fadein)
	                obj_fadein.color=c_white
	                scr_cbounce(10,5,10,5,1)
	            break;
	            case 28: //anime start?
	                scr_cbounce(0,0,0,0,1)
	                //create surfaces
	                with(obj_song) {
	                    //dude
	                    dudeanime=instance_create(room_width,room_height,obj_mimic)
	                    with(dudeanime) {
	                        idle[0]=spr_dude3idle
	                        pause=spr_dude3pause
	                        //regular (never called)
	                        anim[0]=spr_dude3left
	                        anim[1]=spr_dude3down
	                        anim[2]=spr_dude3up
	                        anim[3]=spr_dude3right
	                        //alt
	                        anim[4]=spr_dude3left
	                        anim[5]=spr_dude3down
	                        anim[6]=spr_dude3up
	                        anim[7]=spr_dude3right
	                        //miss
	                        anim[8]=spr_dude3leftmiss
	                        anim[9]=spr_dude3downmiss
	                        anim[10]=spr_dude3upmiss
	                        anim[11]=spr_dude3rightmiss
	                    }
	                    //buddy
	                    buddyanime=instance_create(room_width,room_height,obj_mimic)
	                    with(buddyanime) {
	                        mimiced=obj_badguy //mimic the badguy (duh)
	                        idle[0]=spr_buddyleftanime
	                        pause=spr_buddypauseanime
	                        //grab the earth
	                        anim[1]=spr_buddyholdanime
	                        anim[2]=spr_buddygrabanime
	                        //other animation
	                        anim[4]=spr_buddyleftanime
	                        anim[5]=spr_buddydownanime
	                        anim[6]=spr_buddyupanime
	                        anim[7]=spr_buddyrightanime
	                    }
	                }
	            break;
	            case 29: //make sure camara isn't off
	                with(obj_camera) {
	                    x=xgo[mainc]
	                    y=ygo[mainc]
	                }
	            break;
	            case 31: //up and down
	            break;
	            case 32:
	                //obj_badguy.framerate=0.5
	                //obj_player.framerate=0.5
	            break;
	            case 34:
	                if obj_song.skill>65 {
	                    obj_stats.suckass=true
	                } else {
	                    obj_stats.suckass=false
	                }
	            break;
	        }
	        obj_song.event=event+1
	        obj_song.m=0
	        obj_song.mmm-=0.06
	    break;
	    case mus_w3s2: //tsunami
	        var dudecx=390//385
	        var dudecy=225//215
	        var buddycx=375
	        var buddycy=200
	        switch(event) {
	            case 0: //turn purple
	                obj_song.mmmmmmm++ obj_song.mmmm=0
	            break;
	            case 1: //fade out from purple
	                obj_song.mmmmmmm++ obj_song.mmmm=0
	            break;
	            case 2: //go to uh.... cd-boy's color? green???
	                obj_song.mmmmmmm++ obj_song.mmmm=0
	            break;
	            case 3: //dude and buddy's voices are so angelic the tvs start glowing
	                //screens
	                var tv;
	                for(tv=0;tv<=15;tv++) {
	                    obj_song.screen[tv,0]="white"
	                }
	                obj_song.mmmmmmm++ obj_song.mmmm=0
	            break;
	            case 4: //cd boy goes flubbin crazy
	                //screens
	                var tv;
	                for(tv=0;tv<=15;tv++) {
	                    obj_song.screen[tv,0]="boom-boom"
	                }
	                scr_cbounce(0,40,0,40,1);
	                obj_song.mmm=1
	                obj_song.weeknd3m=0.75
	                scr_charset(0,5)
	                //camera snap
	                with(obj_camera) {
	                    place=badguyc
	                    x=xgo[badguyc]
	                    y=ygo[badguyc]
	                    image_xscale=big[badguyc]-20
	                }
	                instance_destroy(obj_fadeout)
	                instance_create(0,0,obj_fadein)
	                obj_fadein.color=c_white
	                obj_song.mmmmmmm++ obj_song.mmmm=0
	            break;
	            case 5:
	                //obj_song.mm="intense"
	                scr_cbounce(10,20,10,20,1);
	                //screens
	                var tv;
	                for(tv=0;tv<=15;tv++) {
	                    obj_song.screen[tv,0]="bo-bo-bo-bo"
	                }
	            break;
	            case 6:
	                with(obj_camera) {
	                    place=badguyc
	                    x=xgo[badguyc]
	                    y=ygo[badguyc]
	                }
	            break;
	            case 7:
	                with(obj_camera) {
	                    place=1
	                    x=xgo[badguyc]
	                    y=ygo[badguyc]
	                    image_xscale=big[badguyc]
	                }
	                obj_song.mmmmmmm++ obj_song.mmmm=0
	                //color tv
	                var tv;
	                for(tv=0;tv<=15;tv++) {
	                    obj_song.screen[tv,0]="colorlight"
	                    obj_song.screen[tv,1]=0
	                }
	            break;
	            case 8: //fade out
	                obj_song.mmmmmmm++ obj_song.mmmm=0
	                //screen fade
	                instance_create(0,0,obj_fadeout)
	                obj_fadeout.time=0.025
	                obj_fadeout.roomable=false
	                obj_fadeout.depth=999999
	            break;
	            case 9:
	                scr_charset(0,5.1)
	                obj_song.event++
	                scr_cbounce(0,0,0,0,2);
	                with(obj_camera) {
	                    place=mainc
	                    x=xgo[mainc]
	                    y=ygo[mainc]
	                    image_xscale=big[mainc]
	                }
	                //screen is back!
	                instance_destroy(obj_fadeout)
	                instance_create(0,0,obj_fadein)
	                obj_fadein.time=0.08
	                obj_fadein.depth=999999
	            break;
	            case 10: //fade in
	                obj_song.mmmmmmm++ obj_song.mmmm=0
	                //screen fade
	                instance_create(0,0,obj_fadeout)
	                obj_fadeout.roomable=false
	                obj_fadeout.time=0.025
	                obj_fadeout.depth=999999
	            break;
	            case 11:
	                scr_charset(0,5)
	                obj_song.event++
	                //obj_song.mm="intense"
	                scr_cbounce(10,20,10,20,1);
	                with(obj_camera) {
	                    place=badguyc
	                    x=xgo[badguyc]
	                    y=ygo[badguyc]
	                    image_xscale=big[badguyc]
	                }
	                //screen is back!
	                instance_destroy(obj_fadeout)
	                instance_create(0,0,obj_fadein)
	                obj_fadein.time=0.08
	                obj_fadein.depth=999999
	            break;
	            case 12:
	                //obj_song.mm="nothing"
	                scr_cbounce(0,0,0,0,1);
	                obj_song.weeknd3m=obj_song.weeknd3m/2
	            break;
	            case 13:
	                obj_song.weeknd3m=obj_song.weeknd3m/2
	            break;
	            case 14:
	                obj_song.weeknd3m=obj_song.weeknd3m/2
	            break;
	            case 15: //shutting down
	                obj_song.weeknd3m=obj_song.weeknd3m/2
	                obj_song.mmmmmmm++ obj_song.mmmm=0
	            break;
	            case 17: //hide cd boy notes
	                obj_song.mmmmmmm++ obj_song.mmmm=0
	            break;
	            case 19:
	                instance_create(0,0,obj_fadeout)
	                obj_fadeout.color=c_white
	                obj_fadeout.time=0.025
	                obj_fadeout.roomable=false
	            break;
	            case 20: //HOLY CRAP!!!!!!!
	                obj_song.mmmmmmm++ obj_song.mmmm=0
	                obj_song.weeknd3m=1.75
	                scr_cbounce(10,20,10,20,1);
	                instance_destroy(obj_fadeout)
	                instance_create(0,0,obj_fadein)
	                obj_fadein.color=c_white
	                //screens
	                var tv;
	                for(tv=0;tv<=15;tv++) {
	                    obj_song.screen[tv,0]="white"
	                }
	                //cdboy notes
	                with(obj_note) {
	                    if note<=obj_song.notes {
	                        image_alpha=1
	                    }
	                }
	            break;
	            case 21: //crash
	                obj_song.mmmmmmm++ obj_song.mmmm=0
	                //color tv
	                var tv;
	                for(tv=0;tv<=15;tv++) {
	                    obj_song.screen[tv,0]="colorlight"
	                    obj_song.screen[tv,1]=0
	                }
	            break;
	            case 22:
	                obj_song.mmmmmmm++ obj_song.mmmm=0
	            break;
	        }
	    break;
	    case mus_w4s1:
	        switch(event) {
	            case 0:
	                obj_song.event=0
	                with(obj_camera) {
	                    image_xscale=big[mainc]-200
	                    ease=450
	                }
	                //screen flash
	                instance_create(0,0,obj_fadein)
	                obj_fadein.time=0.0025
	                obj_fadein.color=c_white
	                obj_player.everybeat=2
	                obj_badguy.everybeat=2
	            break;
	            case 1:
	                obj_song.event++
	                obj_player.x=625
	                obj_player.y=311
	                obj_player.everybeat=1
	                obj_badguy.x=298
	                obj_badguy.y=306
	                obj_badguy.everybeat=1
	                //reset camera easing
	                with(obj_camera) {
	                    ease=40
	                    image_xscale=big[mainc]
	                }
	            break;
	            case 2:
	                obj_song.event++
	                instance_create(0,0,obj_fadein)
	                obj_fadein.color=c_white
	                scr_cbounce(5,5,5,5,1)
	            break;
	            case 3:
	                obj_song.event=3
	            break;
	            case 4: //DANCE BREAK!!!
	                obj_song.event++
	                with(obj_camera) {
	                    place=mainc
	                    x=xgo[mainc]
	                    y=ygo[mainc]
	                    image_xscale=big[mainc]
	                }
	                obj_lady.drawgirl=false
	                var ladydance=instance_create(540,292,obj_mimic)
	                with(ladydance) {
	                    mimiced=obj_badguy
	                    idle[0]=spr_ladyw4dwatch
	                    idle[1]=spr_ladyw4dwatch
	                    idle[2]=spr_ladyw4dwatch
	                    idle[3]=spr_ladyw4dwatch
	                }
	                var cyandance=instance_create(355,292,obj_mimic)
	                with(cyandance) {
	                    mimiced=obj_badguy
	                    idle[0]=spr_cyanw4dwatch
	                    idle[1]=spr_cyanw4dwatch
	                    idle[2]=spr_cyanw4dwatch
	                    idle[3]=spr_cyanw4dwatch
	                    pause=spr_cyanpause
	                }
	                //gunk dance
	                with(obj_badguy) {
	                    x=obj_camera.x
	                    y+=10
	                    numidle=3
	                    idle[0]=spr_gunkw4d1
	                    idle[1]=spr_gunkw4d2
	                    idle[2]=spr_gunkw4d1
	                    idle[3]=spr_gunkw4d2
	                }
	                obj_song.mmm=obj_badguy.y
	                with(obj_player) {
	                    idle[0]=spr_dudew4dwatch
	                    idle[1]=spr_dudew4dwatch
	                    idle[2]=spr_dudew4dwatch
	                    idle[3]=spr_dudew4dwatch 
	                    sprite_index=idle[0]
	                }
	                //camera flash
	                instance_create(0,0,obj_fadein)
	                obj_fadein.color=c_white
	                obj_fadein.alpha=0.8
	                obj_fadein.time=0.04
	            break;
	            case 5: //dude dance
	                obj_song.mmm=obj_badguy.y
	                with(obj_badguy) {
	                    x=298
	                    y=306
	                    numidle=3
	                    framerate=0.5
	                    idle[0]=spr_gunkpunch
	                    idle[1]=spr_gunkpunch
	                    idle[2]=spr_gunkpunch
	                    idle[3]=spr_gunkpunch
	                }
	                with(obj_player) {
	                    x=obj_camera.x
	                    y+=10
	                    numidle=3
	                    idle[0]=spr_dudew4d1
	                    idle[1]=spr_dudew4d2
	                    idle[2]=spr_dudew4d3
	                    idle[3]=spr_dudew4d4
	                }
	                //lady blush
	                with(obj_mimic) {
	                    if sprite_index=spr_ladyw4dwatch {
	                        idle[0]=spr_ladyw4dwatchb
	                        idle[1]=spr_ladyw4dwatchb
	                        idle[2]=spr_ladyw4dwatchb
	                        idle[3]=spr_ladyw4dwatchb
	                    } else {
	                        idle[0]=spr_cyanw4dwatch
	                        idle[1]=spr_cyanw4dwatch
	                        idle[2]=spr_cyanw4dwatch
	                        idle[3]=spr_cyanw4dwatch
	                        framerate=1
	                    }
	                }
	                //camera flash
	                instance_create(0,0,obj_fadein)
	                obj_fadein.color=c_white
	                obj_fadein.alpha=0.8
	                obj_fadein.time=0.065
	            break;
	            case 6: //cyan dance
	                with(obj_mimic) {
	                    if sprite_index=spr_cyanw4dwatch {
	                        x=obj_player.x
	                        y=302
	                        framerate=0.2
	                        idle[0]=spr_cyanw4d1
	                        idle[1]=spr_cyanw4d3
	                        idle[2]=spr_cyanw4d1
	                        idle[3]=spr_cyanw4d3
	                    } else {
	                        idle[0]=spr_ladyw4dwatch
	                        idle[1]=spr_ladyw4dwatch
	                        idle[2]=spr_ladyw4dwatch
	                        idle[3]=spr_ladyw4dwatch
	                    }
	                }
	                with(obj_badguy) {
	                    idle[0]=spr_gunkboss
	                    idle[1]=spr_gunkboss
	                    idle[2]=spr_gunkboss
	                    idle[3]=spr_gunkboss
	                }
	                with(obj_player) {
	                    x=625
	                    y=311
	                    idle[0]=spr_dudew4dwatch
	                    idle[1]=spr_dudew4dwatch
	                    idle[2]=spr_dudew4dwatch
	                    idle[3]=spr_dudew4dwatch
	                }
	                //camera flash
	                instance_create(0,0,obj_fadein)
	                obj_fadein.color=c_white
	                obj_fadein.alpha=0.8
	                obj_fadein.time=0.065
	            break;
	            case 7:
	                with(obj_badguy) {
	                    numidle=3
	                    idle[0]=spr_gunkpunch
	                    idle[1]=spr_gunkpunch
	                    idle[2]=spr_gunkpunch
	                    idle[3]=spr_gunkpunch
	                }
	                with(obj_mimic) {
	                    if sprite_index=spr_ladyw4dwatch {
	                        x=obj_camera.x
	                        y=302
	                        idle[0]=spr_ladyw4d1
	                        idle[1]=spr_ladyw4d2
	                        idle[2]=spr_ladyw4d1
	                        idle[3]=spr_ladyw4d2
	                    } else {
	                        x=355
	                        y=292
	                        idle[0]=spr_cyanw4dwatch
	                        idle[1]=spr_cyanw4dwatch
	                        idle[2]=spr_cyanw4dwatch
	                        idle[3]=spr_cyanw4dwatch
	                        framerate=1
	                    }
	                }
	                with(obj_player) {
	                    idle[0]=spr_dudew4dwatchb
	                    idle[1]=spr_dudew4dwatchb
	                    idle[2]=spr_dudew4dwatchb
	                    idle[3]=spr_dudew4dwatchb
	                    sprite_index=idle[0]
	                }
	                //camera flash
	                instance_create(0,0,obj_fadein)
	                obj_fadein.color=c_white
	                obj_fadein.alpha=0.8
	                obj_fadein.time=0.065
	            break;
	            case 8:
	                obj_song.event=3
	                obj_badguy.framerate=0.2
	            break;
	            case 9:
	                obj_song.event=5
	                instance_destroy(obj_mimic)
	                scr_charset(0,6)
	                obj_badguy.ayy=spr_gunkinterupt
	                //cyan
	                instance_create(355,292,obj_nermal)
	                obj_nermal.depth=obj_badguy.depth-1
	                with(obj_nermal) {
	                    idle[0]=spr_cyanidle
	                    anim[0]=spr_cyanleft
	                    anim[1]=spr_cyandown
	                    anim[2]=spr_cyanup
	                    anim[3]=spr_cyanright
	                    pause=spr_cyanpause
	                }
	                //lady
	                obj_lady.x=540
	                obj_lady.y=292
	                obj_lady.drawgirl=true
	                for (k=0;k<8;k++) {
	                    if k%2=0 or k=0 {
	                        obj_lady.sprite[k]=spr_ladyidleleft
	                    } else {
	                        obj_lady.sprite[k]=spr_ladyidleright
	                    }
	                }
	                //camera
	                with(obj_camera) {
	                    place=badguyc
	                    ygo[badguyc]=obj_badguy.y-140
	                    big[badguyc]=80
	                    x=xgo[badguyc]
	                    y=ygo[badguyc]
	                    image_xscale=(big[badguyc])-10
	                }
	                scr_cbounce(0,0,0,0,1)
	                //camera flash
	                instance_create(0,0,obj_fadein)
	                obj_fadein.color=c_white
	                obj_fadein.alpha=0.8
	                obj_fadein.time=0.04
	            break;
	            case 11: //surprise! its cyan!
	                obj_camera.big[badguyc]=200
	                obj_camera.xgo[badguyc]+=30
	                obj_camera.ease=15
	                obj_badguy.idle[0]=spr_gunkinterupt2
	                obj_badguy.idle[1]=spr_gunkinterupt2
	                obj_badguy.idle[2]=spr_gunkinterupt2
	                obj_badguy.idle[3]=spr_gunkinterupt2
	            break;
	            case 12:
	                with(obj_camera) {
	                    xgo[badguyc]=obj_badguy.x
	                    ygo[badguyc]=200
	                    big[badguyc]=400
	                    ease=40
	                }
	                scr_cbounce(20,20,20,20,16)
	                //gunk reset
	                instance_create(0,0,obj_fadein);
	                obj_fadein.color=c_white
	                obj_fadein.alpha=0.35
	                obj_fadein.time=0.02
	                scr_charset(0,6)
	            break;
	            case 13:
	                scr_cbounce(20,20,20,20,8)
	            break;
	            //kinda repetitive but whatever lol
	            case 15:
	                scr_cbounce(10,5,10,5,1)
	            break;
	            case 16:
	                scr_cbounce(0,0,0,0,1)
	            break;
	            case 17:
	                scr_cbounce(10,5,10,5,1)
	            break;
	            case 18:
	                scr_cbounce(0,0,0,0,1)
	            break;
	            case 19:
	                scr_cbounce(10,5,10,5,1)
	            break;
	            case 20:
	                scr_cbounce(0,0,0,0,1)
	            break;
	            case 21:
	                scr_cbounce(10,5,10,5,1)
	            break;
	            case 22:
	                scr_cbounce(0,0,0,0,1)
	            break;
	            case 23: //scary
	                with(obj_camera) {
	                    place=mainc
	                    xgo[mainc]=1000
	                    ygo[mainc]=500
	                    x=xgo[mainc]
	                    y=ygo[mainc]
	                }
	                obj_song.hideui=true
	                obj_song.wavey=true
	                obj_song.event="scary"
	                instance_create(0,0,obj_fadein)
	                obj_fadein.time=0.0026
	            break;
	            case 24: //scary end
	                obj_song.event=3
	            break;
	        }
	    break;
	    case mus_w4s2: //starfire
	        switch(event) {
	            case 0:
	                obj_song.event++
	                instance_create(0,0,obj_fadein)
	                obj_fadein.color=c_white
	                obj_fadein.time=0.055
	            break;
	            case 1: //BOOM!
	                //with(obj_song) {
	                    obj_song.mmmm=0.01
	                    //wave
	                    obj_song.wavey=true
	                    obj_song.wavedude=true
	                    obj_song.waveint=1
	                //}
	                var cool=audio_play_sound(snd_firework,9999,false)
	                audio_sound_pitch(cool,0.85)
	                //flash
	                instance_create(0,0,obj_fadein)
	                with(obj_fadein) {
	                    color=c_white
	                    alpha=0.4
	                    time=0.01
	                }
	            break;
	            case 2: //flashback1
	                //with(obj_song) {
	                    obj_song.mm=0
	                    obj_song.mmm++
	                    obj_song.mmmmmm++
	                    //reset waveyness
	                    obj_song.wavey=false
	                    obj_song.waveint=0
	                //}
	                instance_create(0,0,obj_fadein)
	                with(obj_fadein) {
	                    color=c_white
	                    alpha=0.3
	                    time=0.02
	                }
	            break;
	            case 3: //flashback2
	                obj_song.event=0
	                obj_song.ntsc=true
	            break;
	            case 4: //bohdoh
	                //with(obj_song) {
	                    obj_song.mm=0
	                    obj_song.mmm++
	                    obj_song.mmmmmm++
	                    obj_song.event=2
	                //}
	                instance_create(0,0,obj_fadein)
	                obj_fadein.color=c_white
	            break;
	            case 5: //flashback 3
	                //with(obj_song) {
	                    obj_song.mm=0
	                    obj_song.mmm++
	                    obj_song.mmmmmm++
	                //}
	            break;
	            case 6: //flashback 4
	                obj_song.mm=0
	                obj_song.mmm++
	            break;
	            case 7: //flashback 5 (bodo)
	                //with(obj_song) {
	                    obj_song.event=0
	                    obj_song.mmm++
	                    obj_song.mmmm=0
	                    obj_song.mmmmm=0
	                //}
	            break;
	            case 8: //flashback 6
	                //with(obj_song) {
	                    obj_song.event=2
	                    obj_song.mm=0
	                    obj_song.mmmmmm++
	                //}
	                instance_create(0,0,obj_fadein)
	                obj_fadein.color=c_white
	            break;
	            case 9: //flashback 7
	                obj_song.mm=0
	                obj_song.mmm++
	                instance_create(0,0,obj_fadein)
	                with(obj_fadein) {
	                    color=c_white
	                    alpha=0.3
	                    time=0.02
	                }
	            break;
	            case 10: //flashback 8
	                //with(obj_song) {
	                    obj_song.event++
	                    obj_song.mm=0
	                    obj_song.mmm++
	                //}
	                instance_create(0,0,obj_fadein)
	                with(obj_fadein) {
	                    color=c_white
	                    alpha=0.3
	                    time=0.02
	                }
	            break;
	            case 11: //fade to flashback colors
	                obj_song.mmmm=0.01
	                instance_create(0,0,obj_fadeout)
	                with(obj_fadeout) {
	                    color=c_white
	                    time=0.015
	                    roomable=false
	                }
	            break;
	            case 12: //fade to flashback colors
	                //nothing lol!
	            break;
	            case 13: //song start
	                instance_create(0,0,obj_fadein)
	                instance_destroy(obj_fadeout)
	                obj_fadein.color=c_white
	                obj_fadein.time=0.05
	                //with(obj_song) {
	                    obj_song.hideui=false
	                    obj_song.event++
	                    obj_song.mm=0
	                    obj_song.mmm=0
	                    obj_song.mmmm=0
	                    obj_song.mmmmm=0
	                    obj_song.mmmmmm=0
	                    obj_song.ntsc=false
	                //}
	                scr_cbounce(5,5,5,5,1);
	            break;
	            case 14:
	                obj_camera.image_xscale-=10
	                scr_cbounce(8,8,8,8,1);
	            break;
	            case 15:
	                scr_cbounce(0,0,0,0,1);
	                instance_create(0,0,obj_fadeout)
	                with(obj_fadeout) {
	                    color=c_white
	                    time=0.015
	                    roomable=false
	                }
	                with(obj_camera) {
	                    ease=80
	                    big[badguyc]-=200
	                }
	            break;
	            case 16:
	                scr_cbounce(10,10,10,10,2);
	                instance_create(0,0,obj_fadein)
	                instance_destroy(obj_fadeout)
	                obj_fadein.color=c_white
	                with(obj_camera) {
	                    ease=40
	                    image_xscale=big[badguyc]
	                }
	            break;
	            case 17:
	                obj_camera.big[badguyc]+=200
	                scr_cbounce(7,4,7,4,1);
	                //camera flash
	                instance_create(0,0,obj_fadein)
	                with(obj_fadein) {
	                    color=c_white
	                    alpha=0.5
	                    time=0.04
	                }
	            break;
	            case 18:
	                scr_cbounce(5,5,5,5,2);
	            break;
	            case 19:
	                scr_cbounce(8,5,8,5,1);
	            break;
	            case 20:
	                //camera flash
	                instance_create(0,0,obj_fadein)
	                with(obj_fadein) {
	                    color=c_white
	                    alpha=0.5
	                    time=0.04
	                }
	            break;
	            case 21: //slow part start
                
	                obj_song.event=event+1
	                //with(obj_song) {
	                    obj_song.wavey=true
	                    obj_song.wavedude=false
	                    obj_song.mm=1
	                    obj_song.mmmmm=0
	                //}
	                scr_cbounce(0,0,0,0,2);
	            break;
	            case 22: //slow part extra note 1
	                obj_song.mm=2
	                with(obj_camera) {
	                    place=playerc
	                    ease=90
	                    xgo[playerc]=obj_player.x-31
	                    ygo[playerc]=obj_player.y-51
	                }
	            break;
	            case 23: //slow down
	                obj_song.mmmm=1
	                with(obj_song) {
	                    //audio_sound_pitch(songplaying,0)
	                }
	            break;
	            case 24: //scary fade
	                with(obj_song) {
	                    //audio_sound_pitch(songplaying,1.2)
	                    mmm=0.001
	                }
	            break;
	            case 25: //BIG FLASH! SHES PISSED
	                instance_create(0,0,obj_fadein)
	                obj_fadein.color=c_white
	                obj_song.event="boobies"
	                obj_song.wavey=false
	                obj_song.mm=0
	                obj_song.mmm=270
	                obj_song.mmmm=270
	                obj_song.mmmmm=270
	                obj_song.mmmmmm=270
	                with(obj_song) {
	                    //surfaces
	                    gunkscreen=-1
	                    dudescreen=-1
	                    gunkfreeze=-1
	                    dudefreeze=-1
	                }
	                with(obj_camera) {
	                    x=xgo[mainc]
	                    y=ygo[mainc]
	                    place=mainc
	                    ease=40
	                }
	            break;
	            case 26:
	                with(obj_song) {
	                    gunkfreeze=sprite_create_from_surface(gunkscreen,0,0,400,400,false,false,0,0)
	                }
	            break;
	            case 27:
	                with(obj_song) {
	                    dudefreeze=sprite_create_from_surface(dudescreen,0,0,400,400,false,false,0,0)
	                    mmmm=-10
	                }
	            break;
	            case 28:
	                with(obj_song) {
	                    mmmmmm=10
	                }
	            break;
	            case 29: //fade away
	                instance_create(0,0,obj_fadeout)
	                obj_fadeout.color=c_white
	                obj_fadeout.time=0.025
	                obj_fadeout.roomable=false
	            break;
	            case 30: //back
	                obj_song.event=4
	                obj_song.mm=0
	                obj_song.mmm=0
	                obj_song.mmmm=0
	                obj_song.mmmmm=0
	                obj_song.mmmmmm=0
	                //cyan crowdsurf
	                obj_song.mmmmmmm=0
	                with(obj_song) {
	                    surface_free(gunkscreen)
	                    surface_free(dudescreen)
	                    sprite_delete(gunkfreeze)
	                    sprite_delete(dudefreeze)
	                    //wavey stuff
	                    wavey=true
	                    wavedude=true
	                    waveint=1
	                }
	                instance_destroy(obj_fadeout);
	                instance_create(0,0,obj_fadein);
	                obj_fadein.color=c_white
	                //reset camera
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
	                scr_cbounce(10,10,10,10,2);
	            break;
	            case 34:
	                instance_create(0,0,obj_fadeout)
	                with(obj_fadeout) {
	                    roomable=false
	                    color=c_white
	                    time=0.02
	                }
	                scr_cbounce(0,0,0,0,2);
	            break;
	            case 35:
	                instance_destroy(obj_fadeout)
	                instance_create(0,0,obj_fadein)
	                obj_fadein.color=c_white
	                obj_fadein.time=0.02
	                with(obj_song) {
	                    wavey=true
	                    wavedude=true
	                    waveint=3
	                }
	                obj_player.x-=30
	                obj_badguy.x+=30
	                with(obj_camera) {
	                    xgo[playerc]=obj_player.x-30
	                    xgo[badguyc]=obj_badguy.x
	                    place=mainc
	                    x=xgo[mainc]
	                }
	                scr_cbounce(20,10,20,10,1);
	            break;
	            case 37:
	                obj_song.hideui=true
	                obj_song.event=0
	                obj_song.wavey=false
	                scr_cbounce(0,0,0,0,1);
	            break;
	            case 38:
	                obj_song.event="gunkend"
	                with(obj_camera) {
	                    big[place]=800
	                    image_xscale=big[place]
	                    xgo[place]=800
	                    ygo[place]=500
	                    x=xgo[place]
	                    y=ygo[place]
	                }
	            break;
	            default:
	            break;
	        }
	    break;
	    default:
	        obj_song.event=event+1
	    break;
	}



}
