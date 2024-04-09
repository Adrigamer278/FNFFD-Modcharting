/// @description scr_charset(player,baddie)
/// @param player
/// @param baddie
function scr_charset(argument0, argument1) {
	var player=argument0
	var baddie=argument1
	//seting character
	with(obj_player) {
	    if obj_stats.joshmode=false {
	        switch(player){
	        case "earth":
	            idle[0]=spr_earth
	            ayy=spr_earth
	            anim[0]=spr_earth
	            anim[1]=spr_earth
	            anim[2]=spr_earth
	            anim[3]=spr_earth
	            anim[8]=spr_earth
	            anim[9]=spr_earth
	            anim[10]=spr_earth
	            anim[11]=spr_earth
	            pause=spr_earth
	        break;
	        case "lady":
	            idle[0]=spr_ladymidle
	            ayy=spr_ladymayy
	            anim[0]=spr_ladymleft
	            anim[1]=spr_ladymdown
	            anim[2]=spr_ladymup
	            anim[3]=spr_ladymright
	            anim[4]=spr_ladymleft
	            anim[5]=spr_ladymdown
	            anim[6]=spr_ladymup
	            anim[7]=spr_ladymrightmiss
	            anim[8]=spr_ladymupmiss
	            anim[9]=spr_ladymdownmiss
	            anim[10]=spr_ladymleftmiss
	            anim[11]=spr_ladymrightmiss
	            pause=spr_ladympause
	        break;
	        case 0: //normal
	            idle[0]=spr_dudeidle
	            numidle=0
	            ayy=spr_dudeayy
	            yousuck=spr_dudeayysuck
	            anim[0]=spr_dudeleft
	            anim[1]=spr_dudedown
	            anim[2]=spr_dudeup
	            anim[3]=spr_duderight
	            anim[4]=spr_dudeleftalt
	            anim[5]=spr_dudedownalt
	            anim[6]=spr_dudeupalt
	            anim[7]=spr_duderightalt
	            anim[8]=spr_dudeleftmiss
	            anim[9]=spr_dudedownmiss
	            anim[10]=spr_dudeupmiss
	            anim[11]=spr_duderightmiss
	            pause=spr_dudeloss
	        break;
	        case 1: //mr dude and watch
	            idle[0]=spr_dwidle
	            ayy=spr_dudeayy
	            anim[0]=spr_dwleft
	            anim[1]=spr_dwdown
	            anim[2]=spr_dwup
	            anim[3]=spr_dwright
	            anim[8]=spr_dwmissleft
	            anim[9]=spr_dwmissdown
	            anim[10]=spr_dwmissup
	            anim[11]=spr_dwmissright
	            pause=spr_dwpause
	            framerate=0.2
	        break;
	        case 2: // dude n' lady weeknd 2
	            idle[0]=spr_dudenladyw2idle
	            ayy=spr_dudenladyw2ayy
	            yousuck=spr_dudenladyw2ayysuck
	            anim[0]=spr_dudenladyw2left
	            anim[1]=spr_dudenladyw2down
	            anim[2]=spr_dudenladyw2up
	            anim[3]=spr_dudenladyw2right
	            anim[8]=spr_dudenladyw2leftmiss
	            anim[9]=spr_dudenladyw2downmiss
	            anim[10]=spr_dudenladyw2upmiss
	            anim[11]=spr_dudenladyw2rightmiss
	            pause=spr_dudenladyw2pause
	        break;
	        case 3: //dude channelsurf
	            idle[0]=spr_dudecidle
	            anim[0]=spr_dudecleft
	            anim[1]=spr_dudecdown
	            anim[2]=spr_dudecup
	            anim[3]=spr_dudecright
	            anim[8]=spr_dudecleftmiss
	            anim[9]=spr_dudecdownmiss
	            anim[10]=spr_dudecupmiss
	            anim[11]=spr_dudecrightmiss
	            pause=spr_dudecpause
	        break;
	        case 4: //dude anime
	            idle[0]=spr_dude3idle
	            anim[4]=spr_dude3left
	            anim[5]=spr_dude3down
	            anim[6]=spr_dude3up
	            anim[7]=spr_dude3right
	            anim[8]=spr_dude3leftmiss
	            anim[9]=spr_dude3downmiss
	            anim[10]=spr_dude3upmiss
	            anim[11]=spr_dude3rightmiss
	            pause=spr_dude3pause
	        break;
	        case 5: //dude triangle dance
	            idle[0]=spr_dudetidle1
	            idle[1]=spr_dudetidle2
	            numidle=1
	            ayy=spr_dudeayy
	            yousuck=spr_dudeayysuck
	            anim[0]=spr_dudetleft
	            anim[1]=spr_dudetdown
	            anim[2]=spr_dudetup
	            anim[3]=spr_dudetright
	            anim[4]=spr_dudeleftalt
	            anim[5]=spr_dudedownalt
	            anim[6]=spr_dudeupalt
	            anim[7]=spr_duderightalt
	            anim[8]=spr_dudeleftmiss
	            anim[9]=spr_dudedownmiss
	            anim[10]=spr_dudeupmiss
	            anim[11]=spr_duderightmiss
	            pause=spr_dudeloss
	        break;
	        }
	    } else {
	        switch(player){
	        case 0 or 1:
	            idle[0]=spr_dudeidlejm
	            ayy=spr_dudeayy
	            anim[0]=spr_dudeleftjm
	            anim[1]=spr_dudedownjm
	            anim[2]=spr_dudeupjm
	            anim[3]=spr_duderightjm
	            anim[8]=spr_dudeupmiss
	            anim[9]=spr_dudedownmiss
	            anim[10]=spr_dudeleftmiss
	            anim[11]=spr_duderightmiss
	        break;
	        }
	    }
	    sprite_index=idle[0]
		frame=0
	}
	with(obj_badguy) {
		if obj_stats.joshmode=false {
			switch(baddie){
			    case -7: //dan
			        idle[0]=spr_danidle
			        ayy=spr_danayy
			        anim[0]=spr_danleft
			        anim[1]=spr_dandown
			        anim[2]=spr_danup
			        anim[3]=spr_danright
			        pause=spr_danpause
			    break;
			    case -6: //cromp
			        idle[0]=spr_crompidle1
			        idle[1]=spr_crompidle2
			        numidle=1
			        ayy=spr_crompayy
			        anim[0]=spr_crompleft
			        anim[1]=spr_crompdown
			        anim[2]=spr_crompup
			        anim[3]=spr_crompright
			        anim[4]=spr_crompleft
			        anim[5]=spr_crompdown
			        anim[6]=spr_crompup
			        anim[7]=spr_crompright
			        pause=spr_cromppause
			        image_xscale=4
			        image_yscale=4
			        framerate=0.2
			    break;
			    case -5: //nermal
			        idle[0]=spr_nermalidle
			        ayy=spr_nermalfloat
			        anim[0]=spr_nermalleft
			        anim[1]=spr_nermaldown
			        anim[2]=spr_nermalup
			        anim[3]=spr_nermalright
			        pause=spr_nermalpause
			    break;
			    case -4: //slick
			        idle[0]=spr_slickidle
			        ayy=spr_slickayy
			        anim[0]=spr_slickleft
			        anim[1]=spr_slickdown
			        anim[2]=spr_slickup
			        anim[3]=spr_slickright
			        pause=spr_slickpause
			    break;
			    case -4.1: //slick anime
			        idle[0]=spr_slickidle2
			        ayy=spr_slickayy2
			        anim[0]=spr_slickleft2
			        anim[1]=spr_slickdown2
			        anim[2]=spr_slickup2
			        anim[3]=spr_slickright2
			        pause=spr_harrispause
			    break;
			    case -2: //george
			        idle[0]=spr_georgeidle
			        everybeat=2
			        ayy=spr_georgeidle
			        anim[0]=spr_georgeleft
			        anim[1]=spr_georgedown
			        anim[2]=spr_georgeup
			        anim[3]=spr_georgeright
			        anim[4]=spr_georgeleftalt
			        anim[5]=spr_georgedownalt
			        anim[6]=spr_georgeupalt
			        anim[7]=spr_georgerightalt
			        pause=spr_georgepause
			    break;
			    case -1:
			        //the eyes. what was wrong
			        //with his eyes?
			        scr_default();
			    break;
			    case 0: //teachvee
			        idle[0]=spr_TVidle
			        ayy=spr_TVayy
			        anim[0]=spr_TVleft
			        anim[1]=spr_TVdown
			        anim[2]=spr_TVup
			        anim[3]=spr_TVright
			        anim[4]=spr_TVleftalt
			        anim[5]=spr_TVdownalt
			        anim[6]=spr_TVupalt
			        anim[7]=spr_TVrightalt
			        pause=spr_TVpause
			        framerate=0.2
			    break;
			    case 1: //strad
			        idle[0]=spr_stradidle
			        ayy=spr_stradayy
			        anim[0]=spr_stradleft
			        anim[1]=spr_straddown
			        anim[2]=spr_stradup
			        anim[3]=spr_stradright
			        anim[4]=spr_stradleftalt
			        anim[5]=spr_straddownalt
			        anim[6]=spr_stradupalt
			        anim[7]=spr_stradrightalt
			        pause=spr_stradpause
			    break;
			    case 2: //cyan
			        idle[0]=spr_cyanidle
			        ayy=spr_cyanayy
			        anim[0]=spr_cyanleft
			        anim[1]=spr_cyandown
			        anim[2]=spr_cyanup
			        anim[3]=spr_cyanright
			        anim[4]=spr_cyanleftalt
			        anim[5]=spr_cyandownalt
			        anim[6]=spr_cyanupalt
			        anim[7]=spr_cyanrightalt
			        pause=spr_cyanpause
			    break;
			    case 3: //cd-boy
			        idle[0]=spr_cdboyidle
			        //idle[1]=spr_boubeeidle
			        //numidle=1
			        ayy=spr_cdboyhack
			        anim[0]=spr_cdboyleft
			        anim[1]=spr_cdboydown
			        anim[2]=spr_cdboyup
			        anim[3]=spr_cdboyright
			        anim[8]=spr_cdboyleftb
			        anim[9]=spr_cdboydownb
			        anim[10]=spr_cdboyupb
			        anim[11]=spr_cdboyrightb
			        pause=spr_cdboypause
			    break;
			    case 4: //buddy
			        idle[0]=spr_buddyidle
			        ayy=spr_buddyayy
			        anim[0]=spr_buddyleft
			        anim[1]=spr_buddydown
			        anim[2]=spr_buddyup
			        anim[3]=spr_buddyright
			        anim[4]=spr_buddyleftanime
			        anim[5]=spr_buddydownanime
			        anim[6]=spr_buddyupanime
			        anim[7]=spr_buddyrightanime
			        pause=spr_buddypause
			    break;
			    case 5: //scary cd-boy
			        idle[0]=spr_cdboyidle3
			        ayy=spr_cdboyultracrash
			        anim[0]=spr_cdboyleft3
			        anim[1]=spr_cdboydown3
			        anim[2]=spr_cdboyup3
			        anim[3]=spr_cdboyright3
			        anim[8]=spr_cdboyleft3
			        anim[9]=spr_cdboydown3
			        anim[10]=spr_cdboyup3
			        anim[11]=spr_cdboyright3
			        pause=spr_cdboypause3
			        framerate=0.2
			    break;
			    case 5.1: //scary cd-boy
			        idle[0]=spr_cdboyidle3s
			        anim[8]=spr_cdboyleft3s
			        anim[9]=spr_cdboydown3s
			        anim[10]=spr_cdboyup3s
			        anim[11]=spr_cdboyright3s
			        pause=spr_cdboypause3s
			    break;
			    case 6: //gunk
			        idle[0]=spr_gunkidle1
			        idle[1]=spr_gunkidle2
			        idle[2]=spr_gunkidle1
			        idle[3]=spr_gunkidle2
			        numidle=3
			        ayy=spr_gunkayy
			        anim[0]=spr_gunkleft
			        anim[1]=spr_gunkdown
			        anim[2]=spr_gunkup
			        anim[3]=spr_gunkright
			        anim[8]=spr_gunkleft
			        anim[9]=spr_gunkdown
			        anim[10]=spr_gunkup
			        anim[11]=spr_gunkright
			        pause=spr_gunkpause
			    break;
			    case 7: //gunk PISSED OFF
			        idle[0]=spr_gunkidlepiss
			        ayy=spr_gunkayy
			        anim[0]=spr_gunkleftpiss
			        anim[1]=spr_gunkdownpiss
			        anim[2]=spr_gunkuppiss
			        anim[3]=spr_gunkrightpiss
			        anim[4]=spr_gunkleftpissalt
			        anim[5]=spr_gunkdownpissalt
			        anim[6]=spr_gunkuppissalt
			        anim[7]=spr_gunkrightpissalt
			        anim[8]=spr_gunkleftpiss
			        anim[9]=spr_gunkdownpiss
			        anim[10]=spr_gunkuppiss
			        anim[11]=spr_gunkrightpiss
        
			        pause=spr_gunkpause
			    break;
			    }
		} else {
			switch(baddie){
				case 0:
				    idle=spr_TVidlejm
				    ayy=spr_TVupjm
				    up=spr_TVupjm
				    down=spr_TVdownjm
				    left=spr_TVleftjm
				    right=spr_TVrightjm
				    upalt=spr_TVupjm
				    downalt=spr_TVdownjm
				    leftalt=spr_TVleftjm
				    rightalt=spr_TVrightjm
				    framenumbs=4
				    framenumbs2=24
				break;
			}
		}
		sprite_index=idle[0]
		frame=0
	}
}
