action_inherited();
///set cutscene sprites
if scr_textcheck() {
    switch(text) {
        case 1: 
            scr_nextframe(0) 
            scr_playsong(mus_crazyjohnny,0.125)
        break;
        case 2: scr_nextframe(1) break;
        case 3: scr_nextframe(2) break;
        case 8: scr_nextframe(3) break;
        case 10: scr_nextframe(4) break;
    }
}

