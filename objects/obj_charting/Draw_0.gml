/// @description text
draw_set_font(fnt_comic1)
draw_set_halign(fa_center)
draw_set_color(c_black)
draw_text_ext_transformed(132,22,string_hash_to_newline("WELCOME TO THE"),10,900,2,2,0)
draw_set_color(c_white)
draw_text_ext_transformed(130,20,string_hash_to_newline("WELCOME TO THE"),10,900,2,2,0)
draw_set_color(c_black)
draw_text_ext_transformed(132,47,string_hash_to_newline("CHARTER 900"),10,900,2,2,sin(current_time/200))
draw_set_color(make_color_hsv(sin(current_time/-9000)*256,50,213))
draw_text_ext_transformed(130,45,string_hash_to_newline("CHARTER 900"),10,900,2,2,sin(current_time/200))
//controls
draw_set_halign(fa_left)
var controls = @"CONTROLS:
left click to place a note
right click to remove a note
middle click for a hold note
press 1 to do normal notes
press 2 to do alt animation notes
press 3 to do bombs (scary) dont use these in w1 btw
camera stuff (4 you, 5 meany, 6 full)
press 7 for taunt
enter to pause and play
left to jump back
right to jump foward
"
draw_set_colour(c_black)
draw_text(15,99,string_hash_to_newline(controls))
draw_text(16,99,string_hash_to_newline(controls))
draw_text(17,99,string_hash_to_newline(controls))
draw_text(15,100,string_hash_to_newline(controls))
draw_text(17,100,string_hash_to_newline(controls))
draw_text(15,101,string_hash_to_newline(controls))
draw_text(16,101,string_hash_to_newline(controls))
draw_text(17,101,string_hash_to_newline(controls))

draw_text(18,100,string_hash_to_newline(controls))
draw_text(18,101,string_hash_to_newline(controls))
draw_text(15,102,string_hash_to_newline(controls))
draw_text(16,102,string_hash_to_newline(controls))
draw_text(17,102,string_hash_to_newline(controls))
draw_text(18,102,string_hash_to_newline(controls))
draw_set_colour(c_white)
draw_text(16,100,string_hash_to_newline(controls))

