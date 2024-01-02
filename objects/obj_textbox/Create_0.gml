/// @description text vars
txt[1]="^RTEST ^WTEST ^RTEST#^WTEST ^RTEST ^WTEST^W"
txt[2]="Oh boy ^Rsleep!#^WThats where I'm a ^Rviking!"
txt[3]="I can sing with vibrato!#watch this!        #✓㋡aaaaaaaaaaaaaaaaaaaaaah!✓W"
voice[1]="tv"
voice[2]="dude"
voice[3]="dude"
textmax=0
//voices
vsound=snd_dudetalk
//vars beside text
text=1
i=0
ii=0
textx=12
talkdude=0
pause=false
stayvisable=false //stay visable when paused
update=true
pu=true //if unpause updates stuff
//actions
aindex=0
//song vars
var m;
for(m=mus_birthdayboy;m<snd_3;m++) {
    song[m]=0
}
scr_textboxcoloring();

