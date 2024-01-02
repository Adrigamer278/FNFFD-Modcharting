//music
if muted=false {
    if !audio_is_playing(song) {
        audio_play_sound(song,9999,true)
    }
    if keyboard_check_pressed(vk_left) {
        audio_stop_sound(song)
        song--
    }
    if keyboard_check_pressed(vk_right) {
        audio_stop_sound(song)
        song++
    }
} else {
    audio_stop_all();
}
if keyboard_check_pressed(ord("M")) {
    muted=!muted
}
//drawing
if mouse_check_button(mb_left) && mouse_x>=x && mouse_y>=y && mouse_x<=x+200 && mouse_y<=y+200 {
    var xx=(mouse_x-x) div 4;
    var yy=(mouse_y-y) div 4;
    pixel[xx,yy]=color
}
if mouse_check_button(mb_right) && mouse_x>=x && mouse_y>=y && mouse_x<=x+200 && mouse_y<=y+200 {
    var xx=(mouse_x-x) div 4;
    var yy=(mouse_y-y) div 4;
    pixel[xx,yy]=-1
}
//selecting new color
if mouse_check_button(mb_left) && mouse_y>=200 && mouse_x>=20 && mouse_x<=70 {
    color=(mouse_y-200) div 20
}
//saving & loading
if keyboard_check_pressed(ord("S")) { //saving
    var thename=(string(name)+string(".boompow"))
    if file_exists(thename) {
        file_delete(thename)
    }
    ini_open(thename)
        var xx
        var yy
        for (xx=0;xx<50;xx++) {
            for (yy=0;yy<50;yy++) {
                ini_write_real("not-a-json",string(xx)+string(",")+string(yy),pixel[xx,yy])
            }
        }
    ini_close();
}
if keyboard_check_pressed(ord("L")) { //loading
    var thename=(string(name)+string(".boompow"))
    if file_exists(thename) {
        ini_open(thename)
            var xx
            var yy
            for (xx=0;xx<50;xx++) {
                for (yy=0;yy<50;yy++) { 
                    pixel[xx,yy]=ini_read_real("not-a-json",string(xx)+string(",")+string(yy),-1)
                }
            }
        ini_close();
    }
}

