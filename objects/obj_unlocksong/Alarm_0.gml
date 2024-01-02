//start jingle
switch(obj_stats.weekndgoing) {
    case 1:
        songplaying=audio_play_sound(snd_unlockinfo,9999,false)
    break;
    case 2:
        songplaying=audio_play_sound(snd_unlockchannel,9999,false)
    break
    case 3:
        songplaying=audio_play_sound(snd_unlocktriangle,9999,false)
    break;
    case 4:
        songplaying=audio_play_sound(snd_unlockdan,9999,false)
    break;
    default:
        songplaying=audio_play_sound(snd_default,9999,false)
    break;
}
alarm[1]=audio_sound_length(songplaying)*30
started=true

