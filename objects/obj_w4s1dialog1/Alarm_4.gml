/// @description roomba (BEST JOKE IN THE UPDATE)
/// @param BEST JOKE IN THE UPDATE
if roombadone=true {
    scr_nextbox()
    pause=false
    audio_stop_sound(snd_crowd)
} else {
    switch(roombaframe) {
        case 1: 
            var ow=audio_play_sound(snd_cdowch,9999,false)
            audio_sound_pitch(ow,1.5)
            audio_play_sound(snd_doorslam2,9999,false)
            roombaframe++
            alarm[4]=2.75
        break;
        case 6:
            roombadone=true
            alarm[4]=50
        break;
        default:
            roombaframe++
            alarm[4]=2.75
        break;
    }
}

