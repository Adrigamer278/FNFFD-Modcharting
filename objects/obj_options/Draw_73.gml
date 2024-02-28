//updating keys
if mappingkeys = true {
    draw_sprite_ext(spr_whitepixel,0,0,0,room_width,room_height,0,c_black,0.64)
    draw_set_halign(fa_center);
    draw_set_font(fnt_comic2)
    draw_text(room_width/2,40,string_hash_to_newline("KEY MAPPING"))
    draw_set_color(c_white)
    draw_set_font(fnt_comic1)
    draw_text(room_width/2,90,string_hash_to_newline("LEFT: "+string(scr_keytoname(obj_stats.bind[0]))+string("#DOWN: ")+string(scr_keytoname(obj_stats.bind[1]))+string("#UP: ")+string(scr_keytoname(obj_stats.bind[2]))+string("#RIGHT: ")+string(scr_keytoname(obj_stats.bind[3]))))
    //you know I was going to do some fancy stuff with for loops and cool stuff 
    //but that was too much work, think smarter not harder right?
    draw_set_color(c_yellow)
    switch(keyd) {
        case 0:
            draw_text(room_width/2,90,string_hash_to_newline("LEFT: "+string(scr_keytoname(obj_stats.bind[0]))))
        break;
        case 1:
            draw_text(room_width/2,90,string_hash_to_newline("#DOWN: "+string(scr_keytoname(obj_stats.bind[1]))))
        break;
        case 2:
            draw_text(room_width/2,90,string_hash_to_newline("##UP: "+string(scr_keytoname(obj_stats.bind[2]))))
        break;
        case 3:
            draw_text(room_width/2,90,string_hash_to_newline("###RIGHT: "+string(scr_keytoname(obj_stats.bind[3]))))
        break;
    }
    draw_set_halign(fa_left);
    draw_set_color(c_white)
    draw_set_font(fnt_comic1)
}
//changing skins
if changingskin = true {
    //actually changing
    obj_stats.skin=clamp(obj_stats.skin,0,19)
    if keyboard_check_pressed(vk_left) {
        obj_stats.skin--
    }
    if keyboard_check_pressed(vk_right) {
        obj_stats.skin++
    }
    scr_skinint(obj_stats.skin);
    if ((keyboard_check_pressed(vk_enter) or keyboard_check_pressed(ord("Z"))) && wait=0) {
        changingskin=false
        audio_play_sound(snd_josh,9999,false)
    }
    //text
    draw_sprite_ext(spr_whitepixel,0,0,0,room_width,room_height,0,c_black,0.64)
    draw_set_halign(fa_center);
    draw_set_font(fnt_comic2)
    draw_text(room_width/2,40,string_hash_to_newline("SELECT SKIN"))
    draw_set_font(fnt_comic1)
    var skinname;
    switch(obj_stats.skin) {
        case 0: skinname = "classic" break;
        case 1: skinname = "lemon-lime" break;
        case 2: skinname = "edud" break;
        case 3: skinname = "nightmode" break;
        case 4: skinname = "free dude" break;
        case 5: skinname = "childish prankster" break;
        case 6: skinname = "boing" break;
        case 7: skinname = "weirdo dude" break;
        case 8: skinname = "week-old bubble gum" break;
        case 9: skinname = "sour patch watermelon" break;
        case 10: skinname = "'POOP DUDE'#-funne" break;
        case 11: skinname = "kevin" break;
        case 12: skinname = "eye strain" break;
        case 13: skinname = "pastel" break
        case 14: skinname = "turquoise" break;
        case 15: skinname = "smart guy" break;
        case 16: skinname = "epic alien" break;
        case 17: skinname = "moon" break;
		case 19: skinname = "rainbow dude" break;
        default: skinname = "? ? ?" break;
    }
    draw_text_color((room_width/2)+1,91,string_hash_to_newline(string("< ")+string(skinname)+string(" >")),c_black,c_black,c_black,c_black,1)
    draw_text_color(room_width/2,90,string_hash_to_newline(string("< ")+string(skinname)+string(" >")),c_white,c_white,c_white,c_white,1)
    draw_set_halign(fa_left);
    draw_text_color(6,room_height-19,string_hash_to_newline("Press [Z] or [ENTER] to confirm."),c_black,c_black,c_black,c_black,1)
    draw_text_color(5,room_height-20,string_hash_to_newline("Press [Z] or [ENTER] to confirm."),c_white,c_white,c_white,c_white,1)
    scr_skinswapdude(c_white);
        if obj_stats.skin!= -1 {
            draw_sprite(spr_dudeidle,9,222,(room_height/1.5))
        } else {
            draw_sprite(spr_dudelost,0,222,(room_height/1.5))
        }
    shader_reset();
}

