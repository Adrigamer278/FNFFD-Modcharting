switch(action) {
    case "nothing":
        if keyboard_check_pressed(ord("R")) {
            action="recording"
            c=0
        }
        if keyboard_check_pressed(ord("P")) {
            action="playing"
            c=0
        }
        if keyboard_check_pressed(ord("S")) {
            action="saving"
        }
        if keyboard_check_pressed(ord("L")) {
            action="loading"
        }
    break;
    case "recording":
        mouse[0,c]=mouse_x
        mouse[1,c]=mouse_y
        c++
        if c=room_speed*10 {
            action="nothing"
            audio_play_sound(snd_josh,9999,false)
        }
    break;
    case "playing":
        c++
        if c=room_speed*10 {
            action="nothing"
            audio_play_sound(snd_josh,9999,false)
        }
    break;
    case "saving":
        var filename=string(name)+string(".sqeak")
        var file=file_text_open_write(filename)
        var s;
        for(s=0;s<room_speed*10;s++) {
            file_text_write_real(file,mouse[0,s])
            file_text_writeln(file);
            file_text_write_real(file,mouse[1,s])
            file_text_writeln(file);
        }
        file_text_close(file);
        action="nothing"
    break;
    case "loading":
        var filename=string(name)+string(".sqeak")
        if file_exists(filename) {
            var file=file_text_open_read(filename)
            var s;
            for(s=0;s<room_speed*10;s++) {
                mouse[0,s]=file_text_read_real(file)
                file_text_readln(file);
                mouse[1,s]=file_text_read_real(file)
                file_text_readln(file);
            }
            file_text_close(file);
        } else {
            audio_play_sound(snd_crap,9999,false)
        }
        action="nothing"
    break;
    default:
    break;
}

