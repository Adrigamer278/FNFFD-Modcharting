action_inherited();
///set cutscene sprites
if scr_textcheck() {
    switch(text) {
        case 1:
            scr_nextframe(0)
            scr_playsong(mus_unknownvariable,0)
            i=ii
        break;
        case 4: scr_nextframe(1) break;
        case 11: scr_nextframe(2) break;
        case 12: scr_nextframe(3) break;
        case 15: scr_nextframe(6) break;
        case 16: scr_nextframe(5) break;
        case 17: scr_nextframe(7) break;
        case 18: scr_nextframe(8) break;
    }
}
switch(text) {
    case 14:
        if i<33 { scr_nextframe(4) } else { scr_nextframe(5) }
    break;
}

