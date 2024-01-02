action_inherited();
///set cutscene sprites
if instance_exists(obj_cutscene) {
    //general updating
    switch(text) {
        case 1: 
            scr_nextframe(0) 
            scr_playsong(mus_crazyjohnny,0.125)
        break;
        case 4: scr_nextframe(1) break;
        case 5: scr_nextframe(2) break;
        case 9: scr_nextframe(3) break;
        case 10: scr_nextframe(4) break;
        case 12: scr_nextframe(5) break;
        case 20: 
            scr_stopsong(mus_crazyjohnny,0.125)
            obj_cutscene.image_alpha=0
        break;
        case 21:
            scr_nextframe(6)
            obj_cutscene.image_alpha=1
        break;
    }
}

