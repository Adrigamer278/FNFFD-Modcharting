/// @description background
h+=0.01
if h=1 {
    h=0
}
var hh;
var hhh;
for(hh=-4;hh<10;hh++) {
    for(hhh=-4;hhh<10;hhh++) {
        draw_sprite_ext(spr_bintrohead,3,h*80+(hh*80),h*80+(hhh*80),1,1,0,c_white,0.25)
    }
}

draw_set_font(fnt_comic1b)
draw_set_halign(fa_center)
draw_set_color(c_white)
draw_text(room_width/2,25,string_hash_to_newline("S0UND T3ST"))
draw_set_font(fnt_comic1)
//playing song
if audio_is_playing(sound) {
    draw_text(room_width/2,50,string_hash_to_newline(string("NOW PLAYING: ")+string(audio_get_name(sound))))
} else {
    draw_text(room_width/2,50,string_hash_to_newline("NOW PLAYING: NOTHING"))
}
//select
draw_text(room_width*(1/4),room_height-80,string_hash_to_newline("previous"))
draw_text(room_width*(2/4),room_height-80,string_hash_to_newline("play"))
draw_text(room_width*(3/4),room_height-80,string_hash_to_newline("next"))
draw_set_color(c_yellow)
draw_text(room_width*((1+selected)/4),room_height-80,string_hash_to_newline(words[selected]))
draw_set_halign(fa_left)
//queue
var q
for(q=0;q<11;q++) {
    if q=5 {
        draw_set_color(c_white)
    } else {
        draw_set_color(c_gray)
    }
    draw_text(5,5+(q*11),string_hash_to_newline(audio_get_name(sound+(q-5))))
}

